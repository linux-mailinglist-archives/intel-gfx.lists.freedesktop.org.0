Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D390BCC14F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 10:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99C510E338;
	Fri, 10 Oct 2025 08:12:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMaZbBjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736C710E338
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760083929; x=1791619929;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wEfkIqJZzdauB4CukX1UapDQQ8G3GPgnn26au9PmCjs=;
 b=DMaZbBjyCTPPUZCzgnpoTXdEdKoKYmypB2C3NQaeO+rjDZyLq9kTBBik
 NINcOmj8RKdrkq5/MtOsvGi/dH9r4Ty+WSq06oro7V+iPNLWS0dGCHt3U
 8xbzVlNZYquYkBTCU+Ts6LKrRtY8c+4zsxdNI6HHZdNHzb45vg2w21fnW
 68GfLvtkxF7kfg6i5/BHo6liD1GFnBcVA+HVwW7LgTQMk/kHIOUr2G5n+
 JDYRe4khFWAplRTc18n3GypnVmyRNwZBkp/7A5fzSOTM/df4LBj00Wlvy
 sSrlsYvpTedw0pwR56+m8r6GbbdSoKjMntXNf1d9IOz7fTfLeRhfOqnwQ A==;
X-CSE-ConnectionGUID: muaPKs7dSZeUHkkgja/1sQ==
X-CSE-MsgGUID: +hmsAQtYSfyU8McHExZhuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="64924248"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="64924248"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 01:12:09 -0700
X-CSE-ConnectionGUID: 4zmRtJ/vTjmFcrZirQMs/Q==
X-CSE-MsgGUID: Q71nVsQRSXWck0LBrBnyvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211880151"
Received: from lkp-server01.sh.intel.com (HELO 6a630e8620ab) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 10 Oct 2025 01:12:07 -0700
Received: from kbuild by 6a630e8620ab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v78EP-0002SR-14;
 Fri, 10 Oct 2025 08:12:05 +0000
Date: Fri, 10 Oct 2025 16:11:33 +0800
From: kernel test robot <lkp@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, vinod.govindapillai@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 4/7] drm/i915/wm: convert x/y-tiling bools to an enum
Message-ID: <202510101543.qQD4XNoc-lkp@intel.com>
References: <20251007075729.468669-5-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251007075729.468669-5-luciano.coelho@intel.com>
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

Hi Luca,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-intel/for-linux-next-fixes drm-tip/drm-tip linus/master v6.17 next-20251009]
[cannot apply to drm-i915/for-linux-next-fixes]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Luca-Coelho/drm-i915-wm-clarify-watermark-ops-with-comments/20251010-123245
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20251007075729.468669-5-luciano.coelho%40intel.com
patch subject: [PATCH v2 4/7] drm/i915/wm: convert x/y-tiling bools to an enum
config: arm-randconfig-002-20251010 (https://download.01.org/0day-ci/archive/20251010/202510101543.qQD4XNoc-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 13.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251010/202510101543.qQD4XNoc-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510101543.qQD4XNoc-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/skl_watermark.c: In function 'skl_wm_latency':
>> drivers/gpu/drm/i915/display/skl_watermark.c:629:33: error: 'WM_TILING_X_TILED' undeclared (first use in this function)
     629 |             wp && wp->tiling == WM_TILING_X_TILED)
         |                                 ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/skl_watermark.c:629:33: note: each undeclared identifier is reported only once for each function it appears in
   drivers/gpu/drm/i915/display/skl_watermark.c: In function 'skl_compute_wm_params':
   drivers/gpu/drm/i915/display/skl_watermark.c:1673:30: error: 'WM_TILING_X_TILED' undeclared (first use in this function)
    1673 |                 wp->tiling = WM_TILING_X_TILED;
         |                              ^~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/skl_watermark.c:1716:27: error: 'WM_TILING_Y_FAMILY' undeclared (first use in this function); did you mean 'WM_TILING_Y_Yf_4'?
    1716 |         if (wp->tiling == WM_TILING_Y_FAMILY) {
         |                           ^~~~~~~~~~~~~~~~~~
         |                           WM_TILING_Y_Yf_4
   drivers/gpu/drm/i915/display/skl_watermark.c: In function 'skl_compute_plane_wm':
   drivers/gpu/drm/i915/display/skl_watermark.c:1820:27: error: 'WM_TILING_Y_FAMILY' undeclared (first use in this function); did you mean 'WM_TILING_Y_Yf_4'?
    1820 |         if (wp->tiling == WM_TILING_Y_FAMILY) {
         |                           ^~~~~~~~~~~~~~~~~~
         |                           WM_TILING_Y_Yf_4
   drivers/gpu/drm/i915/display/skl_watermark.c: In function 'skl_compute_transition_wm':
   drivers/gpu/drm/i915/display/skl_watermark.c:2018:27: error: 'WM_TILING_Y_FAMILY' undeclared (first use in this function); did you mean 'WM_TILING_Y_Yf_4'?
    2018 |         if (wp->tiling == WM_TILING_Y_FAMILY) {
         |                           ^~~~~~~~~~~~~~~~~~
         |                           WM_TILING_Y_Yf_4


vim +/WM_TILING_X_TILED +629 drivers/gpu/drm/i915/display/skl_watermark.c

   597	
   598	static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
   599					 int width, const struct drm_format_info *format,
   600					 u64 modifier, unsigned int rotation,
   601					 u32 plane_pixel_rate, struct skl_wm_params *wp,
   602					 int color_plane, unsigned int pan_x);
   603	
   604	static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
   605					 struct intel_plane *plane,
   606					 int level,
   607					 unsigned int latency,
   608					 const struct skl_wm_params *wp,
   609					 const struct skl_wm_level *result_prev,
   610					 struct skl_wm_level *result /* out */);
   611	
   612	static unsigned int skl_wm_latency(struct intel_display *display, int level,
   613					   const struct skl_wm_params *wp)
   614	{
   615		unsigned int latency = display->wm.skl_latency[level];
   616	
   617		if (latency == 0)
   618			return 0;
   619	
   620		/*
   621		 * WaIncreaseLatencyIPCEnabled: kbl,cfl
   622		 * Display WA #1141: kbl,cfl
   623		 */
   624		if ((display->platform.kabylake || display->platform.coffeelake ||
   625		     display->platform.cometlake) && skl_watermark_ipc_enabled(display))
   626			latency += 4;
   627	
   628		if (skl_needs_memory_bw_wa(display) &&
 > 629		    wp && wp->tiling == WM_TILING_X_TILED)
   630			latency += 15;
   631	
   632		return latency;
   633	}
   634	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
