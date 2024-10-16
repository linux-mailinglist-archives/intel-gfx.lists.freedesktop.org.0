Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C879A07F2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 13:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8238010E0A3;
	Wed, 16 Oct 2024 11:01:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bt4WkZXC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8D110E0A3;
 Wed, 16 Oct 2024 11:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729076471; x=1760612471;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HErysom2TPfp6EvU5Euhk2T5eneE+akrFu6+0LDIfxI=;
 b=bt4WkZXCWIgyQKV8z5YrnTWC1HEtUu0jyNHNfHFAIsjn9l2cKVefw3ac
 SmLKts0FgBZ9sr8KLkJ+ATFlHZS0x8cvNs6IDxz0dRStxm7jrYN1LWjxJ
 n4jdXrkNoi1NYV/J+mxfFw9e/ykSO0iltFdPUd3QbrhtC/h4IxIxw7mfJ
 INV/ds14QIxoe6p3EtJONm1LTWRCVe3mNDZ7euum0UQ1OCi+IBkKAOIVc
 1NJbVQfySAZ+MzQ5dKfm0K7F78DBpcOpt5vjo1l3Rk6QfRiZEDdANJkEE
 BsT7RweYiUqdrBeDM9B1GZsV4/MWM+7bjGJb7xS/YJ2aJGKKLLWMg9PWl g==;
X-CSE-ConnectionGUID: PraJDOW8R8uPX4WqtZA4tQ==
X-CSE-MsgGUID: 4CeoGMxlTBmAijcVDz5RNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45989981"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45989981"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 04:01:10 -0700
X-CSE-ConnectionGUID: P0VDUp4FRJaEQ6Bko4rvpA==
X-CSE-MsgGUID: TvE+nFHtTw2lV6naiv7GuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="78253919"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 16 Oct 2024 04:01:08 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t11m6-000KoJ-1G;
 Wed, 16 Oct 2024 11:01:06 +0000
Date: Wed, 16 Oct 2024 19:00:36 +0800
From: kernel test robot <lkp@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/i915/display: Add DSC pixel replication
Message-ID: <202410161836.lQv7K89f-lkp@intel.com>
References: <20241014081000.2844245-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241014081000.2844245-7-ankit.k.nautiyal@intel.com>
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

Hi Ankit,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on next-20241016]
[cannot apply to drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.12-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Ankit-Nautiyal/drm-i915-display-Prepare-for-dsc-3-stream-splitter/20241014-161007
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20241014081000.2844245-7-ankit.k.nautiyal%40intel.com
patch subject: [PATCH 6/9] drm/i915/display: Add DSC pixel replication
config: x86_64-randconfig-012-20241015 (https://download.01.org/0day-ci/archive/20241016/202410161836.lQv7K89f-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241016/202410161836.lQv7K89f-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410161836.lQv7K89f-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_vdsc.c:1022:6: error: variable 'dss_ctl3' is uninitialized when used here [-Werror,-Wuninitialized]
    1022 |         if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
         |             ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_vdsc.c:991:34: note: initialize the variable 'dss_ctl3' to silence this warning
     991 |         u32 dss_ctl1, dss_ctl2, dss_ctl3;
         |                                         ^
         |                                          = 0
   1 error generated.


vim +/dss_ctl3 +1022 drivers/gpu/drm/i915/display/intel_vdsc.c

   983	
   984	void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
   985	{
   986		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   987		struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
   988		enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
   989		enum intel_display_power_domain power_domain;
   990		intel_wakeref_t wakeref;
   991		u32 dss_ctl1, dss_ctl2, dss_ctl3;
   992	
   993		if (!intel_dsc_source_support(crtc_state))
   994			return;
   995	
   996		power_domain = intel_dsc_power_domain(crtc, cpu_transcoder);
   997	
   998		wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
   999		if (!wakeref)
  1000			return;
  1001	
  1002		dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
  1003		dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
  1004	
  1005		if (IS_BATTLEMAGE(dev_priv))
  1006			dss_ctl3 = intel_de_read(dev_priv, BMG_PIPE_DSS_CTL3(crtc_state->cpu_transcoder));
  1007	
  1008		crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
  1009		if (!crtc_state->dsc.compression_enable)
  1010			goto out;
  1011	
  1012		if (dss_ctl1 & JOINER_ENABLE) {
  1013			if (dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
  1014				crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_3_STREAMS;
  1015	
  1016			else if (dss_ctl2 & VDSC1_ENABLE)
  1017				crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
  1018		} else {
  1019			crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_DISABLED;
  1020		}
  1021	
> 1022		if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
  1023			crtc_state->dsc.pixel_replication_count =
  1024				dss_ctl3 & DSC_PIXEL_REPLICATION_MASK;
  1025	
  1026		intel_dsc_get_pps_config(crtc_state);
  1027	out:
  1028		intel_display_power_put(dev_priv, power_domain, wakeref);
  1029	}
  1030	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
