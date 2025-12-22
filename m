Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E837CD6E1A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 19:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC9310E50E;
	Mon, 22 Dec 2025 18:14:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IMvc5Vdv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D369910E170;
 Mon, 22 Dec 2025 18:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766427265; x=1797963265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/z6bMJAhnDZ7Jwf7gu8Mzd21c90+RH7hEYafuXpm+CQ=;
 b=IMvc5Vdvo8S+yqEvx6n/htpB7DM9qIVD+9VdzvlBfMs9M+bSBhWJfmcH
 TyslM6jCFoL1fwdOKMuchSE8cqFHVn0AzTHn+gSvGgArnSfDBuWxNDn1I
 kRS8JJp85PsbcH5AweGYlHWQUH+9tjmyFFq6Yau3bt425sx61Y1KC7xy2
 2n3kdiRlwKzxJJIZUZYViMjYARkEZiOVDtQHOvJpHmHkcaSNhOs0sqtFO
 +NG3ploVWSd9Dm0E58Aygp7eDKqj09YQ+l79LVoZHkU/Og3QWy+BGg7kR
 RL8tNFsiqQy5OFRljoGxdPErua6CiC5i3OUGsPHxLzpL9Jx3VFwtI2v7e A==;
X-CSE-ConnectionGUID: Lf9wKcvATTS+LamvquacKw==
X-CSE-MsgGUID: qHt49/x5R/KBkmHt2dG1Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="70862209"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="70862209"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 10:14:25 -0800
X-CSE-ConnectionGUID: RNSgasoESpmOZGoOHhFzlQ==
X-CSE-MsgGUID: q6H0/yZnSDG/SZwNhHXiRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="223066977"
Received: from igk-lkp-server01.igk.intel.com (HELO 8a0c053bdd2a)
 ([10.211.93.152])
 by fmviesa002.fm.intel.com with ESMTP; 22 Dec 2025 10:14:23 -0800
Received: from kbuild by 8a0c053bdd2a with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vXkQG-000000005Zc-43bs;
 Mon, 22 Dec 2025 18:14:20 +0000
Date: Mon, 22 Dec 2025 19:14:08 +0100
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev, intel-gfx@lists.freedesktop.org
Subject: Re: [i915-rt v2 06/16] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Message-ID: <202512221945.2ncUer0c-lkp@intel.com>
References: <20251216092226.1777909-24-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251216092226.1777909-24-dev@lankhorst.se>
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

Hi Maarten,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-i915/for-linux-next]
[also build test ERROR on drm-i915/for-linux-next-fixes drm-xe/drm-xe-next drm-tip/drm-tip next-20251219]
[cannot apply to linus/master v6.16-rc1]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-i915-display-Fix-intel_lpe_audio_irq_handler-for-PREEMPT-RT/20251216-212722
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20251216092226.1777909-24-dev%40lankhorst.se
patch subject: [i915-rt v2 06/16] drm/i915/display: Remove locking from intel_vblank_evade critical section
config: x86_64-rhel-9.4-ltp (https://download.01.org/0day-ci/archive/20251222/202512221945.2ncUer0c-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251222/202512221945.2ncUer0c-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512221945.2ncUer0c-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_vblank.c:245:12: error: static declaration of '__intel_get_crtc_scanline' follows non-static declaration
     245 | static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
         |            ^~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/intel_vblank.c:19:
   drivers/gpu/drm/i915/display/intel_vblank.h:41:5: note: previous declaration of '__intel_get_crtc_scanline' with type 'int(struct intel_crtc *)'
      41 | int __intel_get_crtc_scanline(struct intel_crtc *crtc);
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c: In function 'scanline_in_safe_range':
   drivers/gpu/drm/i915/display/intel_vblank.c:716:17: error: implicit declaration of function 'intel_vblank_section_enter_irqf'; did you mean 'intel_vblank_section_enter'? [-Wimplicit-function-declaration]
     716 |                 intel_vblank_section_enter_irqf(display, &irqflags);
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                 intel_vblank_section_enter
>> drivers/gpu/drm/i915/display/intel_vblank.c:716:49: error: 'display' undeclared (first use in this function)
     716 |                 intel_vblank_section_enter_irqf(display, &irqflags);
         |                                                 ^~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:716:49: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/gpu/drm/i915/display/intel_vblank.c:718:9: error: 'position' undeclared (first use in this function)
     718 |         position = __intel_get_crtc_scanline(crtc);
         |         ^~~~~~~~
>> drivers/gpu/drm/i915/display/intel_vblank.c:718:46: error: 'crtc' undeclared (first use in this function)
     718 |         position = __intel_get_crtc_scanline(crtc);
         |                                              ^~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:721:17: error: implicit declaration of function 'intel_vblank_section_exit_irqf'; did you mean 'intel_vblank_section_exit'? [-Wimplicit-function-declaration]
     721 |                 intel_vblank_section_exit_irqf(display, irqflags);
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                 intel_vblank_section_exit


vim +/__intel_get_crtc_scanline +245 drivers/gpu/drm/i915/display/intel_vblank.c

5b7f65acf1b083 Ville Syrjälä 2024-05-28  240  
62fe4515cf2027 Jani Nikula   2023-01-16  241  /*
62fe4515cf2027 Jani Nikula   2023-01-16  242   * intel_de_read_fw(), only for fast reads of display block, no need for
62fe4515cf2027 Jani Nikula   2023-01-16  243   * forcewake etc.
62fe4515cf2027 Jani Nikula   2023-01-16  244   */
62fe4515cf2027 Jani Nikula   2023-01-16 @245  static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
62fe4515cf2027 Jani Nikula   2023-01-16  246  {
aa451ae76fda24 Jani Nikula   2024-08-22  247  	struct intel_display *display = to_intel_display(crtc);
0097ecd06d9dcf Ville Syrjälä 2024-04-08  248  	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
0097ecd06d9dcf Ville Syrjälä 2024-04-08  249  	const struct drm_display_mode *mode = &vblank->hwmode;
62fe4515cf2027 Jani Nikula   2023-01-16  250  	enum pipe pipe = crtc->pipe;
62fe4515cf2027 Jani Nikula   2023-01-16  251  	int position, vtotal;
62fe4515cf2027 Jani Nikula   2023-01-16  252  
62fe4515cf2027 Jani Nikula   2023-01-16  253  	if (!crtc->active)
62fe4515cf2027 Jani Nikula   2023-01-16  254  		return 0;
62fe4515cf2027 Jani Nikula   2023-01-16  255  
62fe4515cf2027 Jani Nikula   2023-01-16  256  	if (crtc->mode_flags & I915_MODE_FLAG_GET_SCANLINE_FROM_TIMESTAMP)
62fe4515cf2027 Jani Nikula   2023-01-16  257  		return __intel_get_crtc_scanline_from_timestamp(crtc);
62fe4515cf2027 Jani Nikula   2023-01-16  258  
9677dd01ca1ada Ville Syrjälä 2024-05-28  259  	vtotal = intel_mode_vtotal(mode);
62fe4515cf2027 Jani Nikula   2023-01-16  260  
aa451ae76fda24 Jani Nikula   2024-08-22  261  	position = intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
62fe4515cf2027 Jani Nikula   2023-01-16  262  
62fe4515cf2027 Jani Nikula   2023-01-16  263  	/*
62fe4515cf2027 Jani Nikula   2023-01-16  264  	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
62fe4515cf2027 Jani Nikula   2023-01-16  265  	 * read it just before the start of vblank.  So try it again
62fe4515cf2027 Jani Nikula   2023-01-16  266  	 * so we don't accidentally end up spanning a vblank frame
62fe4515cf2027 Jani Nikula   2023-01-16  267  	 * increment, causing the pipe_update_end() code to squak at us.
62fe4515cf2027 Jani Nikula   2023-01-16  268  	 *
62fe4515cf2027 Jani Nikula   2023-01-16  269  	 * The nature of this problem means we can't simply check the ISR
62fe4515cf2027 Jani Nikula   2023-01-16  270  	 * bit and return the vblank start value; nor can we use the scanline
62fe4515cf2027 Jani Nikula   2023-01-16  271  	 * debug register in the transcoder as it appears to have the same
62fe4515cf2027 Jani Nikula   2023-01-16  272  	 * problem.  We may need to extend this to include other platforms,
62fe4515cf2027 Jani Nikula   2023-01-16  273  	 * but so far testing only shows the problem on HSW.
62fe4515cf2027 Jani Nikula   2023-01-16  274  	 */
aa451ae76fda24 Jani Nikula   2024-08-22  275  	if (HAS_DDI(display) && !position) {
62fe4515cf2027 Jani Nikula   2023-01-16  276  		int i, temp;
62fe4515cf2027 Jani Nikula   2023-01-16  277  
62fe4515cf2027 Jani Nikula   2023-01-16  278  		for (i = 0; i < 100; i++) {
62fe4515cf2027 Jani Nikula   2023-01-16  279  			udelay(1);
aa451ae76fda24 Jani Nikula   2024-08-22  280  			temp = intel_de_read_fw(display,
aa451ae76fda24 Jani Nikula   2024-08-22  281  						PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
62fe4515cf2027 Jani Nikula   2023-01-16  282  			if (temp != position) {
62fe4515cf2027 Jani Nikula   2023-01-16  283  				position = temp;
62fe4515cf2027 Jani Nikula   2023-01-16  284  				break;
62fe4515cf2027 Jani Nikula   2023-01-16  285  			}
62fe4515cf2027 Jani Nikula   2023-01-16  286  		}
62fe4515cf2027 Jani Nikula   2023-01-16  287  	}
62fe4515cf2027 Jani Nikula   2023-01-16  288  
62fe4515cf2027 Jani Nikula   2023-01-16  289  	/*
62fe4515cf2027 Jani Nikula   2023-01-16  290  	 * See update_scanline_offset() for the details on the
62fe4515cf2027 Jani Nikula   2023-01-16  291  	 * scanline_offset adjustment.
62fe4515cf2027 Jani Nikula   2023-01-16  292  	 */
5316dd0d617bb9 Ville Syrjälä 2024-05-28  293  	return (position + vtotal + crtc->scanline_offset) % vtotal;
62fe4515cf2027 Jani Nikula   2023-01-16  294  }
62fe4515cf2027 Jani Nikula   2023-01-16  295  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
