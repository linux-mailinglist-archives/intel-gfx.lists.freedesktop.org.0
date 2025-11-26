Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA0BC8A0DA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 14:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 696D510E60D;
	Wed, 26 Nov 2025 13:32:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nEO8235T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A70310E60D;
 Wed, 26 Nov 2025 13:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764163977; x=1795699977;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jjY67Zny3prCyZ4PamPGEIAIUR23KzeKjJHK6SiunZ4=;
 b=nEO8235TGlsVL2g72E0cI7VkUjVAunxi0z4ZNsN4Q1oZ2nT6sK5HyIrT
 fuAXY9k6RQsyFBL+kskgjTi1+lv70mKRVdAHR3/U8r53ydetH9ZdIHe94
 E1oHK5doKstbC/ghYLpdPcfUuDejIJWlcKhLAQy5pt8HMOLysP2OlAemT
 p0Tqn2nv1U67xlQYVEzyvlKoIZyyy9Cdtp5u9L8ItWwHIp+txqD7zX3NN
 K3i96w06Q9X9VUFpLaL12xPkV5/ZnUOgLMCauFC5vdw7vj09grr6z9EUy
 qip5fsAqLwNeVLDYMA2dS0zvzI2w6YSbgFZfJO3Bs6h2O0uezPrExee1k w==;
X-CSE-ConnectionGUID: NB9siRyZT46ZArRY+sk5Cw==
X-CSE-MsgGUID: XYybmTDHTnGHlVCONWkSZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="65201906"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="65201906"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 05:32:57 -0800
X-CSE-ConnectionGUID: TtBH1hKdQ9WYJ3B055b9kw==
X-CSE-MsgGUID: LyqRw8WhSjSMxHPHs68ODg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="193175365"
Received: from lkp-server01.sh.intel.com (HELO 4664bbef4914) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 26 Nov 2025 05:32:55 -0800
Received: from kbuild by 4664bbef4914 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vOFdd-000000002w5-3P1Z;
 Wed, 26 Nov 2025 13:32:53 +0000
Date: Wed, 26 Nov 2025 21:32:12 +0800
From: kernel test robot <lkp@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/psr: Add helper for checking if vblank
 evasion is needed by PSR
Message-ID: <202511262156.H5YJpnc5-lkp@intel.com>
References: <20251125063253.328023-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251125063253.328023-2-jouni.hogander@intel.com>
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20251124]
[cannot apply to drm-intel/for-linux-next drm-intel/for-linux-next-fixes drm-tip/drm-tip v6.18-rc7 v6.18-rc6 v6.18-rc5 linus/master v6.18-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jouni-H-gander/drm-i915-psr-Add-helper-for-checking-if-vblank-evasion-is-needed-by-PSR/20251125-143352
base:   next-20251124
patch link:    https://lore.kernel.org/r/20251125063253.328023-2-jouni.hogander%40intel.com
patch subject: [PATCH 1/4] drm/i915/psr: Add helper for checking if vblank evasion is needed by PSR
config: x86_64-randconfig-003-20251126 (https://download.01.org/0day-ci/archive/20251126/202511262156.H5YJpnc5-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251126/202511262156.H5YJpnc5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511262156.H5YJpnc5-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_psr.c:4550:2: warning: variable 'intel_dp' is used uninitialized whenever 'for' loop exits because its condition is false [-Wsometimes-uninitialized]
    4550 |         for_each_intel_encoder_mask_with_psr(display->drm, encoder,
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    4551 |                                              crtc_state->uapi.encoder_mask) {
         |                                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display.h:271:2: note: expanded from macro 'for_each_intel_encoder_mask_with_psr'
     271 |         list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:783:7: note: expanded from macro 'list_for_each_entry'
     783 |              !list_entry_is_head(pos, head, member);                    \
         |              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:4556:9: note: uninitialized use occurs here
    4556 |         return intel_dp->psr.psr2_sel_fetch_enabled;
         |                ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_psr.c:4550:2: note: remove the condition if it is always true
    4550 |         for_each_intel_encoder_mask_with_psr(display->drm, encoder,
         |         ^
   drivers/gpu/drm/i915/display/intel_display.h:271:2: note: expanded from macro 'for_each_intel_encoder_mask_with_psr'
     271 |         list_for_each_entry((intel_encoder), &(dev)->mode_config.encoder_list, base.head) \
         |         ^
   include/linux/list.h:783:7: note: expanded from macro 'list_for_each_entry'
     783 |              !list_entry_is_head(pos, head, member);                    \
         |              ^
   drivers/gpu/drm/i915/display/intel_psr.c:4548:27: note: initialize the variable 'intel_dp' to silence this warning
    4548 |         struct intel_dp *intel_dp;
         |                                  ^
         |                                   = NULL
   1 warning generated.


vim +4550 drivers/gpu/drm/i915/display/intel_psr.c

  4543	
  4544	bool intel_psr_needs_evasion(const struct intel_crtc_state *crtc_state)
  4545	{
  4546		struct intel_display *display = to_intel_display(crtc_state);
  4547		struct intel_encoder *encoder;
  4548		struct intel_dp *intel_dp;
  4549	
> 4550		for_each_intel_encoder_mask_with_psr(display->drm, encoder,

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
