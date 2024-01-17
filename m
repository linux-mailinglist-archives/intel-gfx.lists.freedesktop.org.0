Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C260D830C3F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 18:53:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050EC10E0BF;
	Wed, 17 Jan 2024 17:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D4610E0BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 17:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705513992; x=1737049992;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=c5X3LPtq0bGW5W0TcWNNKF7Ck6QvbA6gHJAn8ACGa2U=;
 b=FoHwp3R8WhKuxP7NguTFzQM8hR9S3gEBklidN823tllPxSvJq3pV8mQe
 QyHFLwiztAOiNtJaOc7bzkEcX7qe590E7flD/kgvySX1sX8/e+2Oe+YiF
 nyqkDkDAXRr5aOBjjzKAgXYUaamvk6tGigtDHk0Iezmx0X9vb2S03lO67
 qOhn+lCUa/oGfaH/aG2efNcDUz3YUkBP9B/+sFiEHdNhWRCwIzN4yzJAP
 LKOTOX+JyC6AVONrmEHxR41Boa4pK10xig9BkGD0BCF1U3fjpvI1gSkIk
 xEYvw7fGH/X5dg1lTQLef57ykXv+AvX0q0gNQnftlKoRko7VoFhmCyxSq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="6993941"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="6993941"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 09:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="927879938"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="927879938"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2024 09:53:10 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rQA68-0002DG-24;
 Wed, 17 Jan 2024 17:53:08 +0000
Date: Thu, 18 Jan 2024 01:53:05 +0800
From: kernel test robot <lkp@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: move interrupt save/restore into vblank
 section helpers
Message-ID: <202401180149.BsppQD72-lkp@intel.com>
References: <20240117094613.1401573-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117094613.1401573-1-luciano.coelho@intel.com>
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Luca,

kernel test robot noticed the following build errors:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip linus/master next-20240117]
[cannot apply to drm-intel/for-linux-next-fixes v6.7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Luca-Coelho/drm-i915-move-interrupt-save-restore-into-vblank-section-helpers/20240117-174910
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
patch link:    https://lore.kernel.org/r/20240117094613.1401573-1-luciano.coelho%40intel.com
patch subject: [PATCH] drm/i915: move interrupt save/restore into vblank section helpers
config: i386-buildonly-randconfig-004-20240117 (https://download.01.org/0day-ci/archive/20240118/202401180149.BsppQD72-lkp@intel.com/config)
compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240118/202401180149.BsppQD72-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401180149.BsppQD72-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/bitops.h:7:0,
                    from include/linux/kernel.h:23,
                    from arch/x86/include/asm/percpu.h:27,
                    from arch/x86/include/asm/current.h:10,
                    from include/linux/mutex.h:14,
                    from include/linux/notifier.h:14,
                    from include/linux/pm_qos.h:16,
                    from drivers/gpu/drm/i915/i915_drv.h:35,
                    from drivers/gpu/drm/i915/display/intel_vblank.c:6:
   drivers/gpu/drm/i915/display/intel_vblank.c: In function 'intel_vblank_section_enter':
>> drivers/gpu/drm/i915/display/intel_vblank.c:282:17: error: 'irqflags' undeclared (first use in this function); did you mean 'mf_flags'?
     local_irq_save(irqflags);
                    ^
   include/linux/typecheck.h:11:9: note: in definition of macro 'typecheck'
     typeof(x) __dummy2; \
            ^
   include/linux/irqflags.h:245:36: note: in expansion of macro 'raw_local_irq_save'
    #define local_irq_save(flags) do { raw_local_irq_save(flags); } while (0)
                                       ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:282:2: note: in expansion of macro 'local_irq_save'
     local_irq_save(irqflags);
     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:282:17: note: each undeclared identifier is reported only once for each function it appears in
     local_irq_save(irqflags);
                    ^
   include/linux/typecheck.h:11:9: note: in definition of macro 'typecheck'
     typeof(x) __dummy2; \
            ^
   include/linux/irqflags.h:245:36: note: in expansion of macro 'raw_local_irq_save'
    #define local_irq_save(flags) do { raw_local_irq_save(flags); } while (0)
                                       ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:282:2: note: in expansion of macro 'local_irq_save'
     local_irq_save(irqflags);
     ^~~~~~~~~~~~~~
   include/linux/typecheck.h:12:18: warning: comparison of distinct pointer types lacks a cast
     (void)(&__dummy == &__dummy2); \
                     ^
   include/linux/irqflags.h:178:3: note: in expansion of macro 'typecheck'
      typecheck(unsigned long, flags); \
      ^~~~~~~~~
   include/linux/irqflags.h:245:36: note: in expansion of macro 'raw_local_irq_save'
    #define local_irq_save(flags) do { raw_local_irq_save(flags); } while (0)
                                       ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:282:2: note: in expansion of macro 'local_irq_save'
     local_irq_save(irqflags);
     ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c: In function 'intel_vblank_section_exit':
   drivers/gpu/drm/i915/display/intel_vblank.c:294:20: error: 'irqflags' undeclared (first use in this function); did you mean 'mf_flags'?
     local_irq_restore(irqflags);
                       ^
   include/linux/typecheck.h:11:9: note: in definition of macro 'typecheck'
     typeof(x) __dummy2; \
            ^
   include/linux/irqflags.h:246:39: note: in expansion of macro 'raw_local_irq_restore'
    #define local_irq_restore(flags) do { raw_local_irq_restore(flags); } while (0)
                                          ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:294:2: note: in expansion of macro 'local_irq_restore'
     local_irq_restore(irqflags);
     ^~~~~~~~~~~~~~~~~
   include/linux/typecheck.h:12:18: warning: comparison of distinct pointer types lacks a cast
     (void)(&__dummy == &__dummy2); \
                     ^
   include/linux/irqflags.h:183:3: note: in expansion of macro 'typecheck'
      typecheck(unsigned long, flags); \
      ^~~~~~~~~
   include/linux/irqflags.h:246:39: note: in expansion of macro 'raw_local_irq_restore'
    #define local_irq_restore(flags) do { raw_local_irq_restore(flags); } while (0)
                                          ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c:294:2: note: in expansion of macro 'local_irq_restore'
     local_irq_restore(irqflags);
     ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c: In function 'i915_get_crtc_scanoutpos':
>> drivers/gpu/drm/i915/display/intel_vblank.c:309:16: warning: unused variable 'irqflags' [-Wunused-variable]
     unsigned long irqflags;
                   ^~~~~~~~
   drivers/gpu/drm/i915/display/intel_vblank.c: In function 'intel_get_crtc_scanline':
   drivers/gpu/drm/i915/display/intel_vblank.c:441:16: warning: unused variable 'irqflags' [-Wunused-variable]
     unsigned long irqflags;
                   ^~~~~~~~


vim +282 drivers/gpu/drm/i915/display/intel_vblank.c

   267	
   268	/*
   269	 * These functions help enter and exit vblank critical sections.  When
   270	 * entering, they disable interrupts and, for i915, acquire the
   271	 * uncore's spinlock.  Conversely, when exiting, they release the
   272	 * spinlock and restore the interrupts state.
   273	 *
   274	 * This lock in i915 is needed because some old platforms (at least
   275	 * IVB and possibly HSW as well), which are not supported in Xe, need
   276	 * all register accesses to the same cacheline to be serialized,
   277	 * otherwise they may hang.
   278	 */
   279	static void intel_vblank_section_enter(struct drm_i915_private *i915)
   280		__acquires(i915->uncore.lock)
   281	{
 > 282		local_irq_save(irqflags);
   283	#ifdef I915
   284		spin_lock(&i915->uncore.lock);
   285	#endif
   286	}
   287	
   288	static void intel_vblank_section_exit(struct drm_i915_private *i915)
   289		__releases(i915->uncore.lock)
   290	{
   291	#ifdef I915
   292		spin_unlock(&i915->uncore.lock);
   293	#endif
   294		local_irq_restore(irqflags);
   295	}
   296	
   297	static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
   298					     bool in_vblank_irq,
   299					     int *vpos, int *hpos,
   300					     ktime_t *stime, ktime_t *etime,
   301					     const struct drm_display_mode *mode)
   302	{
   303		struct drm_device *dev = _crtc->dev;
   304		struct drm_i915_private *dev_priv = to_i915(dev);
   305		struct intel_crtc *crtc = to_intel_crtc(_crtc);
   306		enum pipe pipe = crtc->pipe;
   307		int position;
   308		int vbl_start, vbl_end, hsync_start, htotal, vtotal;
 > 309		unsigned long irqflags;
   310		bool use_scanline_counter = DISPLAY_VER(dev_priv) >= 5 ||
   311			IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) == 2 ||
   312			crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
   313	
   314		if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
   315			drm_dbg(&dev_priv->drm,
   316				"trying to get scanoutpos for disabled pipe %c\n",
   317				pipe_name(pipe));
   318			return false;
   319		}
   320	
   321		htotal = mode->crtc_htotal;
   322		hsync_start = mode->crtc_hsync_start;
   323		vtotal = mode->crtc_vtotal;
   324		vbl_start = mode->crtc_vblank_start;
   325		vbl_end = mode->crtc_vblank_end;
   326	
   327		if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
   328			vbl_start = DIV_ROUND_UP(vbl_start, 2);
   329			vbl_end /= 2;
   330			vtotal /= 2;
   331		}
   332	
   333		/*
   334		 * Enter vblank critical section, as we will do multiple
   335		 * timing critical raw register reads, potentially with
   336		 * preemption disabled, so the following code must not block.
   337		 */
   338		intel_vblank_section_enter(dev_priv);
   339	
   340		/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
   341	
   342		/* Get optional system timestamp before query. */
   343		if (stime)
   344			*stime = ktime_get();
   345	
   346		if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
   347			int scanlines = intel_crtc_scanlines_since_frame_timestamp(crtc);
   348	
   349			position = __intel_get_crtc_scanline(crtc);
   350	
   351			/*
   352			 * Already exiting vblank? If so, shift our position
   353			 * so it looks like we're already apporaching the full
   354			 * vblank end. This should make the generated timestamp
   355			 * more or less match when the active portion will start.
   356			 */
   357			if (position >= vbl_start && scanlines < position)
   358				position = min(crtc->vmax_vblank_start + scanlines, vtotal - 1);
   359		} else if (use_scanline_counter) {
   360			/* No obvious pixelcount register. Only query vertical
   361			 * scanout position from Display scan line register.
   362			 */
   363			position = __intel_get_crtc_scanline(crtc);
   364		} else {
   365			/*
   366			 * Have access to pixelcount since start of frame.
   367			 * We can split this into vertical and horizontal
   368			 * scanout position.
   369			 */
   370			position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
   371	
   372			/* convert to pixel counts */
   373			vbl_start *= htotal;
   374			vbl_end *= htotal;
   375			vtotal *= htotal;
   376	
   377			/*
   378			 * In interlaced modes, the pixel counter counts all pixels,
   379			 * so one field will have htotal more pixels. In order to avoid
   380			 * the reported position from jumping backwards when the pixel
   381			 * counter is beyond the length of the shorter field, just
   382			 * clamp the position the length of the shorter field. This
   383			 * matches how the scanline counter based position works since
   384			 * the scanline counter doesn't count the two half lines.
   385			 */
   386			position = min(position, vtotal - 1);
   387	
   388			/*
   389			 * Start of vblank interrupt is triggered at start of hsync,
   390			 * just prior to the first active line of vblank. However we
   391			 * consider lines to start at the leading edge of horizontal
   392			 * active. So, should we get here before we've crossed into
   393			 * the horizontal active of the first line in vblank, we would
   394			 * not set the DRM_SCANOUTPOS_INVBL flag. In order to fix that,
   395			 * always add htotal-hsync_start to the current pixel position.
   396			 */
   397			position = (position + htotal - hsync_start) % vtotal;
   398		}
   399	
   400		/* Get optional system timestamp after query. */
   401		if (etime)
   402			*etime = ktime_get();
   403	
   404		/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
   405	
   406		intel_vblank_section_exit(dev_priv);
   407	
   408		/*
   409		 * While in vblank, position will be negative
   410		 * counting up towards 0 at vbl_end. And outside
   411		 * vblank, position will be positive counting
   412		 * up since vbl_end.
   413		 */
   414		if (position >= vbl_start)
   415			position -= vbl_end;
   416		else
   417			position += vtotal - vbl_end;
   418	
   419		if (use_scanline_counter) {
   420			*vpos = position;
   421			*hpos = 0;
   422		} else {
   423			*vpos = position / htotal;
   424			*hpos = position - (*vpos * htotal);
   425		}
   426	
   427		return true;
   428	}
   429	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
