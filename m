Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51409575D8C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 10:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A544810F453;
	Fri, 15 Jul 2022 08:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF6610F453
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 08:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657874321; x=1689410321;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wBHYWM6mpWNsN0ZeSMCN0AUlKdZWPga+xbejXxx6jXA=;
 b=EfqWYPPd8KGPAQ4DkOt3SzA5JPLdsuQuocVZIIKX+zQCgltBxi2a9L3p
 ncYoMgpbvIU1JGZR26zkLDPPViVdR/Thkilmp6fyCGDBo3QvhhqIN4GYQ
 RqntP0/YQ/+ormAfG9HKQZJKplxLJa3YEXxYo6DLRE5sYGfm2Q1Xx9dy5
 Dh2AxKNC7XQsZuucLQvF8hb9nlXxXUWxTThwR2UXUEX3hR9pEcTMYbFBA
 Ua8/SfM/1eU4fVd7w5Rqeu23LXgfQgPt2+jlv4hR4PsWA9FhAtW2lhGpR
 W9f8/utbFBTD2gkdCmQ+6RhOSkWAHiGVVspBRqNNxdwkSaF/HPKzylX6p w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="311400240"
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="311400240"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 01:38:40 -0700
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="664110910"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 01:38:39 -0700
Date: Fri, 15 Jul 2022 11:39:07 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <YtEnq9fpkVAEohbQ@intel.com>
References: <20220714150755.154985-1-jose.souza@intel.com>
 <20220714150755.154985-2-jose.souza@intel.com>
 <dd78907477a8c19da80cbb1442c0688eb915a004.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd78907477a8c19da80cbb1442c0688eb915a004.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Disable PSR before
 disable pipe
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 15, 2022 at 08:33:43AM +0300, Hogander, Jouni wrote:
> On Thu, 2022-07-14 at 08:07 -0700, José Roberto de Souza wrote:
> > The issue here was on for_each_intel_encoder_mask_with_psr() over the
> > new_crtc_state encoder mask, so if the CRTC was being disabled mask
> > would be zero and it would not have any chance to disable PSR.
> >
> > So here doing for_each_intel_encoder_mask_with_psr() over the
> > old_crtc_state encoder mask and then using the new_crtc_state to
> > check if PSR needs to be disabled.

Are we sure that using old_crtc_state mask is safe here?
Because currently we would be basically mixing a usage of 
encoder from old_crtc_state mask with new_crtc_state.

If you mention a specific scenario, when this happens(i.e crtc
is being disabled and new mask is 0) should we add a specific check 
instructing us to use old_crtc_state mask only?

Because currently you might be touching some other scenarios as
well, that is what I'm concerned about.


Stan

> >
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index e6a870641cd25..98c3c8015a5c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1863,7 +1863,9 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >                               struct intel_crtc *crtc)
> >  {
> >       struct drm_i915_private *i915 = to_i915(state->base.dev);
> > -     const struct intel_crtc_state *crtc_state =
> > +     const struct intel_crtc_state *old_crtc_state =
> > +             intel_atomic_get_old_crtc_state(state, crtc);
> > +     const struct intel_crtc_state *new_crtc_state =
> >               intel_atomic_get_new_crtc_state(state, crtc);
> >       struct intel_encoder *encoder;
> >
> > @@ -1871,7 +1873,7 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >               return;
> >
> >       for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> > -                                          crtc_state-
> > >uapi.encoder_mask) {
> > +                                          old_crtc_state-
> > >uapi.encoder_mask) {
> 
> I would add comment here explaining why using encoder mask from
> old_crtc_state, but using new_crtc_state inside the loop. It's up to
> you:
> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> 
> >               struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >               struct intel_psr *psr = &intel_dp->psr;
> >               bool needs_to_disable = false;
> > @@ -1884,10 +1886,10 @@ void intel_psr_pre_plane_update(struct
> > intel_atomic_state *state,
> >                * - All planes will go inactive
> >                * - Changing between PSR versions
> >                */
> > -             needs_to_disable |=
> > intel_crtc_needs_modeset(crtc_state);
> > -             needs_to_disable |= !crtc_state->has_psr;
> > -             needs_to_disable |= !crtc_state->active_planes;
> > -             needs_to_disable |= crtc_state->has_psr2 != psr-
> > >psr2_enabled;
> > +             needs_to_disable |=
> > intel_crtc_needs_modeset(new_crtc_state);
> > +             needs_to_disable |= !new_crtc_state->has_psr;
> > +             needs_to_disable |= !new_crtc_state->active_planes;
> > +             needs_to_disable |= new_crtc_state->has_psr2 != psr-
> > >psr2_enabled;
> >
> >               if (psr->enabled && needs_to_disable)
> >                       intel_psr_disable_locked(intel_dp);
> 
