/**
 * 
 */
package main;

import java.util.Hashtable;
import java.util.Set;
import java.util.TreeSet;

import jpl.Atom;
import jpl.Query;
import jpl.Term;

/**
 * @author Robert
 */
public class Main {

    /**
     * @param args
     */
    public static void main(String[] args) {

	String name1 = "robert";
	String name2 = "sabina";

	Set relations = new TreeSet<>();

	Query q = new Query("consult", new Term[] { new Atom("lab3arboreGen.pl") });
	q.oneSolution();
	q = new Query("current_predicate(X, G)");
	while (q.hasMoreSolutions()) {
	    Hashtable sol = q.nextSolution();
	    String def = sol.get("G").toString();
	    String relation = sol.get("X").toString();

	    if (def.split("([,])").length == 2) {
		Query isRelationQuery1 = new Query(sol.get("X") + "(" + name1 + "," + name2 + ")");

		while (isRelationQuery1.hasMoreSolutions()) {
		    q.nextSolution();
		    relations.add(relation);
		}
		Query isRelationQuery2 = new Query(sol.get("X") + "(" + name2 + "," + name1 + ")");
		while (isRelationQuery2.hasMoreSolutions()) {
		    q.nextSolution();
		    relations.add(relation);
		}
	    }
	}
	System.out.println(relations);
    }
}
