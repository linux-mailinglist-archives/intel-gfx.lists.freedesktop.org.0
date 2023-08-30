Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8553978DBCB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 20:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E1A10E570;
	Wed, 30 Aug 2023 18:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADFE10E570
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 18:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693421176; x=1724957176;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DfRlEy0lqz/ZPyrlMzMFfGSlFtu7RTCtBtQZ4Zr2/rU=;
 b=e4bBftqO2PgPSC7MAsrL1HgBCwIHQlrgtgtUKM4KZsnwm71KPk0x8UkS
 1cBPwKR98/7/9bWF826zQbzQH9k0P+duG6z8uv9LCh5K+yxVi9zCoWbRY
 mzLYaQMlbu9iriABUxgWSEUpOJuHpkrSG+65iKqZdGg2P/u/7WaH7bWiY
 Gn2mr8RtqdzJ15C+m9zZr/7Cn6pnn5MrxfQXhwBpZBmnZwSpww9sZdbMR
 d859EsR2BrMHiLiiYb/dsVaTvkLb8pIfCFqXn0gRt4+XVJe7gFFE/QeOy
 B94aDTTe8Kj6W2ClfNRV0JiWVCsw1/ZaPmEBhq9xpWuxCCLV+WRhtC/Hc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="439668169"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="439668169"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 11:46:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="732748397"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="732748397"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 30 Aug 2023 11:46:14 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qbQCj-000A7s-0l;
 Wed, 30 Aug 2023 18:46:13 +0000
Date: Thu, 31 Aug 2023 02:45:15 +0800
From: kernel test robot <lkp@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202308310210.60ealdkg-lkp@intel.com>
References: <20230830160001.2395993-1-shekhar.chauhan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230830160001.2395993-1-shekhar.chauhan@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14015150844
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Shekhar,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Shekhar-Chauhan/drm-i915-Add-Wa_14015150844/20230831-000233
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230830160001.2395993-1-shekhar.chauhan%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_14015150844
config: x86_64-buildonly-randconfig-004-20230831 (https://download.01.org/0day-ci/archive/20230831/202308310210.60ealdkg-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230831/202308310210.60ealdkg-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308310210.60ealdkg-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/gt/intel_workarounds.c: In function 'rcs_engine_wa_init':
>> drivers/gpu/drm/i915/gt/intel_workarounds.c:2330:6: error: implicit declaration of function 'IS_DG2_GRAPHICS_STEP'; did you mean 'IS_GRAPHICS_STEP'? [-Werror=implicit-function-declaration]
     if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_C0, STEP_FOREVER) ||
         ^~~~~~~~~~~~~~~~~~~~
         IS_GRAPHICS_STEP
>> drivers/gpu/drm/i915/gt/intel_workarounds.c:2330:33: error: 'G10' undeclared (first use in this function)
     if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_C0, STEP_FOREVER) ||
                                    ^~~
   drivers/gpu/drm/i915/gt/intel_workarounds.c:2330:33: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/gt/intel_workarounds.c:2331:33: error: 'G11' undeclared (first use in this function); did you mean 'G10'?
         IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
                                    ^~~
                                    G10
>> drivers/gpu/drm/i915/gt/intel_workarounds.c:2333:6: error: implicit declaration of function 'IS_MTL_GRAPHICS_STEP'; did you mean 'INTEL_GRAPHICS_STEP'? [-Werror=implicit-function-declaration]
         IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_FOREVER) ||
         ^~~~~~~~~~~~~~~~~~~~
         INTEL_GRAPHICS_STEP
>> drivers/gpu/drm/i915/gt/intel_workarounds.c:2333:33: error: 'M' undeclared (first use in this function)
         IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_FOREVER) ||
                                    ^
>> drivers/gpu/drm/i915/gt/intel_workarounds.c:2334:33: error: 'P' undeclared (first use in this function)
         IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_FOREVER)) {
                                    ^
   cc1: some warnings being treated as errors


vim +2330 drivers/gpu/drm/i915/gt/intel_workarounds.c

  2292	
  2293	static void
  2294	rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
  2295	{
  2296		struct drm_i915_private *i915 = engine->i915;
  2297		struct intel_gt *gt = engine->gt;
  2298	
  2299		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
  2300		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
  2301			/* Wa_22014600077 */
  2302			wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
  2303					 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
  2304		}
  2305	
  2306		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
  2307		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
  2308		    IS_DG2(i915)) {
  2309			/* Wa_1509727124 */
  2310			wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
  2311					 SC_DISABLE_POWER_OPTIMIZATION_EBB);
  2312		}
  2313	
  2314		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
  2315		    IS_DG2(i915)) {
  2316			/* Wa_22012856258 */
  2317			wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
  2318					 GEN12_DISABLE_READ_SUPPRESSION);
  2319		}
  2320	
  2321		if (IS_DG2(i915)) {
  2322			/*
  2323			 * Wa_22010960976:dg2
  2324			 * Wa_14013347512:dg2
  2325			 */
  2326			wa_mcr_masked_dis(wal, XEHP_HDC_CHICKEN0,
  2327					  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
  2328		}
  2329	
> 2330		if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_C0, STEP_FOREVER) ||
> 2331		    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
  2332		    IS_DG2_G12(i915) ||
> 2333		    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_FOREVER) ||
> 2334		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_FOREVER)) {
  2335			/* Wa_14015150844 */
  2336			wa_mcr_masked_dis(wal, XEHP_HDC_CHICKEN0,
  2337					  ATOMIC_CHAINING_TYPED_WRITES);
  2338		}
  2339	
  2340		if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
  2341			/* Wa_22014600077:dg2 */
  2342			wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
  2343				   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
  2344				   0 /* Wa_14012342262 write-only reg, so skip verification */,
  2345				   true);
  2346		}
  2347	
  2348		if (IS_DG2(i915) || IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
  2349		    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
  2350			/*
  2351			 * Wa_1606700617:tgl,dg1,adl-p
  2352			 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
  2353			 * Wa_14010826681:tgl,dg1,rkl,adl-p
  2354			 * Wa_18019627453:dg2
  2355			 */
  2356			wa_masked_en(wal,
  2357				     GEN9_CS_DEBUG_MODE1,
  2358				     FF_DOP_CLOCK_GATE_DISABLE);
  2359		}
  2360	
  2361		if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
  2362		    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
  2363			/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
  2364			wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
  2365	
  2366			/*
  2367			 * Wa_1407928979:tgl A*
  2368			 * Wa_18011464164:tgl[B0+],dg1[B0+]
  2369			 * Wa_22010931296:tgl[B0+],dg1[B0+]
  2370			 * Wa_14010919138:rkl,dg1,adl-s,adl-p
  2371			 */
  2372			wa_write_or(wal, GEN7_FF_THREAD_MODE,
  2373				    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
  2374	
  2375			/* Wa_1406941453:tgl,rkl,dg1,adl-s,adl-p */
  2376			wa_mcr_masked_en(wal,
  2377					 GEN10_SAMPLER_MODE,
  2378					 ENABLE_SMALLPL);
  2379		}
  2380	
  2381		if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
  2382		    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
  2383			/* Wa_1409804808 */
  2384			wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
  2385					 GEN12_PUSH_CONST_DEREF_HOLD_DIS);
  2386	
  2387			/* Wa_14010229206 */
  2388			wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
  2389		}
  2390	
  2391		if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
  2392			/*
  2393			 * Wa_1607297627
  2394			 *
  2395			 * On TGL and RKL there are multiple entries for this WA in the
  2396			 * BSpec; some indicate this is an A0-only WA, others indicate
  2397			 * it applies to all steppings so we trust the "all steppings."
  2398			 */
  2399			wa_masked_en(wal,
  2400				     RING_PSMI_CTL(RENDER_RING_BASE),
  2401				     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
  2402				     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
  2403		}
  2404	
  2405		if (GRAPHICS_VER(i915) == 11) {
  2406			/* This is not an Wa. Enable for better image quality */
  2407			wa_masked_en(wal,
  2408				     _3D_CHICKEN3,
  2409				     _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE);
  2410	
  2411			/*
  2412			 * Wa_1405543622:icl
  2413			 * Formerly known as WaGAPZPriorityScheme
  2414			 */
  2415			wa_write_or(wal,
  2416				    GEN8_GARBCNTL,
  2417				    GEN11_ARBITRATION_PRIO_ORDER_MASK);
  2418	
  2419			/*
  2420			 * Wa_1604223664:icl
  2421			 * Formerly known as WaL3BankAddressHashing
  2422			 */
  2423			wa_write_clr_set(wal,
  2424					 GEN8_GARBCNTL,
  2425					 GEN11_HASH_CTRL_EXCL_MASK,
  2426					 GEN11_HASH_CTRL_EXCL_BIT0);
  2427			wa_write_clr_set(wal,
  2428					 GEN11_GLBLINVL,
  2429					 GEN11_BANK_HASH_ADDR_EXCL_MASK,
  2430					 GEN11_BANK_HASH_ADDR_EXCL_BIT0);
  2431	
  2432			/*
  2433			 * Wa_1405733216:icl
  2434			 * Formerly known as WaDisableCleanEvicts
  2435			 */
  2436			wa_mcr_write_or(wal,
  2437					GEN8_L3SQCREG4,
  2438					GEN11_LQSC_CLEAN_EVICT_DISABLE);
  2439	
  2440			/* Wa_1606682166:icl */
  2441			wa_write_or(wal,
  2442				    GEN7_SARCHKMD,
  2443				    GEN7_DISABLE_SAMPLER_PREFETCH);
  2444	
  2445			/* Wa_1409178092:icl */
  2446			wa_mcr_write_clr_set(wal,
  2447					     GEN11_SCRATCH2,
  2448					     GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
  2449					     0);
  2450	
  2451			/* WaEnable32PlaneMode:icl */
  2452			wa_masked_en(wal, GEN9_CSFE_CHICKEN1_RCS,
  2453				     GEN11_ENABLE_32_PLANE_MODE);
  2454	
  2455			/*
  2456			 * Wa_1408767742:icl[a2..forever],ehl[all]
  2457			 * Wa_1605460711:icl[a0..c0]
  2458			 */
  2459			wa_write_or(wal,
  2460				    GEN7_FF_THREAD_MODE,
  2461				    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
  2462	
  2463			/* Wa_22010271021 */
  2464			wa_masked_en(wal,
  2465				     GEN9_CS_DEBUG_MODE1,
  2466				     FF_DOP_CLOCK_GATE_DISABLE);
  2467		}
  2468	
  2469		/*
  2470		 * Intel platforms that support fine-grained preemption (i.e., gen9 and
  2471		 * beyond) allow the kernel-mode driver to choose between two different
  2472		 * options for controlling preemption granularity and behavior.
  2473		 *
  2474		 * Option 1 (hardware default):
  2475		 *   Preemption settings are controlled in a global manner via
  2476		 *   kernel-only register CS_DEBUG_MODE1 (0x20EC).  Any granularity
  2477		 *   and settings chosen by the kernel-mode driver will apply to all
  2478		 *   userspace clients.
  2479		 *
  2480		 * Option 2:
  2481		 *   Preemption settings are controlled on a per-context basis via
  2482		 *   register CS_CHICKEN1 (0x2580).  CS_CHICKEN1 is saved/restored on
  2483		 *   context switch and is writable by userspace (e.g., via
  2484		 *   MI_LOAD_REGISTER_IMMEDIATE instructions placed in a batch buffer)
  2485		 *   which allows different userspace drivers/clients to select
  2486		 *   different settings, or to change those settings on the fly in
  2487		 *   response to runtime needs.  This option was known by name
  2488		 *   "FtrPerCtxtPreemptionGranularityControl" at one time, although
  2489		 *   that name is somewhat misleading as other non-granularity
  2490		 *   preemption settings are also impacted by this decision.
  2491		 *
  2492		 * On Linux, our policy has always been to let userspace drivers
  2493		 * control preemption granularity/settings (Option 2).  This was
  2494		 * originally mandatory on gen9 to prevent ABI breakage (old gen9
  2495		 * userspace developed before object-level preemption was enabled would
  2496		 * not behave well if i915 were to go with Option 1 and enable that
  2497		 * preemption in a global manner).  On gen9 each context would have
  2498		 * object-level preemption disabled by default (see
  2499		 * WaDisable3DMidCmdPreemption in gen9_ctx_workarounds_init), but
  2500		 * userspace drivers could opt-in to object-level preemption as they
  2501		 * saw fit.  For post-gen9 platforms, we continue to utilize Option 2;
  2502		 * even though it is no longer necessary for ABI compatibility when
  2503		 * enabling a new platform, it does ensure that userspace will be able
  2504		 * to implement any workarounds that show up requiring temporary
  2505		 * adjustments to preemption behavior at runtime.
  2506		 *
  2507		 * Notes/Workarounds:
  2508		 *  - Wa_14015141709:  On DG2 and early steppings of MTL,
  2509		 *      CS_CHICKEN1[0] does not disable object-level preemption as
  2510		 *      it is supposed to (nor does CS_DEBUG_MODE1[0] if we had been
  2511		 *      using Option 1).  Effectively this means userspace is unable
  2512		 *      to disable object-level preemption on these platforms/steppings
  2513		 *      despite the setting here.
  2514		 *
  2515		 *  - Wa_16013994831:  May require that userspace program
  2516		 *      CS_CHICKEN1[10] when certain runtime conditions are true.
  2517		 *      Userspace requires Option 2 to be in effect for their update of
  2518		 *      CS_CHICKEN1[10] to be effective.
  2519		 *
  2520		 * Other workarounds may appear in the future that will also require
  2521		 * Option 2 behavior to allow proper userspace implementation.
  2522		 */
  2523		if (GRAPHICS_VER(i915) >= 9)
  2524			wa_masked_en(wal,
  2525				     GEN7_FF_SLICE_CS_CHICKEN1,
  2526				     GEN9_FFSC_PERCTX_PREEMPT_CTRL);
  2527	
  2528		if (IS_SKYLAKE(i915) ||
  2529		    IS_KABYLAKE(i915) ||
  2530		    IS_COFFEELAKE(i915) ||
  2531		    IS_COMETLAKE(i915)) {
  2532			/* WaEnableGapsTsvCreditFix:skl,kbl,cfl */
  2533			wa_write_or(wal,
  2534				    GEN8_GARBCNTL,
  2535				    GEN9_GAPS_TSV_CREDIT_DISABLE);
  2536		}
  2537	
  2538		if (IS_BROXTON(i915)) {
  2539			/* WaDisablePooledEuLoadBalancingFix:bxt */
  2540			wa_masked_en(wal,
  2541				     FF_SLICE_CS_CHICKEN2,
  2542				     GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE);
  2543		}
  2544	
  2545		if (GRAPHICS_VER(i915) == 9) {
  2546			/* WaContextSwitchWithConcurrentTLBInvalidate:skl,bxt,kbl,glk,cfl */
  2547			wa_masked_en(wal,
  2548				     GEN9_CSFE_CHICKEN1_RCS,
  2549				     GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE);
  2550	
  2551			/* WaEnableLbsSlaRetryTimerDecrement:skl,bxt,kbl,glk,cfl */
  2552			wa_mcr_write_or(wal,
  2553					BDW_SCRATCH1,
  2554					GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE);
  2555	
  2556			/* WaProgramL3SqcReg1DefaultForPerf:bxt,glk */
  2557			if (IS_GEN9_LP(i915))
  2558				wa_mcr_write_clr_set(wal,
  2559						     GEN8_L3SQCREG1,
  2560						     L3_PRIO_CREDITS_MASK,
  2561						     L3_GENERAL_PRIO_CREDITS(62) |
  2562						     L3_HIGH_PRIO_CREDITS(2));
  2563	
  2564			/* WaOCLCoherentLineFlush:skl,bxt,kbl,cfl */
  2565			wa_mcr_write_or(wal,
  2566					GEN8_L3SQCREG4,
  2567					GEN8_LQSC_FLUSH_COHERENT_LINES);
  2568	
  2569			/* Disable atomics in L3 to prevent unrecoverable hangs */
  2570			wa_write_clr_set(wal, GEN9_SCRATCH_LNCF1,
  2571					 GEN9_LNCF_NONIA_COHERENT_ATOMICS_ENABLE, 0);
  2572			wa_mcr_write_clr_set(wal, GEN8_L3SQCREG4,
  2573					     GEN8_LQSQ_NONIA_COHERENT_ATOMICS_ENABLE, 0);
  2574			wa_mcr_write_clr_set(wal, GEN9_SCRATCH1,
  2575					     EVICTION_PERF_FIX_ENABLE, 0);
  2576		}
  2577	
  2578		if (IS_HASWELL(i915)) {
  2579			/* WaSampleCChickenBitEnable:hsw */
  2580			wa_masked_en(wal,
  2581				     HSW_HALF_SLICE_CHICKEN3, HSW_SAMPLE_C_PERFORMANCE);
  2582	
  2583			wa_masked_dis(wal,
  2584				      CACHE_MODE_0_GEN7,
  2585				      /* enable HiZ Raw Stall Optimization */
  2586				      HIZ_RAW_STALL_OPT_DISABLE);
  2587		}
  2588	
  2589		if (IS_VALLEYVIEW(i915)) {
  2590			/* WaDisableEarlyCull:vlv */
  2591			wa_masked_en(wal,
  2592				     _3D_CHICKEN3,
  2593				     _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
  2594	
  2595			/*
  2596			 * WaVSThreadDispatchOverride:ivb,vlv
  2597			 *
  2598			 * This actually overrides the dispatch
  2599			 * mode for all thread types.
  2600			 */
  2601			wa_write_clr_set(wal,
  2602					 GEN7_FF_THREAD_MODE,
  2603					 GEN7_FF_SCHED_MASK,
  2604					 GEN7_FF_TS_SCHED_HW |
  2605					 GEN7_FF_VS_SCHED_HW |
  2606					 GEN7_FF_DS_SCHED_HW);
  2607	
  2608			/* WaPsdDispatchEnable:vlv */
  2609			/* WaDisablePSDDualDispatchEnable:vlv */
  2610			wa_masked_en(wal,
  2611				     GEN7_HALF_SLICE_CHICKEN1,
  2612				     GEN7_MAX_PS_THREAD_DEP |
  2613				     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
  2614		}
  2615	
  2616		if (IS_IVYBRIDGE(i915)) {
  2617			/* WaDisableEarlyCull:ivb */
  2618			wa_masked_en(wal,
  2619				     _3D_CHICKEN3,
  2620				     _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
  2621	
  2622			if (0) { /* causes HiZ corruption on ivb:gt1 */
  2623				/* enable HiZ Raw Stall Optimization */
  2624				wa_masked_dis(wal,
  2625					      CACHE_MODE_0_GEN7,
  2626					      HIZ_RAW_STALL_OPT_DISABLE);
  2627			}
  2628	
  2629			/*
  2630			 * WaVSThreadDispatchOverride:ivb,vlv
  2631			 *
  2632			 * This actually overrides the dispatch
  2633			 * mode for all thread types.
  2634			 */
  2635			wa_write_clr_set(wal,
  2636					 GEN7_FF_THREAD_MODE,
  2637					 GEN7_FF_SCHED_MASK,
  2638					 GEN7_FF_TS_SCHED_HW |
  2639					 GEN7_FF_VS_SCHED_HW |
  2640					 GEN7_FF_DS_SCHED_HW);
  2641	
  2642			/* WaDisablePSDDualDispatchEnable:ivb */
  2643			if (IS_IVB_GT1(i915))
  2644				wa_masked_en(wal,
  2645					     GEN7_HALF_SLICE_CHICKEN1,
  2646					     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
  2647		}
  2648	
  2649		if (GRAPHICS_VER(i915) == 7) {
  2650			/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
  2651			wa_masked_en(wal,
  2652				     RING_MODE_GEN7(RENDER_RING_BASE),
  2653				     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
  2654	
  2655			/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
  2656			wa_masked_dis(wal, CACHE_MODE_0_GEN7, RC_OP_FLUSH_ENABLE);
  2657	
  2658			/*
  2659			 * BSpec says this must be set, even though
  2660			 * WaDisable4x2SubspanOptimization:ivb,hsw
  2661			 * WaDisable4x2SubspanOptimization isn't listed for VLV.
  2662			 */
  2663			wa_masked_en(wal,
  2664				     CACHE_MODE_1,
  2665				     PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
  2666	
  2667			/*
  2668			 * BSpec recommends 8x4 when MSAA is used,
  2669			 * however in practice 16x4 seems fastest.
  2670			 *
  2671			 * Note that PS/WM thread counts depend on the WIZ hashing
  2672			 * disable bit, which we don't touch here, but it's good
  2673			 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
  2674			 */
  2675			wa_masked_field_set(wal,
  2676					    GEN7_GT_MODE,
  2677					    GEN6_WIZ_HASHING_MASK,
  2678					    GEN6_WIZ_HASHING_16x4);
  2679		}
  2680	
  2681		if (IS_GRAPHICS_VER(i915, 6, 7))
  2682			/*
  2683			 * We need to disable the AsyncFlip performance optimisations in
  2684			 * order to use MI_WAIT_FOR_EVENT within the CS. It should
  2685			 * already be programmed to '1' on all products.
  2686			 *
  2687			 * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
  2688			 */
  2689			wa_masked_en(wal,
  2690				     RING_MI_MODE(RENDER_RING_BASE),
  2691				     ASYNC_FLIP_PERF_DISABLE);
  2692	
  2693		if (GRAPHICS_VER(i915) == 6) {
  2694			/*
  2695			 * Required for the hardware to program scanline values for
  2696			 * waiting
  2697			 * WaEnableFlushTlbInvalidationMode:snb
  2698			 */
  2699			wa_masked_en(wal,
  2700				     GFX_MODE,
  2701				     GFX_TLB_INVALIDATE_EXPLICIT);
  2702	
  2703			/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
  2704			wa_masked_en(wal,
  2705				     _3D_CHICKEN,
  2706				     _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB);
  2707	
  2708			wa_masked_en(wal,
  2709				     _3D_CHICKEN3,
  2710				     /* WaStripsFansDisableFastClipPerformanceFix:snb */
  2711				     _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL |
  2712				     /*
  2713				      * Bspec says:
  2714				      * "This bit must be set if 3DSTATE_CLIP clip mode is set
  2715				      * to normal and 3DSTATE_SF number of SF output attributes
  2716				      * is more than 16."
  2717				      */
  2718				     _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH);
  2719	
  2720			/*
  2721			 * BSpec recommends 8x4 when MSAA is used,
  2722			 * however in practice 16x4 seems fastest.
  2723			 *
  2724			 * Note that PS/WM thread counts depend on the WIZ hashing
  2725			 * disable bit, which we don't touch here, but it's good
  2726			 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
  2727			 */
  2728			wa_masked_field_set(wal,
  2729					    GEN6_GT_MODE,
  2730					    GEN6_WIZ_HASHING_MASK,
  2731					    GEN6_WIZ_HASHING_16x4);
  2732	
  2733			/* WaDisable_RenderCache_OperationalFlush:snb */
  2734			wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
  2735	
  2736			/*
  2737			 * From the Sandybridge PRM, volume 1 part 3, page 24:
  2738			 * "If this bit is set, STCunit will have LRA as replacement
  2739			 *  policy. [...] This bit must be reset. LRA replacement
  2740			 *  policy is not supported."
  2741			 */
  2742			wa_masked_dis(wal,
  2743				      CACHE_MODE_0,
  2744				      CM0_STC_EVICT_DISABLE_LRA_SNB);
  2745		}
  2746	
  2747		if (IS_GRAPHICS_VER(i915, 4, 6))
  2748			/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
  2749			wa_add(wal, RING_MI_MODE(RENDER_RING_BASE),
  2750			       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
  2751			       /* XXX bit doesn't stick on Broadwater */
  2752			       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH, true);
  2753	
  2754		if (GRAPHICS_VER(i915) == 4)
  2755			/*
  2756			 * Disable CONSTANT_BUFFER before it is loaded from the context
  2757			 * image. For as it is loaded, it is executed and the stored
  2758			 * address may no longer be valid, leading to a GPU hang.
  2759			 *
  2760			 * This imposes the requirement that userspace reload their
  2761			 * CONSTANT_BUFFER on every batch, fortunately a requirement
  2762			 * they are already accustomed to from before contexts were
  2763			 * enabled.
  2764			 */
  2765			wa_add(wal, ECOSKPD(RENDER_RING_BASE),
  2766			       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
  2767			       0 /* XXX bit doesn't stick on Broadwater */,
  2768			       true);
  2769	}
  2770	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
