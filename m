Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C01B97C66
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 01:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5A510E669;
	Tue, 23 Sep 2025 23:06:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CngM2EQ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1DD210E669;
 Tue, 23 Sep 2025 23:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758668764; x=1790204764;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=e+ZE7Rm8pc2tLhyH6nJ77Ab3wK3USiVj7nZOUe3Zgo8=;
 b=CngM2EQ/IVHO/a5I0O01HnyStwRwxHU5PtjxjRIuzn0wZBZRvfzo5Eid
 DoqUfPBbZky5nAVDNFqQ9M2UjPvoBFgwU/zzfTh2zvSIOiqc/3cRj/sJY
 yg2IOIWzeU7rgiYbW3NSyW/5vs1qGjWgaxAG65DOJSaeW7DPB1ez+zwfP
 IFVa4yf4H626FxTBFY4ZRT2tZpiXX6Q41tFsO8ETe9vhsNfW9ty7O3b9J
 XbSIPUmZ8iTUkiSdK+uqRYDyubjayH+1iaPnT/Mg2K1KlokzOPJfWvazf
 5qXKN4eIwV9lpahD7jLzWTOSulBu38flcnun8g7DMdZIWfVTbp7m95bEe w==;
X-CSE-ConnectionGUID: 8QdsweIzRGiezRArtOX2XQ==
X-CSE-MsgGUID: 6eIdpibhQ2Weq1vCq0M6cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="61070373"
X-IronPort-AV: E=Sophos;i="6.18,289,1751266800"; d="scan'208";a="61070373"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 16:06:03 -0700
X-CSE-ConnectionGUID: QOQhLDhuRVSP/uHpiCQ8kQ==
X-CSE-MsgGUID: Jl1dKscATuqbqC2BzD4AYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,289,1751266800"; d="scan'208";a="177667048"
Received: from lkp-server02.sh.intel.com (HELO 84c55410ccf6) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 23 Sep 2025 16:06:02 -0700
Received: from kbuild by 84c55410ccf6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v1C4q-0003cX-1K;
 Tue, 23 Sep 2025 23:05:46 +0000
Date: Wed, 24 Sep 2025 07:05:31 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/20] drm/i915/cdclk: Extract dg2_power_well_count()
Message-ID: <202509240628.RRJfRMpz-lkp@intel.com>
References: <20250923171943.7319-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250923171943.7319-7-ville.syrjala@linux.intel.com>
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

Hi Ville,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.17-rc7 next-20250923]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-Introduce-intel_crtc_enable_changed-and-intel_any_crtc_enable_changed/20250924-020047
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20250923171943.7319-7-ville.syrjala%40linux.intel.com
patch subject: [PATCH 06/20] drm/i915/cdclk: Extract dg2_power_well_count()
config: i386-buildonly-randconfig-005-20250924 (https://download.01.org/0day-ci/archive/20250924/202509240628.RRJfRMpz-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250924/202509240628.RRJfRMpz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509240628.RRJfRMpz-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_cdclk.c:2619:6: warning: variable 'voltage_level' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
    2619 |         if (!intel_cdclk_changed(&old_cdclk_state->actual,
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2620 |                                  &new_cdclk_state->actual) &&
         |                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2621 |             dg2_power_well_count(display, old_cdclk_state) ==
         |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2622 |             dg2_power_well_count(display, old_cdclk_state))
         |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:2649:30: note: uninitialized use occurs here
    2649 |         intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
         |                                     ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:2619:2: note: remove the 'if' if its condition is always true
    2619 |         if (!intel_cdclk_changed(&old_cdclk_state->actual,
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2620 |                                  &new_cdclk_state->actual) &&
         |                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2621 |             dg2_power_well_count(display, old_cdclk_state) ==
         |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2622 |             dg2_power_well_count(display, old_cdclk_state))
         |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2623 | 
    2624 |         /* According to "Sequence Before Frequency Change", voltage level set to 0x3 */
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2625 |         voltage_level = DISPLAY_TO_PCODE_VOLTAGE_MAX;
>> drivers/gpu/drm/i915/display/intel_cdclk.c:2619:6: warning: variable 'voltage_level' is used uninitialized whenever '&&' condition is false [-Wsometimes-uninitialized]
    2619 |         if (!intel_cdclk_changed(&old_cdclk_state->actual,
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2620 |                                  &new_cdclk_state->actual) &&
         |                                  ~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:2649:30: note: uninitialized use occurs here
    2649 |         intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
         |                                     ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:2619:6: note: remove the '&&' if its condition is always true
    2619 |         if (!intel_cdclk_changed(&old_cdclk_state->actual,
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    2620 |                                  &new_cdclk_state->actual) &&
         |                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_cdclk.c:2616:42: note: initialize the variable 'voltage_level' to silence this warning
    2616 |         unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
         |                                                 ^
         |                                                  = '\0'
   2 warnings generated.


vim +2619 drivers/gpu/drm/i915/display/intel_cdclk.c

4267196aad5923 Ville Syrjälä       2025-09-23  2608  
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2609  static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2610  {
d34927acff9150 Ville Syrjälä       2024-09-06  2611  	struct intel_display *display = to_intel_display(state);
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2612  	const struct intel_cdclk_state *old_cdclk_state =
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2613  		intel_atomic_get_old_cdclk_state(state);
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2614  	const struct intel_cdclk_state *new_cdclk_state =
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2615  		intel_atomic_get_new_cdclk_state(state);
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2616  	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2617  	bool change_cdclk, update_pipe_count;
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2618  
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04 @2619  	if (!intel_cdclk_changed(&old_cdclk_state->actual,
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2620  				 &new_cdclk_state->actual) &&
4267196aad5923 Ville Syrjälä       2025-09-23  2621  	    dg2_power_well_count(display, old_cdclk_state) ==
4267196aad5923 Ville Syrjälä       2025-09-23  2622  	    dg2_power_well_count(display, old_cdclk_state))
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2623  
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2624  	/* According to "Sequence Before Frequency Change", voltage level set to 0x3 */
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2625  	voltage_level = DISPLAY_TO_PCODE_VOLTAGE_MAX;
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2626  
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2627  	change_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
4267196aad5923 Ville Syrjälä       2025-09-23  2628  	update_pipe_count = dg2_power_well_count(display, new_cdclk_state) >
4267196aad5923 Ville Syrjälä       2025-09-23  2629  		dg2_power_well_count(display, old_cdclk_state);
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2630  
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2631  	/*
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2632  	 * According to "Sequence Before Frequency Change",
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2633  	 * if CDCLK is increasing, set bits 25:16 to upcoming CDCLK,
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2634  	 * if CDCLK is decreasing or not changing, set bits 25:16 to current CDCLK,
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2635  	 * which basically means we choose the maximum of old and new CDCLK, if we know both
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2636  	 */
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2637  	if (change_cdclk)
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2638  		cdclk = max(new_cdclk_state->actual.cdclk, old_cdclk_state->actual.cdclk);
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2639  
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2640  	/*
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2641  	 * According to "Sequence For Pipe Count Change",
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2642  	 * if pipe count is increasing, set bits 25:16 to upcoming pipe count
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2643  	 * (power well is enabled)
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2644  	 * no action if it is decreasing, before the change
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2645  	 */
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2646  	if (update_pipe_count)
4267196aad5923 Ville Syrjälä       2025-09-23  2647  		num_active_pipes = dg2_power_well_count(display, new_cdclk_state);
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2648  
d34927acff9150 Ville Syrjälä       2024-09-06  2649  	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2650  			   change_cdclk, update_pipe_count);
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2651  }
ceb0cc3b428825 Stanislav Lisovskiy 2023-05-04  2652  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
