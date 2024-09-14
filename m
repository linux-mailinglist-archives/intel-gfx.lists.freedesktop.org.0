Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 129FA978C6F
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2024 03:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A017310E21C;
	Sat, 14 Sep 2024 01:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oi/iv4fI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8867210E21C
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Sep 2024 01:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726277677; x=1757813677;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ytAothRdZM6PpfnKZZUz6/oyAY+iqWHATF/SQJmf4mk=;
 b=Oi/iv4fIlpwDZktBeQF3hhhpEtHW/IERZXxjHOqcc3nvWCOfs/nfyuD8
 R/cLemW0KahwcjjxBcr5pFdo9e+P5OekR8iy6XCc3gkFdTANW0h0Ma+0w
 4oH+fjmrcQ/x3J25ZsWwojNyG/5eWD6TyCckdmLtoOaTi8Ajvyj5OA/dB
 fjqHZrSnDGNELOGVuBAA/WLgijpSqal4bAeW5n6eM/DQg0gMZf+GdfWIk
 zlks+onC5r2i8puBm0bfdSKfKX7p5hsmsQGM4Y3fIwPGubYoQi/eRVxUf
 DYTzrEeaBOu8hvXy9EMs9fRwEq9uTTqiCfK5eh2YPG3Rnimq3uKZlUZra g==;
X-CSE-ConnectionGUID: 721jNU0bSp6UDLCXNWmPTA==
X-CSE-MsgGUID: VRIHMIdUT6umvJYJqODmvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="35767075"
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="35767075"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 18:34:37 -0700
X-CSE-ConnectionGUID: SqIqu4poSOe7sdF0RR6aJA==
X-CSE-MsgGUID: KcpgYUarQeixqVRBBQ/V2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="99119408"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 13 Sep 2024 18:34:35 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1spHgG-0007EE-1E;
 Sat, 14 Sep 2024 01:34:32 +0000
Date: Sat, 14 Sep 2024 09:33:37 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, ville.syrjala@linux.intel.com,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Add block_dc6_needed variable into
 intel_crtc
Message-ID: <202409140953.0izbdQ9U-lkp@intel.com>
References: <20240913073347.3273589-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240913073347.3273589-2-jouni.hogander@intel.com>
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

Hi Jouni,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20240912]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.11-rc7 v6.11-rc6 v6.11-rc5 v6.11-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-i915-display-Add-block_dc6_needed-variable-into-intel_crtc/20240913-153658
base:   next-20240912
patch link:    https://lore.kernel.org/r/20240913073347.3273589-2-jouni.hogander%40intel.com
patch subject: [PATCH 1/2] drm/i915/display: Add block_dc6_needed variable into intel_crtc
config: x86_64-defconfig (https://download.01.org/0day-ci/archive/20240914/202409140953.0izbdQ9U-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240914/202409140953.0izbdQ9U-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409140953.0izbdQ9U-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/intel_psr.c: In function 'dg2_activate_panel_replay':
>> drivers/gpu/drm/i915/display/intel_psr.c:973:62: error: passing argument 1 of 'intel_crtc_for_pipe' from incompatible pointer type [-Werror=incompatible-pointer-types]
     973 |                 block_dc6_on_vblank_get(&intel_crtc_for_pipe(display, intel_dp->psr.pipe)->base);
         |                                                              ^~~~~~~
         |                                                              |
         |                                                              struct intel_display *
   In file included from drivers/gpu/drm/i915/display/intel_psr.c:32:
   drivers/gpu/drm/i915/display/intel_crtc.h:46:65: note: expected 'struct drm_i915_private *' but argument is of type 'struct intel_display *'
      46 | struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
         |                                        ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
   cc1: some warnings being treated as errors


vim +/intel_crtc_for_pipe +973 drivers/gpu/drm/i915/display/intel_psr.c

   954	
   955	static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
   956	{
   957		struct intel_display *display = to_intel_display(intel_dp);
   958		struct intel_psr *psr = &intel_dp->psr;
   959		enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
   960	
   961		if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
   962			u32 val = psr->su_region_et_enabled ?
   963				LNL_EDP_PSR2_SU_REGION_ET_ENABLE : 0;
   964	
   965			if (intel_dp->psr.req_psr2_sdp_prior_scanline)
   966				val |= EDP_PSR2_SU_SDP_SCANLINE;
   967	
   968			intel_de_write(display, EDP_PSR2_CTL(display, cpu_transcoder),
   969				       val);
   970		}
   971	
   972		if (intel_dp_is_edp(intel_dp))
 > 973			block_dc6_on_vblank_get(&intel_crtc_for_pipe(display, intel_dp->psr.pipe)->base);
   974	
   975		intel_de_rmw(display,
   976			     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
   977			     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
   978	
   979		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
   980			     TRANS_DP2_PANEL_REPLAY_ENABLE);
   981	}
   982	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
