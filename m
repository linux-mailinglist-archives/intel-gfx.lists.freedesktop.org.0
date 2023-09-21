Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2A87A928D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 10:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592B910E10E;
	Thu, 21 Sep 2023 08:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715AF10E04A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 08:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695284495; x=1726820495;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Helpva+df3KWiJM1QGmLSQgrKSG5Td5JKokDlhu02VE=;
 b=jPBebG5jqAJL+1TOMSH2+6djd0sp2Axj8jdh52xS5zLrkHtuFjhhvQ71
 kszC158OgfT73WarIiR7jMcpJc3iKmq4aB7dLV/DmqtwMTyGsyEHnaV/q
 hAnYLnSDvyNHo/tBQ1BPwbtDsK4DE85uSIfk2A2Wpy6yRmfO06FkdOVWb
 Z08UTGvifOwANbH9D+OoyvML6i1ayqv4J7gf3B4Rk6LPmRCDjuOVqd/KE
 YXB4SxKukMo4Kh9myYB7CMJiI0xN3KYppK7OnacZgnIxdaHn6qrGknoLc
 HqZj3ePxpehWCVmwiT8qDEUHb2w2Rixsnf8IWFJKAmJ7CYYH1t7A1sZaW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="466764973"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="466764973"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 01:21:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="862378066"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="862378066"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2023 01:21:33 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qjEwF-0009mC-1o;
 Thu, 21 Sep 2023 08:21:31 +0000
Date: Thu, 21 Sep 2023 16:20:50 +0800
From: kernel test robot <lkp@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202309211602.VPUFAm7i-lkp@intel.com>
References: <20230921042727.362710-1-shekhar.chauhan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921042727.362710-1-shekhar.chauhan@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Shekhar,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-tip/drm-tip]

url:    https://github.com/intel-lab-lkp/linux/commits/Shekhar-Chauhan/drm-i915-Add-Wa_18028616096/20230921-122837
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
patch link:    https://lore.kernel.org/r/20230921042727.362710-1-shekhar.chauhan%40intel.com
patch subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20230921/202309211602.VPUFAm7i-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230921/202309211602.VPUFAm7i-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309211602.VPUFAm7i-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_workarounds.c:2919:47: error: passing 'const i915_mcr_reg_t' to parameter of incompatible type 'u32' (aka 'unsigned int')
                   wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
                                                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_gt_regs.h:1235:40: note: expanded from macro 'UGM_FRAGMENT_THRESHOLD_TO_3'
   #define   UGM_FRAGMENT_THRESHOLD_TO_3           MCR_REG(58 - 32)
                                                   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:273:25: note: expanded from macro 'MCR_REG'
   #define MCR_REG(offset) ((const i915_mcr_reg_t){ .reg = (offset) })
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_workarounds.c:272:67: note: passing argument to parameter 'set' here
   wa_mcr_write_or(struct i915_wa_list *wal, i915_mcr_reg_t reg, u32 set)
                                                                     ^
   1 error generated.


vim +2919 drivers/gpu/drm/i915/gt/intel_workarounds.c

  2828	
  2829	/*
  2830	 * The workarounds in this function apply to shared registers in
  2831	 * the general render reset domain that aren't tied to a
  2832	 * specific engine.  Since all render+compute engines get reset
  2833	 * together, and the contents of these registers are lost during
  2834	 * the shared render domain reset, we'll define such workarounds
  2835	 * here and then add them to just a single RCS or CCS engine's
  2836	 * workaround list (whichever engine has the XXXX flag).
  2837	 */
  2838	static void
  2839	general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
  2840	{
  2841		struct drm_i915_private *i915 = engine->i915;
  2842		struct intel_gt *gt = engine->gt;
  2843	
  2844		add_render_compute_tuning_settings(gt, wal);
  2845	
  2846		if (GRAPHICS_VER(i915) >= 11) {
  2847			/* This is not a Wa (although referred to as
  2848			 * WaSetInidrectStateOverride in places), this allows
  2849			 * applications that reference sampler states through
  2850			 * the BindlessSamplerStateBaseAddress to have their
  2851			 * border color relative to DynamicStateBaseAddress
  2852			 * rather than BindlessSamplerStateBaseAddress.
  2853			 *
  2854			 * Otherwise SAMPLER_STATE border colors have to be
  2855			 * copied in multiple heaps (DynamicStateBaseAddress &
  2856			 * BindlessSamplerStateBaseAddress)
  2857			 *
  2858			 * BSpec: 46052
  2859			 */
  2860			wa_mcr_masked_en(wal,
  2861					 GEN10_SAMPLER_MODE,
  2862					 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
  2863		}
  2864	
  2865		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
  2866		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
  2867			/* Wa_14017856879 */
  2868			wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
  2869	
  2870		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
  2871		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
  2872			/*
  2873			 * Wa_14017066071
  2874			 * Wa_14017654203
  2875			 */
  2876			wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
  2877					 MTL_DISABLE_SAMPLER_SC_OOO);
  2878	
  2879		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
  2880			/* Wa_22015279794 */
  2881			wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
  2882					 DISABLE_PREFETCH_INTO_IC);
  2883	
  2884		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
  2885		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
  2886		    IS_DG2(i915)) {
  2887			/* Wa_22013037850 */
  2888			wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
  2889					DISABLE_128B_EVICTION_COMMAND_UDW);
  2890	
  2891			/* Wa_18017747507 */
  2892			wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
  2893		}
  2894	
  2895		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
  2896		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
  2897		    IS_PONTEVECCHIO(i915) ||
  2898		    IS_DG2(i915)) {
  2899			/* Wa_22014226127 */
  2900			wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
  2901		}
  2902	
  2903		if (IS_PONTEVECCHIO(i915) || IS_DG2(i915)) {
  2904			/* Wa_14015227452:dg2,pvc */
  2905			wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
  2906	
  2907			/* Wa_16015675438:dg2,pvc */
  2908			wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
  2909		}
  2910	
  2911		if (IS_DG2(i915)) {
  2912			/*
  2913			 * Wa_16011620976:dg2_g11
  2914			 * Wa_22015475538:dg2
  2915			 */
  2916			wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
  2917	
  2918			/* Wa_18028616096:dg2 */
> 2919			wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
  2920		}
  2921	
  2922		if (IS_DG2_G11(i915)) {
  2923			/*
  2924			 * Wa_22012826095:dg2
  2925			 * Wa_22013059131:dg2
  2926			 */
  2927			wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
  2928					     MAXREQS_PER_BANK,
  2929					     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
  2930	
  2931			/* Wa_22013059131:dg2 */
  2932			wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
  2933					FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
  2934	
  2935			/*
  2936			 * Wa_22012654132
  2937			 *
  2938			 * Note that register 0xE420 is write-only and cannot be read
  2939			 * back for verification on DG2 (due to Wa_14012342262), so
  2940			 * we need to explicitly skip the readback.
  2941			 */
  2942			wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
  2943				   _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
  2944				   0 /* write-only, so skip validation */,
  2945				   true);
  2946		}
  2947	
  2948		if (IS_XEHPSDV(i915)) {
  2949			/* Wa_1409954639 */
  2950			wa_mcr_masked_en(wal,
  2951					 GEN8_ROW_CHICKEN,
  2952					 SYSTOLIC_DOP_CLOCK_GATING_DIS);
  2953	
  2954			/* Wa_1607196519 */
  2955			wa_mcr_masked_en(wal,
  2956					 GEN9_ROW_CHICKEN4,
  2957					 GEN12_DISABLE_GRF_CLEAR);
  2958	
  2959			/* Wa_14010449647:xehpsdv */
  2960			wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
  2961					 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
  2962		}
  2963	}
  2964	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
