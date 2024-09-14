Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B0F978CDD
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2024 04:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB2610E0FA;
	Sat, 14 Sep 2024 02:56:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtSzZzlW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF1C10E0FA
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Sep 2024 02:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726282598; x=1757818598;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wXD9oRrhuMCp9nFMvn5Vfjz+2YQ+0O2pvcPgRgzaNMg=;
 b=jtSzZzlWJs7n8WkMo9BRzpmRKxePRX3Q5laXXJ8I188b+C6idOxTPMIt
 6OieKQMkOvtEQI+yjkq4tRUAPC5RRUK3imajdS2Da/WmC/VTZTer3fPIb
 eamm7kud3VhT63qDJoZAs5iVmTOhN+7551BujEFjmVukjuVqvoE1BM6vv
 a0tTjXh4D2C0dvO2fvhuZ0dVAbJRfEDgsejSMpSR/SSzJX3eLyyl2eT4Y
 GXPS5GijjWwhW7k+j52gvw4rIg3nj/c1Pj2Eq+ipKD8OtBy8j3yFSsH/L
 zWnVmpYJbQlJaHAIATdtt0CBL9r3XodeY67BvtHohSzc5ER6bZ9/+ttPx A==;
X-CSE-ConnectionGUID: rH+qaZSsQKqE9zLtEuqW+Q==
X-CSE-MsgGUID: 6HtaTKc1TxOvaOwWdIRt1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="35770247"
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="35770247"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 19:56:38 -0700
X-CSE-ConnectionGUID: 8tlQ/hqQS8mWPdKAQGfu8Q==
X-CSE-MsgGUID: jHW8XlB9Sui//aTBHhyM8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="91561395"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 13 Sep 2024 19:56:36 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1spIxe-0007He-0j;
 Sat, 14 Sep 2024 02:56:34 +0000
Date: Sat, 14 Sep 2024 10:55:58 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 ville.syrjala@linux.intel.com,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Add block_dc6_needed variable into
 intel_crtc
Message-ID: <202409141049.BsdxC6NQ-lkp@intel.com>
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
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20240914/202409141049.BsdxC6NQ-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240914/202409141049.BsdxC6NQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409141049.BsdxC6NQ-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_psr.c:973:48: error: incompatible pointer types passing 'struct intel_display *' to parameter of type 'struct drm_i915_private *' [-Werror,-Wincompatible-pointer-types]
     973 |                 block_dc6_on_vblank_get(&intel_crtc_for_pipe(display, intel_dp->psr.pipe)->base);
         |                                                              ^~~~~~~
   drivers/gpu/drm/i915/display/intel_crtc.h:46:65: note: passing argument to parameter 'i915' here
      46 | struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
         |                                                                 ^
   1 error generated.


vim +973 drivers/gpu/drm/i915/display/intel_psr.c

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
