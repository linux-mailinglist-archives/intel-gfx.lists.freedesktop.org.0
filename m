Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4C86B4CE2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 17:27:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0BD10E170;
	Fri, 10 Mar 2023 16:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9250F10E170
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678465618; x=1710001618;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uVCtvSYBzN1PFyecC6hmcZo9VG23+X7CFFB1jAiM/wM=;
 b=T6Uf+5sdl8XqjU/nV7uo8I4DmMp1qJYf4Snvwsyv5ZwSVf4q2KbxSGVm
 aXYx+Ui3tsrcO1dH8A14P5nH8UWkVtI0ybNX6MnZcG/8SkT/oa/Ko1Giq
 WCBiNfZoN4GihVp2sxJ5dsinfcunKpQ64npugkstjnaIgNWQOFXGMvLnz
 oiycNt5vmftxzoNxnejO+mhZ8rfJqQjzknETfEcmT8RP2Tfu6n9YkyABr
 C090BIWwrhCdnctWQLDVMBtbAMhIjQ2M4KCUjU57BOnWJPwNMvBoupNbD
 qQn/sBDIY4vg090/K4dP78dJYd7j8+CVD1DJRprSVN5tuzkoPhmrxpsv+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="336785994"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="336785994"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 08:26:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="708053529"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="708053529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 10 Mar 2023 08:26:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Mar 2023 18:26:54 +0200
Date: Fri, 10 Mar 2023 18:26:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZAtaTkXQ2UsLX21w@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
 <ZAkGJw5ZNgvuS01d@intel.com> <ZApXyJsA6WUxrood@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZApXyJsA6WUxrood@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Restore dsparb_lock.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 09, 2023 at 05:03:52PM -0500, Rodrigo Vivi wrote:
> On Thu, Mar 09, 2023 at 12:03:19AM +0200, Ville Syrjälä wrote:
> > On Wed, Mar 08, 2023 at 11:58:58AM -0500, Rodrigo Vivi wrote:
> > > uncore->lock only protects the forcewake domain itself,
> > > not the register accesses.
> > > 
> > > uncore's _fw alternatives are for cases where the domains
> > > are not needed because we are sure that they are already
> > > awake.
> > > 
> > > So the move towards the uncore's _fw alternatives seems
> > > right, however using the uncore-lock to protect the dsparb
> > > registers seems an abuse of the uncore-lock.
> > > 
> > > Let's restore the previous individual lock and try to get
> > > rid of the direct uncore accesses from the display code.
> > > 
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/i9xx_wm.c            | 13 ++-----------
> > >  drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
> > >  drivers/gpu/drm/i915/i915_driver.c                |  1 +
> > >  3 files changed, 6 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > index caef72d38798..8fe0b5c63d3a 100644
> > > --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > @@ -1771,16 +1771,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
> > >  
> > >  	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
> > >  
> > > -	/*
> > > -	 * uncore.lock serves a double purpose here. It allows us to
> > > -	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
> > > -	 * it protects the DSPARB registers from getting clobbered by
> > > -	 * parallel updates from multiple pipes.
> > > -	 *
> > > -	 * intel_pipe_update_start() has already disabled interrupts
> > > -	 * for us, so a plain spin_lock() is sufficient here.
> > > -	 */
> > 
> > I was wondering if we need to preserve the comment about irqs,
> > but since this is the only place using this lock, and it's never
> > called from an irq handler a non-irq disabling spinlock will suffice
> > anyway.
> > 
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> thoughts on this: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114868v2/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1.html

This code doesn't run on that platform, so unrelated.

> 
> maybe related to the usage of this uncore.lock in
> 
> drivers/gpu/drm/i915/display/intel_vblank.c
> 
> ?
> 
> Should we create another spin lock and include both of these cases?
> (Then the irq comment is relevant again :))

We're already 4 spinlocks deep when in vblank code. Let's not add more ;)

> 
> > 
> > > -	spin_lock(&uncore->lock);
> > > +	spin_lock(&dev_priv->display.wm.dsparb_lock);
> > >  
> > >  	switch (crtc->pipe) {
> > >  	case PIPE_A:
> > > @@ -1840,7 +1831,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
> > >  
> > >  	intel_uncore_posting_read_fw(uncore, DSPARB);
> > >  
> > > -	spin_unlock(&uncore->lock);
> > > +	spin_unlock(&dev_priv->display.wm.dsparb_lock);
> > >  }
> > >  
> > >  #undef VLV_FIFO
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > index fdab7bb93a7d..68c6bfb91dbe 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > @@ -253,6 +253,9 @@ struct intel_wm {
> > >  	 */
> > >  	struct mutex wm_mutex;
> > >  
> > > +	/* protects DSPARB registers on pre-g4x/vlv/chv */
> > > +	spinlock_t dsparb_lock;
> > > +
> > >  	bool ipc_enabled;
> > >  };
> > >  
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index a53fd339e2cc..c78e36444a12 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> > >  	mutex_init(&dev_priv->display.pps.mutex);
> > >  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> > >  	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> > > +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> > >  
> > >  	i915_memcpy_init_early(dev_priv);
> > >  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> > > -- 
> > > 2.39.2
> > 
> > -- 
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
