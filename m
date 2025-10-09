Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8258BBCA48B
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 19:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4B310EABC;
	Thu,  9 Oct 2025 17:00:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hqECiipY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E109310EABC;
 Thu,  9 Oct 2025 17:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760029208; x=1791565208;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qHALCCO4zmc9O+5R1DF2w4wAbmTKhq0ny40dvtb3LSo=;
 b=hqECiipY6X67mcjtHUN+TpZvF9cX4E+U5zNpC/WkslUmAfm/rhSRBUbY
 PZPkvNrxyuT3pu4L+swSFejPYgsnS0hb8hcbk6MxJ9eocq2W8qtZqU0MS
 jilpCgFk513HIhW/WNPOv0DHhyskE93TeaBiM0Sqc8gtzABD84pucAUIQ
 z1qr50iPYIZjCkbCxmS7E+g6I/g4tgzC8UB+51QCzLv1BdbEArYfnfCPf
 ZzxBK2RDCtac/j44ZUxUSeyvfEYXEFP3w1s7mJOHDkQlFl1SNBaaQKfTa
 EnTUIjkwnw1fEbp7FvA7HvgDweKFUzFrpr2NXz5ig1whxvByXqvrYkSRM g==;
X-CSE-ConnectionGUID: UMIF2SdzSTSEv+oGb11LOA==
X-CSE-MsgGUID: swW/Bg+MSwmAwkcRxJW2og==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79686799"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79686799"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 10:00:07 -0700
X-CSE-ConnectionGUID: YkTPKiieR0ySgBqMi7CC3g==
X-CSE-MsgGUID: 6raujUmnReSDGMNgLlA4Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="180359215"
Received: from lkp-server01.sh.intel.com (HELO 6a630e8620ab) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 09 Oct 2025 10:00:05 -0700
Received: from kbuild by 6a630e8620ab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v6tzm-00013P-2U;
 Thu, 09 Oct 2025 17:00:02 +0000
Date: Fri, 10 Oct 2025 00:59:05 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/20] drm/i915/cdclk: Extract dg2_power_well_count()
Message-ID: <202510100011.UWvFqHK3-lkp@intel.com>
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

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.17 next-20251009]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ville-Syrjala/drm-i915-Introduce-intel_crtc_enable_changed-and-intel_any_crtc_enable_changed/20250926-204211
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20250923171943.7319-7-ville.syrjala%40linux.intel.com
patch subject: [PATCH 06/20] drm/i915/cdclk: Extract dg2_power_well_count()
config: i386-randconfig-011-20251009 (https://download.01.org/0day-ci/archive/20251010/202510100011.UWvFqHK3-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251010/202510100011.UWvFqHK3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510100011.UWvFqHK3-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_cdclk.c:2619:6: error: variable 'voltage_level' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
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
>> drivers/gpu/drm/i915/display/intel_cdclk.c:2619:6: error: variable 'voltage_level' is used uninitialized whenever '&&' condition is false [-Werror,-Wsometimes-uninitialized]
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
   2 errors generated.


vim +2619 drivers/gpu/drm/i915/display/intel_cdclk.c

aaf1b5cf5e779df Ville Syrjälä       2025-09-23  2608  
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2609  static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2610  {
d34927acff91501 Ville Syrjälä       2024-09-06  2611  	struct intel_display *display = to_intel_display(state);
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2612  	const struct intel_cdclk_state *old_cdclk_state =
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2613  		intel_atomic_get_old_cdclk_state(state);
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2614  	const struct intel_cdclk_state *new_cdclk_state =
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2615  		intel_atomic_get_new_cdclk_state(state);
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2616  	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2617  	bool change_cdclk, update_pipe_count;
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2618  
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04 @2619  	if (!intel_cdclk_changed(&old_cdclk_state->actual,
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2620  				 &new_cdclk_state->actual) &&
aaf1b5cf5e779df Ville Syrjälä       2025-09-23  2621  	    dg2_power_well_count(display, old_cdclk_state) ==
aaf1b5cf5e779df Ville Syrjälä       2025-09-23  2622  	    dg2_power_well_count(display, old_cdclk_state))
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2623  
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2624  	/* According to "Sequence Before Frequency Change", voltage level set to 0x3 */
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2625  	voltage_level = DISPLAY_TO_PCODE_VOLTAGE_MAX;
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2626  
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2627  	change_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
aaf1b5cf5e779df Ville Syrjälä       2025-09-23  2628  	update_pipe_count = dg2_power_well_count(display, new_cdclk_state) >
aaf1b5cf5e779df Ville Syrjälä       2025-09-23  2629  		dg2_power_well_count(display, old_cdclk_state);
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2630  
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2631  	/*
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2632  	 * According to "Sequence Before Frequency Change",
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2633  	 * if CDCLK is increasing, set bits 25:16 to upcoming CDCLK,
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2634  	 * if CDCLK is decreasing or not changing, set bits 25:16 to current CDCLK,
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2635  	 * which basically means we choose the maximum of old and new CDCLK, if we know both
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2636  	 */
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2637  	if (change_cdclk)
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2638  		cdclk = max(new_cdclk_state->actual.cdclk, old_cdclk_state->actual.cdclk);
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2639  
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2640  	/*
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2641  	 * According to "Sequence For Pipe Count Change",
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2642  	 * if pipe count is increasing, set bits 25:16 to upcoming pipe count
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2643  	 * (power well is enabled)
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2644  	 * no action if it is decreasing, before the change
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2645  	 */
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2646  	if (update_pipe_count)
aaf1b5cf5e779df Ville Syrjälä       2025-09-23  2647  		num_active_pipes = dg2_power_well_count(display, new_cdclk_state);
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2648  
d34927acff91501 Ville Syrjälä       2024-09-06  2649  	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2650  			   change_cdclk, update_pipe_count);
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2651  }
ceb0cc3b428825f Stanislav Lisovskiy 2023-05-04  2652  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
