#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM esp_accepta */
	case 3: // STATE 1 - _spin_nvr.tmp:113 - [((!(!(((time_code>timeout_code)&&(cuenta==code3))))&&!((correcto==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][1] = 1;
		if (!(( !( !(((now.time_code>now.timeout_code)&&(now.cuenta==now.code3))))&& !((now.correcto==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:118 - [(!((correcto==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][8] = 1;
		if (!( !((now.correcto==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:120 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[16][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_tiempofinal */
	case 6: // STATE 1 - _spin_nvr.tmp:102 - [((!(!((time_code>timeout_code)))&&!((((digito==0)||(digito==1))||((digito==2)&&(cuenta==0))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][1] = 1;
		if (!(( !( !((now.time_code>now.timeout_code)))&& !((((now.digito==0)||(now.digito==1))||((now.digito==2)&&(now.cuenta==0)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:107 - [(!((((digito==0)||(digito==1))||((digito==2)&&(cuenta==0)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][8] = 1;
		if (!( !((((now.digito==0)||(now.digito==1))||((now.digito==2)&&(now.cuenta==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:109 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[15][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_avanza */
	case 9: // STATE 1 - _spin_nvr.tmp:91 - [((!(!(((time_code>timeout_code)&&(cuenta==code1))))&&!((((digito==0)||(digito==1))||((digito==2)&&(cuenta==0))))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][1] = 1;
		if (!(( !( !(((now.time_code>now.timeout_code)&&(now.cuenta==now.code1))))&& !((((now.digito==0)||(now.digito==1))||((now.digito==2)&&(now.cuenta==0)))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - _spin_nvr.tmp:96 - [(!((((digito==0)||(digito==1))||((digito==2)&&(cuenta==0)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][8] = 1;
		if (!( !((((now.digito==0)||(now.digito==1))||((now.digito==2)&&(now.cuenta==0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - _spin_nvr.tmp:98 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[14][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_inc */
	case 12: // STATE 1 - _spin_nvr.tmp:80 - [((!(!((boton_code==1)))&&!((cuentainc==(cuenta+1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][1] = 1;
		if (!(( !( !((now.boton_code==1)))&& !((now.cuentainc==(now.cuenta+1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - _spin_nvr.tmp:85 - [(!((cuentainc==(cuenta+1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][8] = 1;
		if (!( !((now.cuentainc==(now.cuenta+1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 13 - _spin_nvr.tmp:87 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[13][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_presencia_off */
	case 15: // STATE 1 - _spin_nvr.tmp:69 - [((!(!(((ALARMA_state==PRESENCIA)&&(presencia==0))))&&!((ALARMA_state==ARMADO))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!(( !( !(((now.ALARMA_state==3)&&(now.presencia==0))))&& !((now.ALARMA_state==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 8 - _spin_nvr.tmp:74 - [(!((ALARMA_state==ARMADO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][8] = 1;
		if (!( !((now.ALARMA_state==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 13 - _spin_nvr.tmp:76 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_codigo_correcto3 */
	case 18: // STATE 1 - _spin_nvr.tmp:58 - [((!(!(((ALARMA_state==PRESENCIA)&&(code==solucion))))&&!((ALARMA_state==DESARMADO))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!(( !( !(((now.ALARMA_state==3)&&(now.code==now.solucion))))&& !((now.ALARMA_state==5)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - _spin_nvr.tmp:63 - [(!((ALARMA_state==DESARMADO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][8] = 1;
		if (!( !((now.ALARMA_state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 13 - _spin_nvr.tmp:65 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_codigo_correcto2 */
	case 21: // STATE 1 - _spin_nvr.tmp:47 - [((!(!(((ALARMA_state==ARMADO)&&(code==solucion))))&&!((ALARMA_state==DESARMADO))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!(( !( !(((now.ALARMA_state==4)&&(now.code==now.solucion))))&& !((now.ALARMA_state==5)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - _spin_nvr.tmp:52 - [(!((ALARMA_state==DESARMADO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][8] = 1;
		if (!( !((now.ALARMA_state==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - _spin_nvr.tmp:54 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_presencia_on */
	case 24: // STATE 1 - _spin_nvr.tmp:36 - [((!(!(((ALARMA_state==ARMADO)&&(presencia==1))))&&!((ALARMA_state==PRESENCIA))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!(( !( !(((now.ALARMA_state==4)&&(now.presencia==1))))&& !((now.ALARMA_state==3)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 8 - _spin_nvr.tmp:41 - [(!((ALARMA_state==PRESENCIA)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][8] = 1;
		if (!( !((now.ALARMA_state==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - _spin_nvr.tmp:43 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_codigo_correcto1 */
	case 27: // STATE 1 - _spin_nvr.tmp:25 - [((!(!(((ALARMA_state==DESARMADO)&&(code==solucion))))&&!((ALARMA_state==ARMADO))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(( !( !(((now.ALARMA_state==5)&&(now.code==now.solucion))))&& !((now.ALARMA_state==4)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 8 - _spin_nvr.tmp:30 - [(!((ALARMA_state==ARMADO)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][8] = 1;
		if (!( !((now.ALARMA_state==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 13 - _spin_nvr.tmp:32 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_boton_luz_time_out */
	case 30: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((led_state==ON)))&&!((led_state==OFF))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!(( !( !((now.led_state==6)))&& !((now.led_state==7)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 8 - _spin_nvr.tmp:19 - [(!((led_state==OFF)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][8] = 1;
		if (!( !((now.led_state==7))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM esp_boton_luz_press */
	case 33: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(((led_state==OFF)||(boton_led==1))))&&!((led_state==ON))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!(( !( !(((now.led_state==7)||(now.boton_led==1))))&& !((now.led_state==6)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 8 - _spin_nvr.tmp:8 - [(!((led_state==ON)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][8] = 1;
		if (!( !((now.led_state==6))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno3 */
	case 36: // STATE 1 - model.pml:139 - [time_code = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		(trpt+1)->bup.oval = now.time_code;
		now.time_code = 0;
#ifdef VAR_RANGES
		logval("time_code", now.time_code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 2 - model.pml:142 - [boton_code = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		(trpt+1)->bup.oval = now.boton_code;
		now.boton_code = 1;
#ifdef VAR_RANGES
		logval("boton_code", now.boton_code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 5 - model.pml:144 - [timecode = (timecode+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[5][5] = 1;
		(trpt+1)->bup.oval = now.timecode;
		now.timecode = (now.timecode+1);
#ifdef VAR_RANGES
		logval("timecode", now.timecode);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 9 - model.pml:146 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][9] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno2 */
	case 40: // STATE 1 - model.pml:127 - [code = 197] (0:0:1 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		(trpt+1)->bup.oval = now.code;
		now.code = 197;
#ifdef VAR_RANGES
		logval("code", now.code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 2 - model.pml:128 - [code = 679] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		(trpt+1)->bup.oval = now.code;
		now.code = 679;
#ifdef VAR_RANGES
		logval("code", now.code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 3 - model.pml:129 - [code = 431] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = now.code;
		now.code = 431;
#ifdef VAR_RANGES
		logval("code", now.code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 4 - model.pml:130 - [code = 689] (0:0:1 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		(trpt+1)->bup.oval = now.code;
		now.code = 689;
#ifdef VAR_RANGES
		logval("code", now.code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 5 - model.pml:131 - [code = 789] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = now.code;
		now.code = 789;
#ifdef VAR_RANGES
		logval("code", now.code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 6 - model.pml:132 - [presencia = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		(trpt+1)->bup.oval = now.presencia;
		now.presencia = 1;
#ifdef VAR_RANGES
		logval("presencia", now.presencia);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 7 - model.pml:133 - [presencia = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][7] = 1;
		(trpt+1)->bup.oval = now.presencia;
		now.presencia = 0;
#ifdef VAR_RANGES
		logval("presencia", now.presencia);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 8 - model.pml:134 - [code = 900] (0:0:1 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		(trpt+1)->bup.oval = now.code;
		now.code = 900;
#ifdef VAR_RANGES
		logval("code", now.code);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 14 - model.pml:137 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC entorno1 */
	case 49: // STATE 1 - model.pml:115 - [time = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		(trpt+1)->bup.oval = now.time;
		now.time = 0;
#ifdef VAR_RANGES
		logval("time", now.time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 2 - model.pml:118 - [boton_led = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = now.boton_led;
		now.boton_led = 1;
#ifdef VAR_RANGES
		logval("boton_led", now.boton_led);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 6 - model.pml:121 - [time = (time+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = now.time;
		now.time = (now.time+1);
#ifdef VAR_RANGES
		logval("time", now.time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 10 - model.pml:123 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC codigo */
	case 53: // STATE 1 - model.pml:92 - [((code_state==IDLE))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!((now.code_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 2 - model.pml:95 - [((code_state==IDLE))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.code_state==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 3 - model.pml:97 - [(boton_code)] (49:0:5 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(now.boton_code))
			continue;
		/* merge: boton_code = 0(49, 4, 49) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.boton_code;
		now.boton_code = 0;
#ifdef VAR_RANGES
		logval("boton_code", now.boton_code);
#endif
		;
		/* merge: cuentainc = cuenta(49, 5, 49) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[1] = now.cuentainc;
		now.cuentainc = now.cuenta;
#ifdef VAR_RANGES
		logval("cuentainc", now.cuentainc);
#endif
		;
		/* merge: code_state = WAIT(49, 6, 49) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[2] = now.code_state;
		now.code_state = 1;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: cuenta = (cuenta+1)(49, 7, 49) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[3] = now.cuenta;
		now.cuenta = (now.cuenta+1);
#ifdef VAR_RANGES
		logval("cuenta", now.cuenta);
#endif
		;
		/* merge: timeout_code = (time_code+6)(49, 8, 49) */
		reached[2][8] = 1;
		(trpt+1)->bup.ovals[4] = now.timeout_code;
		now.timeout_code = (now.time_code+6);
#ifdef VAR_RANGES
		logval("timeout_code", now.timeout_code);
#endif
		;
		/* merge: .(goto)(49, 10, 49) */
		reached[2][10] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 56: // STATE 12 - model.pml:100 - [((code_state==WAIT))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (!((now.code_state==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 13 - model.pml:102 - [(boton_code)] (49:0:4 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!(now.boton_code))
			continue;
		/* merge: boton_code = 0(49, 14, 49) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.boton_code;
		now.boton_code = 0;
#ifdef VAR_RANGES
		logval("boton_code", now.boton_code);
#endif
		;
		/* merge: cuentainc = cuenta(49, 15, 49) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals[1] = now.cuentainc;
		now.cuentainc = now.cuenta;
#ifdef VAR_RANGES
		logval("cuentainc", now.cuentainc);
#endif
		;
		/* merge: cuenta = (cuenta+1)(49, 16, 49) */
		reached[2][16] = 1;
		(trpt+1)->bup.ovals[2] = now.cuenta;
		now.cuenta = (now.cuenta+1);
#ifdef VAR_RANGES
		logval("cuenta", now.cuenta);
#endif
		;
		/* merge: timeout_code = (time_code+6)(49, 17, 49) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals[3] = now.timeout_code;
		now.timeout_code = (now.time_code+6);
#ifdef VAR_RANGES
		logval("timeout_code", now.timeout_code);
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 58: // STATE 47 - model.pml:110 - [.(goto)] (0:49:0 - 7)
		IfNotBlocked
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 59: // STATE 18 - model.pml:103 - [(((time_code>timeout_code)&&(code1==cuenta)))] (49:0:5 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!(((now.time_code>now.timeout_code)&&(now.code1==now.cuenta))))
			continue;
		/* merge: code_state = WAIT(49, 19, 49) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.code_state;
		now.code_state = 1;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: digito = 1(49, 20, 49) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[1] = now.digito;
		now.digito = 1;
#ifdef VAR_RANGES
		logval("digito", now.digito);
#endif
		;
		/* merge: codet = cuenta(49, 21, 49) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[2] = now.codet;
		now.codet = now.cuenta;
#ifdef VAR_RANGES
		logval("codet", now.codet);
#endif
		;
		/* merge: cuenta = 0(49, 22, 49) */
		reached[2][22] = 1;
		(trpt+1)->bup.ovals[3] = now.cuenta;
		now.cuenta = 0;
#ifdef VAR_RANGES
		logval("cuenta", now.cuenta);
#endif
		;
		/* merge: correcto = 0(49, 23, 49) */
		reached[2][23] = 1;
		(trpt+1)->bup.ovals[4] = now.correcto;
		now.correcto = 0;
#ifdef VAR_RANGES
		logval("correcto", now.correcto);
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 60: // STATE 24 - model.pml:104 - [(((time_code>timeout_code)&&(code2==cuenta)))] (49:0:5 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (!(((now.time_code>now.timeout_code)&&(now.code2==now.cuenta))))
			continue;
		/* merge: code_state = WAIT(49, 25, 49) */
		reached[2][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.code_state;
		now.code_state = 1;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: digito = 2(49, 26, 49) */
		reached[2][26] = 1;
		(trpt+1)->bup.ovals[1] = now.digito;
		now.digito = 2;
#ifdef VAR_RANGES
		logval("digito", now.digito);
#endif
		;
		/* merge: codet = (codet+(cuenta*10))(49, 27, 49) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[2] = now.codet;
		now.codet = (now.codet+(now.cuenta*10));
#ifdef VAR_RANGES
		logval("codet", now.codet);
#endif
		;
		/* merge: cuenta = 0(49, 28, 49) */
		reached[2][28] = 1;
		(trpt+1)->bup.ovals[3] = now.cuenta;
		now.cuenta = 0;
#ifdef VAR_RANGES
		logval("cuenta", now.cuenta);
#endif
		;
		/* merge: correcto = 0(49, 29, 49) */
		reached[2][29] = 1;
		(trpt+1)->bup.ovals[4] = now.correcto;
		now.correcto = 0;
#ifdef VAR_RANGES
		logval("correcto", now.correcto);
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 61: // STATE 30 - model.pml:105 - [(((time_code>timeout_code)&&(code3==cuenta)))] (49:0:5 - 1)
		IfNotBlocked
		reached[2][30] = 1;
		if (!(((now.time_code>now.timeout_code)&&(now.code3==now.cuenta))))
			continue;
		/* merge: code_state = WAIT(49, 31, 49) */
		reached[2][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = now.code_state;
		now.code_state = 1;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: digito = 0(49, 32, 49) */
		reached[2][32] = 1;
		(trpt+1)->bup.ovals[1] = now.digito;
		now.digito = 0;
#ifdef VAR_RANGES
		logval("digito", now.digito);
#endif
		;
		/* merge: codet = (codet+(cuenta*100))(49, 33, 49) */
		reached[2][33] = 1;
		(trpt+1)->bup.ovals[2] = now.codet;
		now.codet = (now.codet+(now.cuenta*100));
#ifdef VAR_RANGES
		logval("codet", now.codet);
#endif
		;
		/* merge: cuenta = 0(49, 34, 49) */
		reached[2][34] = 1;
		(trpt+1)->bup.ovals[3] = now.cuenta;
		now.cuenta = 0;
#ifdef VAR_RANGES
		logval("cuenta", now.cuenta);
#endif
		;
		/* merge: correcto = 0(49, 35, 49) */
		reached[2][35] = 1;
		(trpt+1)->bup.ovals[4] = now.correcto;
		now.correcto = 0;
#ifdef VAR_RANGES
		logval("correcto", now.correcto);
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 62: // STATE 36 - model.pml:106 - [(((((time_code>timeout_code)&&(code1!=cuenta))||(code2!=cuenta))||(code3!=cuenta)))] (49:0:4 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!(((((now.time_code>now.timeout_code)&&(now.code1!=now.cuenta))||(now.code2!=now.cuenta))||(now.code3!=now.cuenta))))
			continue;
		/* merge: code_state = IDLE(49, 37, 49) */
		reached[2][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.code_state;
		now.code_state = 2;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: digito = 0(49, 38, 49) */
		reached[2][38] = 1;
		(trpt+1)->bup.ovals[1] = now.digito;
		now.digito = 0;
#ifdef VAR_RANGES
		logval("digito", now.digito);
#endif
		;
		/* merge: cuenta = 0(49, 39, 49) */
		reached[2][39] = 1;
		(trpt+1)->bup.ovals[2] = now.cuenta;
		now.cuenta = 0;
#ifdef VAR_RANGES
		logval("cuenta", now.cuenta);
#endif
		;
		/* merge: correcto = 0(49, 40, 49) */
		reached[2][40] = 1;
		(trpt+1)->bup.ovals[3] = now.correcto;
		now.correcto = 0;
#ifdef VAR_RANGES
		logval("correcto", now.correcto);
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 63: // STATE 41 - model.pml:107 - [((correctcode==codet))] (49:0:2 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		if (!((now.correctcode==now.codet)))
			continue;
		/* merge: code_state = IDLE(49, 42, 49) */
		reached[2][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.code_state;
		now.code_state = 2;
#ifdef VAR_RANGES
		logval("code_state", now.code_state);
#endif
		;
		/* merge: correcto = 1(49, 43, 49) */
		reached[2][43] = 1;
		(trpt+1)->bup.ovals[1] = now.correcto;
		now.correcto = 1;
#ifdef VAR_RANGES
		logval("correcto", now.correcto);
#endif
		;
		/* merge: .(goto)(49, 47, 49) */
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 64: // STATE 44 - model.pml:108 - [(!(boton_code))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][44] = 1;
		if (!( !(now.boton_code)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 45 - model.pml:108 - [(1)] (49:0:0 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(49, 47, 49) */
		reached[2][47] = 1;
		;
		/* merge: .(goto)(0, 50, 49) */
		reached[2][50] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 66: // STATE 52 - model.pml:112 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC alarma */
	case 67: // STATE 1 - model.pml:70 - [ALARMA_state = DESARMADO] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.ALARMA_state;
		now.ALARMA_state = 5;
#ifdef VAR_RANGES
		logval("ALARMA_state", now.ALARMA_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 2 - model.pml:72 - [((ALARMA_state==DESARMADO))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.ALARMA_state==5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 3 - model.pml:74 - [((code==correctcode))] (24:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((now.code==now.correctcode)))
			continue;
		/* merge: ALARMA_state = ARMADO(24, 4, 24) */
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.ALARMA_state;
		now.ALARMA_state = 4;
#ifdef VAR_RANGES
		logval("ALARMA_state", now.ALARMA_state);
#endif
		;
		/* merge: .(goto)(24, 6, 24) */
		reached[1][6] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 70: // STATE 8 - model.pml:77 - [((ALARMA_state==ARMADO))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!((now.ALARMA_state==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 9 - model.pml:79 - [((code==correctcode))] (24:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((now.code==now.correctcode)))
			continue;
		/* merge: ALARMA_state = DESARMADO(24, 10, 24) */
		reached[1][10] = 1;
		(trpt+1)->bup.oval = now.ALARMA_state;
		now.ALARMA_state = 5;
#ifdef VAR_RANGES
		logval("ALARMA_state", now.ALARMA_state);
#endif
		;
		/* merge: .(goto)(24, 14, 24) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 72: // STATE 14 - model.pml:82 - [.(goto)] (0:24:0 - 2)
		IfNotBlocked
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 73: // STATE 11 - model.pml:80 - [(presencia)] (24:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(now.presencia))
			continue;
		/* merge: ALARMA_state = PRESENCIA(24, 12, 24) */
		reached[1][12] = 1;
		(trpt+1)->bup.oval = now.ALARMA_state;
		now.ALARMA_state = 3;
#ifdef VAR_RANGES
		logval("ALARMA_state", now.ALARMA_state);
#endif
		;
		/* merge: .(goto)(24, 14, 24) */
		reached[1][14] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 74: // STATE 16 - model.pml:83 - [((ALARMA_state==PRESENCIA))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((now.ALARMA_state==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 17 - model.pml:85 - [(!(presencia))] (24:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!( !(now.presencia)))
			continue;
		/* merge: ALARMA_state = ARMADO(24, 18, 24) */
		reached[1][18] = 1;
		(trpt+1)->bup.oval = now.ALARMA_state;
		now.ALARMA_state = 4;
#ifdef VAR_RANGES
		logval("ALARMA_state", now.ALARMA_state);
#endif
		;
		/* merge: .(goto)(24, 22, 24) */
		reached[1][22] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 76: // STATE 22 - model.pml:88 - [.(goto)] (0:24:0 - 2)
		IfNotBlocked
		reached[1][22] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 77: // STATE 19 - model.pml:86 - [((code==correctcode))] (24:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!((now.code==now.correctcode)))
			continue;
		/* merge: ALARMA_state = DESARMADO(24, 20, 24) */
		reached[1][20] = 1;
		(trpt+1)->bup.oval = now.ALARMA_state;
		now.ALARMA_state = 5;
#ifdef VAR_RANGES
		logval("ALARMA_state", now.ALARMA_state);
#endif
		;
		/* merge: .(goto)(24, 22, 24) */
		reached[1][22] = 1;
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 78: // STATE 27 - model.pml:90 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC LED */
	case 79: // STATE 1 - model.pml:52 - [led_state = OFF] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.led_state;
		now.led_state = 7;
#ifdef VAR_RANGES
		logval("led_state", now.led_state);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 2 - model.pml:54 - [((led_state==OFF))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.led_state==7)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 3 - model.pml:56 - [(boton_led)] (21:0:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(now.boton_led))
			continue;
		/* merge: boton_led = 0(21, 4, 21) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.boton_led;
		now.boton_led = 0;
#ifdef VAR_RANGES
		logval("boton_led", now.boton_led);
#endif
		;
		/* merge: led_state = ON(21, 5, 21) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.led_state;
		now.led_state = 6;
#ifdef VAR_RANGES
		logval("led_state", now.led_state);
#endif
		;
		/* merge: deadline = (time+6)(21, 6, 21) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = now.deadline;
		now.deadline = (now.time+6);
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: .(goto)(21, 8, 21) */
		reached[0][8] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 82: // STATE 10 - model.pml:59 - [((led_state==ON))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.led_state==6)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 11 - model.pml:61 - [((time>deadline))] (21:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.time>now.deadline)))
			continue;
		/* merge: led_state = OFF(21, 12, 21) */
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.led_state;
		now.led_state = 7;
#ifdef VAR_RANGES
		logval("led_state", now.led_state);
#endif
		;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 84: // STATE 19 - model.pml:65 - [.(goto)] (0:21:0 - 3)
		IfNotBlocked
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 85: // STATE 13 - model.pml:62 - [(boton_led)] (21:0:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(now.boton_led))
			continue;
		/* merge: boton_led = 0(21, 14, 21) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.boton_led;
		now.boton_led = 0;
#ifdef VAR_RANGES
		logval("boton_led", now.boton_led);
#endif
		;
		/* merge: deadline = (time+6)(21, 15, 21) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = now.deadline;
		now.deadline = (now.time+6);
#ifdef VAR_RANGES
		logval("deadline", now.deadline);
#endif
		;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 86: // STATE 16 - model.pml:63 - [(!(boton_led))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!( !(now.boton_led)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 17 - model.pml:63 - [(1)] (21:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(21, 19, 21) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[0][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 88: // STATE 24 - model.pml:67 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

