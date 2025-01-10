Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9067AA0987D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 18:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3313010E0E1;
	Fri, 10 Jan 2025 17:27:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FhboO0bg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F0F10E0E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 17:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736530065; x=1768066065;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=duc6O0kU5K+Ri0ciMTCmprVaetI90EDjSGPBvt5Rxsw=;
 b=FhboO0bgPxfe1vJzxE//eGrplNWbPKQWliu6FznPtAQ01Xja38ESO/E0
 2ikbJuHC+27xPJVrmnR+FRcA04LCzyFFGNnFPAme4yi5s8PMgXMEsHUS6
 NLXAzNBQYx7aqJNVYlQcxYTmuOQAffxUuC/A2tkyfdtG0s3jKlFVyVnad
 go1S+FttXu9iesyH6toXxy7TOiPGJuk/hTNbEWYQV2oNfML6ZSgbNLCbC
 MQnKTGeUb/qQ/2MgqeBIBxMFXf7BkHNGBXoZYAfCtfVZtcSQWTZJkT8Qj
 4P4GrB/fmT004PvNiIqmjM2Ofwgx4IluaFgc3qxFtYMCl9Vb3r8RANMik Q==;
X-CSE-ConnectionGUID: itw28zzlTECded5iIl7Ihg==
X-CSE-MsgGUID: wQxO8x9TQCaplDxAoTWbTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="24437169"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="24437169"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 09:27:45 -0800
X-CSE-ConnectionGUID: jYcVV6BHSryH97oAPhVvKQ==
X-CSE-MsgGUID: pd2XVPFSTBGddQJ8BKz50w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141084704"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 10 Jan 2025 09:27:43 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tWInM-000JXP-2e;
 Fri, 10 Jan 2025 17:27:40 +0000
Date: Sat, 11 Jan 2025 01:27:23 +0800
From: kernel test robot <lkp@intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>,
	intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, anshuman.gupta@intel.com,
 rodrigo.vivi@intel.com, andrzej.hajda@intel.com, andi.shyti@intel.com
Subject: Re: [PATCH 1/2] drm/i915/mtl: Disable render power-gating during
 selftest only
Message-ID: <202501110110.QpyfeXt4-lkp@intel.com>
References: <20250110140947.3471824-2-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110140947.3471824-2-badal.nilawar@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Badal,

kernel test robot noticed the following build errors:

[auto build test ERROR on linus/master]
[also build test ERROR on drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.13-rc6 next-20250110]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Badal-Nilawar/drm-i915-mtl-Disable-render-power-gating-during-selftest-only/20250110-214933
base:   linus/master
patch link:    https://lore.kernel.org/r/20250110140947.3471824-2-badal.nilawar%40intel.com
patch subject: [PATCH 1/2] drm/i915/mtl: Disable render power-gating during selftest only
config: x86_64-buildonly-randconfig-004-20250110 (https://download.01.org/0day-ci/archive/20250111/202501110110.QpyfeXt4-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250111/202501110110.QpyfeXt4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501110110.QpyfeXt4-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/gt/intel_rc6.c: In function 'gen11_rc6_enable':
>> drivers/gpu/drm/i915/gt/intel_rc6.c:126:13: error: 'i915_selftest' undeclared (first use in this function)
     126 |         if (i915_selftest.live && IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
         |             ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_rc6.c:126:13: note: each undeclared identifier is reported only once for each function it appears in


vim +/i915_selftest +126 drivers/gpu/drm/i915/gt/intel_rc6.c

    55	
    56	static void gen11_rc6_enable(struct intel_rc6 *rc6)
    57	{
    58		struct intel_gt *gt = rc6_to_gt(rc6);
    59		struct intel_uncore *uncore = gt->uncore;
    60		struct intel_engine_cs *engine;
    61		enum intel_engine_id id;
    62		u32 pg_enable;
    63		int i;
    64	
    65		/*
    66		 * With GuCRC, these parameters are set by GuC
    67		 */
    68		if (!intel_uc_uses_guc_rc(&gt->uc)) {
    69			/* 2b: Program RC6 thresholds.*/
    70			intel_uncore_write_fw(uncore, GEN6_RC6_WAKE_RATE_LIMIT, 54 << 16 | 85);
    71			intel_uncore_write_fw(uncore, GEN10_MEDIA_WAKE_RATE_LIMIT, 150);
    72	
    73			intel_uncore_write_fw(uncore, GEN6_RC_EVALUATION_INTERVAL, 125000); /* 12500 * 1280ns */
    74			intel_uncore_write_fw(uncore, GEN6_RC_IDLE_HYSTERSIS, 25); /* 25 * 1280ns */
    75			for_each_engine(engine, rc6_to_gt(rc6), id)
    76				intel_uncore_write_fw(uncore, RING_MAX_IDLE(engine->mmio_base), 10);
    77	
    78			intel_uncore_write_fw(uncore, GUC_MAX_IDLE_COUNT, 0xA);
    79	
    80			intel_uncore_write_fw(uncore, GEN6_RC_SLEEP, 0);
    81	
    82			intel_uncore_write_fw(uncore, GEN6_RC6_THRESHOLD, 50000); /* 50/125ms per EI */
    83		}
    84	
    85		/*
    86		 * 2c: Program Coarse Power Gating Policies.
    87		 *
    88		 * Bspec's guidance is to use 25us (really 25 * 1280ns) here. What we
    89		 * use instead is a more conservative estimate for the maximum time
    90		 * it takes us to service a CS interrupt and submit a new ELSP - that
    91		 * is the time which the GPU is idle waiting for the CPU to select the
    92		 * next request to execute. If the idle hysteresis is less than that
    93		 * interrupt service latency, the hardware will automatically gate
    94		 * the power well and we will then incur the wake up cost on top of
    95		 * the service latency. A similar guide from plane_state is that we
    96		 * do not want the enable hysteresis to less than the wakeup latency.
    97		 *
    98		 * igt/gem_exec_nop/sequential provides a rough estimate for the
    99		 * service latency, and puts it under 10us for Icelake, similar to
   100		 * Broadwell+, To be conservative, we want to factor in a context
   101		 * switch on top (due to ksoftirqd).
   102		 */
   103		intel_uncore_write_fw(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 60);
   104		intel_uncore_write_fw(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 60);
   105	
   106		/* 3a: Enable RC6
   107		 *
   108		 * With GuCRC, we do not enable bit 31 of RC_CTL,
   109		 * thus allowing GuC to control RC6 entry/exit fully instead.
   110		 * We will not set the HW ENABLE and EI bits
   111		 */
   112		if (!intel_guc_rc_enable(gt_to_guc(gt)))
   113			rc6->ctl_enable = GEN6_RC_CTL_RC6_ENABLE;
   114		else
   115			rc6->ctl_enable =
   116				GEN6_RC_CTL_HW_ENABLE |
   117				GEN6_RC_CTL_RC6_ENABLE |
   118				GEN6_RC_CTL_EI_MODE(1);
   119	
   120		/*
   121		 * BSpec 52698 - Render powergating must be off.
   122		 * FIXME BSpec is outdated, disabling powergating for MTL is just
   123		 * temporary wa and should be removed after fixing real cause
   124		 * of forcewake timeouts.
   125		 */
 > 126		if (i915_selftest.live && IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
   127			pg_enable =
   128				GEN9_MEDIA_PG_ENABLE |
   129				GEN11_MEDIA_SAMPLER_PG_ENABLE;
   130		else
   131			pg_enable =
   132				GEN9_RENDER_PG_ENABLE |
   133				GEN9_MEDIA_PG_ENABLE |
   134				GEN11_MEDIA_SAMPLER_PG_ENABLE;
   135	
   136		if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
   137			for (i = 0; i < I915_MAX_VCS; i++)
   138				if (HAS_ENGINE(gt, _VCS(i)))
   139					pg_enable |= (VDN_HCP_POWERGATE_ENABLE(i) |
   140						      VDN_MFX_POWERGATE_ENABLE(i));
   141		}
   142	
   143		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
   144	}
   145	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
