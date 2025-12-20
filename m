Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD37CD3509
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Dec 2025 19:23:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52E810E10E;
	Sat, 20 Dec 2025 18:23:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OElOq7r4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2496C10E10E;
 Sat, 20 Dec 2025 18:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766255028; x=1797791028;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GB6ljww2JZ9yohyQy7L/bzDn9O5OdI2Qt77A4oy58k0=;
 b=OElOq7r4Ezf9GBGk6tmLK+PMeaRXXiQ9/2JfjcEsC0SaiAdNhQsiKTKk
 0kReGb9xdRt2tiv6mX2oKaqEphdRoDK9FAjCh3o7wO/MGWzwVdM8vOujP
 XWlf715GHyfXL0X4rA9lS4nquJ5mePyG60rtWR3WUSQRbaNlmf6XwUE/k
 CsQK94NtlcNalQey5IgsdC8e3CMIicvSPwmx+sfEafTBZFzXfoFdYfRVK
 VZAq+3/OTvi/j26jSIIf1tE87GOp4EbSwsN6Bzq9MP0pyBcumaPs6BBnq
 ZM1uYoCgp3WnuvyVHKK6tAPQYX6GnSfw4LGb4ruvdbB+ZHUAJqVbAZ8HL g==;
X-CSE-ConnectionGUID: yJBe6TN+T/yHh2Q+9yO5xQ==
X-CSE-MsgGUID: /mJxD8zjSNWL78RrqEdPzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11648"; a="68074693"
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="68074693"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2025 10:23:47 -0800
X-CSE-ConnectionGUID: PWQR1XqZTdeiwIx5KPGlFQ==
X-CSE-MsgGUID: GI9O1NcfT5y+IAxncmhWbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="199054699"
Received: from igk-lkp-server01.igk.intel.com (HELO 8a0c053bdd2a)
 ([10.211.93.152])
 by fmviesa006.fm.intel.com with ESMTP; 20 Dec 2025 10:23:45 -0800
Received: from kbuild by 8a0c053bdd2a with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vX1cF-000000004k0-1Df2;
 Sat, 20 Dec 2025 18:23:43 +0000
Date: Sat, 20 Dec 2025 19:23:14 +0100
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [i915-rt v4 20/20] drm/i915/display: Remove uncore lock from
 vlv_atomic_update_fifo
Message-ID: <202512201922.KJN0PFLf-lkp@intel.com>
References: <20251218163408.97508-21-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218163408.97508-21-dev@lankhorst.se>
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-i915/for-linux-next]
[also build test WARNING on drm-i915/for-linux-next-fixes drm-xe/drm-xe-next drm-tip/drm-tip linus/master v6.19-rc1 next-20251219]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Maarten-Lankhorst/drm-i915-display-Fix-intel_lpe_audio_irq_handler-for-PREEMPT-RT/20251219-044020
base:   https://gitlab.freedesktop.org/drm/i915/kernel.git for-linux-next
patch link:    https://lore.kernel.org/r/20251218163408.97508-21-dev%40lankhorst.se
patch subject: [i915-rt v4 20/20] drm/i915/display: Remove uncore lock from vlv_atomic_update_fifo
config: x86_64-rhel-9.4 (https://download.01.org/0day-ci/archive/20251220/202512201922.KJN0PFLf-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251220/202512201922.KJN0PFLf-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512201922.KJN0PFLf-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                    from drivers/gpu/drm/i915/gt/intel_context_types.h:17,
                    from drivers/gpu/drm/i915/gem/i915_gem_context_types.h:19,
                    from drivers/gpu/drm/i915/i915_drv.h:40,
                    from drivers/gpu/drm/i915/display/i9xx_wm.c:10:
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32_fw':
   drivers/gpu/drm/i915/intel_uncore.h:455:19: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'lower'
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:19: error: 'lower' undeclared (first use in this function); did you mean 'islower'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                   ^~~~~
         |                   islower
   drivers/gpu/drm/i915/intel_uncore.h:455:19: note: each undeclared identifier is reported only once for each function it appears in
   drivers/gpu/drm/i915/intel_uncore.h:455:26: error: 'old_upper' undeclared (first use in this function); did you mean 'si_upper'?
     455 |         u32 upper lower, old_upper, loop = 0;
         |                          ^~~~~~~~~
         |                          si_upper
   drivers/gpu/drm/i915/intel_uncore.h:455:24: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                        ^
   drivers/gpu/drm/i915/intel_uncore.h:455:37: error: 'loop' undeclared (first use in this function)
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                     ^~~~
   drivers/gpu/drm/i915/intel_uncore.h:455:35: warning: left-hand operand of comma expression has no effect [-Wunused-value]
     455 |         u32 upper lower, old_upper, loop = 0;
         |                                   ^
   drivers/gpu/drm/i915/intel_uncore.h:456:9: error: 'upper' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |         ^~~~~
   drivers/gpu/drm/i915/intel_uncore.h:456:38: error: 'uncoree' undeclared (first use in this function); did you mean 'uncore'?
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                      ^~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:456:47: error: 'upper_reg' undeclared (first use in this function)
     456 |         upper = intel_uncore_read_fw(uncoree, upper_reg);
         |                                               ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:459:54: error: 'lower_reg' undeclared (first use in this function)
     459 |                 lower = intel_uncore_read_fw(uncore, lower_reg);
         |                                                      ^~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:425:55: note: in definition of macro 'intel_uncore_read_fw'
     425 | #define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
         |                                                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h: In function 'intel_uncore_read64_2x32':
   drivers/gpu/drm/i915/intel_uncore.h:483:15: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
     483 |         ret = intel_uncore_read64_2x32_fw(uncore, lower_reg, upper_reg);
         |               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/display/i9xx_wm.c:16:
   drivers/gpu/drm/i915/display/intel_de.h: In function 'intel_de_read64_2x32_fw':
   drivers/gpu/drm/i915/display/intel_de.h:70:16: error: too many arguments to function 'intel_uncore_read64_2x32_fw'
      70 |         return intel_uncore_read64_2x32_fw(__to_uncore(display),
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_uncore.h:453:1: note: declared here
     453 | intel_uncore_read64_2x32_fw(struct intel_uncore *uncore)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/i9xx_wm.c: In function 'vlv_atomic_update_fifo':
>> drivers/gpu/drm/i915/display/i9xx_wm.c:1867:30: warning: unused variable 'uncore' [-Wunused-variable]
    1867 |         struct intel_uncore *uncore = &dev_priv->uncore;
         |                              ^~~~~~


vim +/uncore +1867 drivers/gpu/drm/i915/display/i9xx_wm.c

94b49d53acece8 Jani Nikula 2023-02-13  1858  
94b49d53acece8 Jani Nikula 2023-02-13  1859  #define VLV_FIFO(plane, value) \
94b49d53acece8 Jani Nikula 2023-02-13  1860  	(((value) << DSPARB_ ## plane ## _SHIFT_VLV) & DSPARB_ ## plane ## _MASK_VLV)
94b49d53acece8 Jani Nikula 2023-02-13  1861  
94b49d53acece8 Jani Nikula 2023-02-13  1862  static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
94b49d53acece8 Jani Nikula 2023-02-13  1863  				   struct intel_crtc *crtc)
94b49d53acece8 Jani Nikula 2023-02-13  1864  {
d0e7412505dc87 Jani Nikula 2025-04-08  1865  	struct intel_display *display = to_intel_display(crtc);
94b49d53acece8 Jani Nikula 2023-02-13  1866  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
94b49d53acece8 Jani Nikula 2023-02-13 @1867  	struct intel_uncore *uncore = &dev_priv->uncore;
94b49d53acece8 Jani Nikula 2023-02-13  1868  	const struct intel_crtc_state *crtc_state =
94b49d53acece8 Jani Nikula 2023-02-13  1869  		intel_atomic_get_new_crtc_state(state, crtc);
94b49d53acece8 Jani Nikula 2023-02-13  1870  	const struct vlv_fifo_state *fifo_state =
94b49d53acece8 Jani Nikula 2023-02-13  1871  		&crtc_state->wm.vlv.fifo_state;
94b49d53acece8 Jani Nikula 2023-02-13  1872  	int sprite0_start, sprite1_start, fifo_size;
94b49d53acece8 Jani Nikula 2023-02-13  1873  	u32 dsparb, dsparb2, dsparb3;
94b49d53acece8 Jani Nikula 2023-02-13  1874  
94b49d53acece8 Jani Nikula 2023-02-13  1875  	if (!crtc_state->fifo_changed)
94b49d53acece8 Jani Nikula 2023-02-13  1876  		return;
94b49d53acece8 Jani Nikula 2023-02-13  1877  
94b49d53acece8 Jani Nikula 2023-02-13  1878  	sprite0_start = fifo_state->plane[PLANE_PRIMARY];
94b49d53acece8 Jani Nikula 2023-02-13  1879  	sprite1_start = fifo_state->plane[PLANE_SPRITE0] + sprite0_start;
94b49d53acece8 Jani Nikula 2023-02-13  1880  	fifo_size = fifo_state->plane[PLANE_SPRITE1] + sprite1_start;
94b49d53acece8 Jani Nikula 2023-02-13  1881  
d35b913f0e1cb0 Jani Nikula 2025-04-08  1882  	drm_WARN_ON(display->drm, fifo_state->plane[PLANE_CURSOR] != 63);
d35b913f0e1cb0 Jani Nikula 2025-04-08  1883  	drm_WARN_ON(display->drm, fifo_size != 511);
94b49d53acece8 Jani Nikula 2023-02-13  1884  
94b49d53acece8 Jani Nikula 2023-02-13  1885  	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
94b49d53acece8 Jani Nikula 2023-02-13  1886  
94b49d53acece8 Jani Nikula 2023-02-13  1887  	/*
94b49d53acece8 Jani Nikula 2023-02-13  1888  	 * uncore.lock serves a double purpose here. It allows us to
94b49d53acece8 Jani Nikula 2023-02-13  1889  	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
94b49d53acece8 Jani Nikula 2023-02-13  1890  	 * it protects the DSPARB registers from getting clobbered by
94b49d53acece8 Jani Nikula 2023-02-13  1891  	 * parallel updates from multiple pipes.
94b49d53acece8 Jani Nikula 2023-02-13  1892  	 *
94b49d53acece8 Jani Nikula 2023-02-13  1893  	 * intel_pipe_update_start() has already disabled interrupts
94b49d53acece8 Jani Nikula 2023-02-13  1894  	 * for us, so a plain spin_lock() is sufficient here.
94b49d53acece8 Jani Nikula 2023-02-13  1895  	 */
94b49d53acece8 Jani Nikula 2023-02-13  1896  
94b49d53acece8 Jani Nikula 2023-02-13  1897  	switch (crtc->pipe) {
94b49d53acece8 Jani Nikula 2023-02-13  1898  	case PIPE_A:
d0e7412505dc87 Jani Nikula 2025-04-08  1899  		dsparb = intel_de_read_fw(display, DSPARB(display));
d0e7412505dc87 Jani Nikula 2025-04-08  1900  		dsparb2 = intel_de_read_fw(display, DSPARB2);
94b49d53acece8 Jani Nikula 2023-02-13  1901  
94b49d53acece8 Jani Nikula 2023-02-13  1902  		dsparb &= ~(VLV_FIFO(SPRITEA, 0xff) |
94b49d53acece8 Jani Nikula 2023-02-13  1903  			    VLV_FIFO(SPRITEB, 0xff));
94b49d53acece8 Jani Nikula 2023-02-13  1904  		dsparb |= (VLV_FIFO(SPRITEA, sprite0_start) |
94b49d53acece8 Jani Nikula 2023-02-13  1905  			   VLV_FIFO(SPRITEB, sprite1_start));
94b49d53acece8 Jani Nikula 2023-02-13  1906  
94b49d53acece8 Jani Nikula 2023-02-13  1907  		dsparb2 &= ~(VLV_FIFO(SPRITEA_HI, 0x1) |
94b49d53acece8 Jani Nikula 2023-02-13  1908  			     VLV_FIFO(SPRITEB_HI, 0x1));
94b49d53acece8 Jani Nikula 2023-02-13  1909  		dsparb2 |= (VLV_FIFO(SPRITEA_HI, sprite0_start >> 8) |
94b49d53acece8 Jani Nikula 2023-02-13  1910  			   VLV_FIFO(SPRITEB_HI, sprite1_start >> 8));
94b49d53acece8 Jani Nikula 2023-02-13  1911  
d0e7412505dc87 Jani Nikula 2025-04-08  1912  		intel_de_write_fw(display, DSPARB(display), dsparb);
d0e7412505dc87 Jani Nikula 2025-04-08  1913  		intel_de_write_fw(display, DSPARB2, dsparb2);
94b49d53acece8 Jani Nikula 2023-02-13  1914  		break;
94b49d53acece8 Jani Nikula 2023-02-13  1915  	case PIPE_B:
d0e7412505dc87 Jani Nikula 2025-04-08  1916  		dsparb = intel_de_read_fw(display, DSPARB(display));
d0e7412505dc87 Jani Nikula 2025-04-08  1917  		dsparb2 = intel_de_read_fw(display, DSPARB2);
94b49d53acece8 Jani Nikula 2023-02-13  1918  
94b49d53acece8 Jani Nikula 2023-02-13  1919  		dsparb &= ~(VLV_FIFO(SPRITEC, 0xff) |
94b49d53acece8 Jani Nikula 2023-02-13  1920  			    VLV_FIFO(SPRITED, 0xff));
94b49d53acece8 Jani Nikula 2023-02-13  1921  		dsparb |= (VLV_FIFO(SPRITEC, sprite0_start) |
94b49d53acece8 Jani Nikula 2023-02-13  1922  			   VLV_FIFO(SPRITED, sprite1_start));
94b49d53acece8 Jani Nikula 2023-02-13  1923  
94b49d53acece8 Jani Nikula 2023-02-13  1924  		dsparb2 &= ~(VLV_FIFO(SPRITEC_HI, 0xff) |
94b49d53acece8 Jani Nikula 2023-02-13  1925  			     VLV_FIFO(SPRITED_HI, 0xff));
94b49d53acece8 Jani Nikula 2023-02-13  1926  		dsparb2 |= (VLV_FIFO(SPRITEC_HI, sprite0_start >> 8) |
94b49d53acece8 Jani Nikula 2023-02-13  1927  			   VLV_FIFO(SPRITED_HI, sprite1_start >> 8));
94b49d53acece8 Jani Nikula 2023-02-13  1928  
d0e7412505dc87 Jani Nikula 2025-04-08  1929  		intel_de_write_fw(display, DSPARB(display), dsparb);
d0e7412505dc87 Jani Nikula 2025-04-08  1930  		intel_de_write_fw(display, DSPARB2, dsparb2);
94b49d53acece8 Jani Nikula 2023-02-13  1931  		break;
94b49d53acece8 Jani Nikula 2023-02-13  1932  	case PIPE_C:
d0e7412505dc87 Jani Nikula 2025-04-08  1933  		dsparb3 = intel_de_read_fw(display, DSPARB3);
d0e7412505dc87 Jani Nikula 2025-04-08  1934  		dsparb2 = intel_de_read_fw(display, DSPARB2);
94b49d53acece8 Jani Nikula 2023-02-13  1935  
94b49d53acece8 Jani Nikula 2023-02-13  1936  		dsparb3 &= ~(VLV_FIFO(SPRITEE, 0xff) |
94b49d53acece8 Jani Nikula 2023-02-13  1937  			     VLV_FIFO(SPRITEF, 0xff));
94b49d53acece8 Jani Nikula 2023-02-13  1938  		dsparb3 |= (VLV_FIFO(SPRITEE, sprite0_start) |
94b49d53acece8 Jani Nikula 2023-02-13  1939  			    VLV_FIFO(SPRITEF, sprite1_start));
94b49d53acece8 Jani Nikula 2023-02-13  1940  
94b49d53acece8 Jani Nikula 2023-02-13  1941  		dsparb2 &= ~(VLV_FIFO(SPRITEE_HI, 0xff) |
94b49d53acece8 Jani Nikula 2023-02-13  1942  			     VLV_FIFO(SPRITEF_HI, 0xff));
94b49d53acece8 Jani Nikula 2023-02-13  1943  		dsparb2 |= (VLV_FIFO(SPRITEE_HI, sprite0_start >> 8) |
94b49d53acece8 Jani Nikula 2023-02-13  1944  			   VLV_FIFO(SPRITEF_HI, sprite1_start >> 8));
94b49d53acece8 Jani Nikula 2023-02-13  1945  
d0e7412505dc87 Jani Nikula 2025-04-08  1946  		intel_de_write_fw(display, DSPARB3, dsparb3);
d0e7412505dc87 Jani Nikula 2025-04-08  1947  		intel_de_write_fw(display, DSPARB2, dsparb2);
94b49d53acece8 Jani Nikula 2023-02-13  1948  		break;
94b49d53acece8 Jani Nikula 2023-02-13  1949  	default:
94b49d53acece8 Jani Nikula 2023-02-13  1950  		break;
94b49d53acece8 Jani Nikula 2023-02-13  1951  	}
94b49d53acece8 Jani Nikula 2023-02-13  1952  
d0e7412505dc87 Jani Nikula 2025-04-08  1953  	intel_de_read_fw(display, DSPARB(display));
94b49d53acece8 Jani Nikula 2023-02-13  1954  }
94b49d53acece8 Jani Nikula 2023-02-13  1955  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
