Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7AB6EFB5C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 21:51:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9389E10E14F;
	Wed, 26 Apr 2023 19:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14EC10E14F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 19:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682538702; x=1714074702;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9WbdesPT1ir33rsbzDQ/37cYUKXLtGDS6hdeqYcK960=;
 b=g5vBcSfS2y+b4Z926+Cth1oyBoMzL/d5cySvtBj+yNpQYEJnCbjXs/dC
 EXkJdmvmYrPj3hkBmoZheHEASs8Sjst3tKC+BAyIPh9st1X1z25qqACy5
 tFTB2gpJWZ/PPVSpu++rSo9aYzlrARHDCJ46kS39T7nlIQ/Af+dhvLchw
 TQN4XZwZJhTtglQssPjoVi40rseCy6jr1PD7LpYsu6Gqb3iKMll3kP+RW
 tOCXYK/BW26zuvD17QgYzmgTtyiilYEEB3lTY91KNS8Hd/18yuBkhSmqU
 EiDmuoZbw60kZq4BuhF4pwAdqx1NsBVdVH08yBpBWL9xMj1hP2LQr3Coe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="331456869"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="331456869"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 12:51:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671461046"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="671461046"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 12:51:30 -0700
Date: Wed, 26 Apr 2023 22:51:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZEmAvlONRFAexX1R@ideak-desk.fi.intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
 <20230426165305.2049341-3-imre.deak@intel.com>
 <ZElkCcFvVEx8DYez@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZElkCcFvVEx8DYez@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915: Make the CRTC wrt. CSC
 state consistent during sanitize-disabling
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 26, 2023 at 08:48:57PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 26, 2023 at 07:52:56PM +0300, Imre Deak wrote:
> > intel_crtc_free_hw_state() frees all the Intel specific CSC blobs in the
> > CRTC state, but the next memset() will only clear the corresponding
> > pointers for the ones stored in intel_crtc_state:hw. Clear the ones
> > stored in intel_crtc_state as well. Also sync the UAPI state with the HW
> > state after the HW state was reset. This will reset the uapi.active
> > flag as well, so no need to do this separately. Syncing the state will
> > create a new umode blob, so move deleting the blob after the sync call.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index eefa4018dc0c2..57d087de654f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -30,6 +30,8 @@
> >  #include "intel_wm.h"
> >  #include "skl_watermark.h"
> >  
> > +static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state);
> > +
> >  static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  					struct drm_modeset_acquire_ctx *ctx)
> >  {
> > @@ -88,13 +90,17 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  	crtc->active = false;
> >  	crtc->base.enabled = false;
> >  
> > -	drm_WARN_ON(&i915->drm,
> > -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> > -	crtc_state->uapi.active = false;
> >  	crtc_state->uapi.connector_mask = 0;
> >  	crtc_state->uapi.encoder_mask = 0;
> > +
> >  	intel_crtc_free_hw_state(crtc_state);
> >  	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
> > +	crtc_state->pre_csc_lut = NULL;
> > +	crtc_state->post_csc_lut = NULL;
> > +	intel_crtc_copy_hw_to_uapi_state(crtc_state);
> > +
> > +	drm_WARN_ON(&i915->drm,
> > +		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> 
> Hmm. Is there a reason we can't just do the full destroy+reset
> thing that intel_modeset_readout_hw_state() does?

Yes, that's better and works. It revealed that the (global) shared_dpll
state needs to be also updated here.

I'd like to use this function to disable bigjoiner configs as well
(later in this patchset), where the slave CRTC state is used during the
master CRTC disabling (in the encoder post_disable hook); so is it ok to
first disable all related CRTCs and then reset the state for all (also
moving the fbc disabling and watermark updating before the state
update)?

Both of the above changes are at
https://github.com/ideak/linux/commit/fc9b011249112369
on top of this patchset.

Also is it ok to keep the full CRTC reset change as a separate patch
(for the purpose of stable backporting the rest).

> 
> >  
> >  	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
> >  		encoder->base.crtc = NULL;
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
