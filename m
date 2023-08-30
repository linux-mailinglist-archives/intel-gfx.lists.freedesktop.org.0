Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 409C778D2EC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 07:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4A910E4B6;
	Wed, 30 Aug 2023 05:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A48E210E4B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 05:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693372357; x=1724908357;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IDnSj2aSRILQGTMhTIgbn2XikvEXjJme1UPDaREzqno=;
 b=AOCaxPWOxPy9oGuLf0qXePpqhBGNPEyJ2eF1QXu9ssyLiuGSFBcjhEkF
 FDMddUK4qmh0mPxO0Be8l2b3XA65+LnhffmQp2fAx/1hFBOdX34mTXi0C
 sjgcJzVhEUJfYkbHPBTU2LkdtQuNsu2Qckjg7YrMIGQbnYQTeXhHUPI8T
 JSTXPbysxuwzauwjLVnI23iS+8RLyZXcb6dPYCRahtXrKy+KG0/4tCmSc
 NFAudx3TMQlM6jmI4kbU7zC+tRoWE4ZTz9zDfpljUelG+BxWKWgnDuOp2
 zPHDPGY6XNvFHBC5/NAT2GyY7Q2Q5ZcU6ytgjSagUvcSIXUbMmT5KzWRi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="372956649"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="372956649"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 22:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="732463406"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="732463406"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga007.jf.intel.com with SMTP; 29 Aug 2023 22:12:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Aug 2023 08:12:33 +0300
Date: Wed, 30 Aug 2023 08:12:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZO7PwYmxsnOko684@intel.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-5-ville.syrjala@linux.intel.com>
 <CAE72mNk6VHHnUgOxHboCVB=X=UZ+jQLObB_12orHnMjJWm62jw@mail.gmail.com>
 <ZO2ryl0WXTa-cZuC@intel.com>
 <CAE72mN=6KGiATREgn0gj+5jTuv1XckKP0ymrjkZvb8SKS35JoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mN=6KGiATREgn0gj+5jTuv1XckKP0ymrjkZvb8SKS35JoA@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Enable VRR later during
 fastsets
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 29, 2023 at 07:58:18AM -0700, Manasi Navare wrote:
> On Tue, Aug 29, 2023 at 1:26 AM Ville Syrjälä
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Mon, Aug 28, 2023 at 11:47:49AM -0700, Manasi Navare wrote:
> > > On Sun, Aug 27, 2023 at 10:41 PM Ville Syrjala
> > > <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >
> > > > In order to reconcile seamless M/N updates with VRR we'll
> > > > need to defer the fastset VRR enable to happen after the
> > > > seamless M/N update (which happens during the vblank evade
> > > > critical section). So just push the VRR enable to be the last
> > > > thing during the update.
> > > >
> > > > This will also affect the vblank evasion as the transcoder
> > > > will now still be running with the old VRR state during
> > > > the vblank evasion. So just grab the timings always from the
> > > > old crtc state during any non-modeset commit, and also grab
> > > > the current state of VRR from the active timings (as we disable
> > > > VRR before vblank evasion during fastsets).
> > > >
> > > > This also fixes vblank evasion for seamless M/N updates as
> > > > we now properly account for the fact that the M/N update
> > > > happens after vblank evasion.
> > > >
> > > > Cc: Manasi Navare <navaremanasi@chromium.org>
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_crtc.c    | 35 ++++++++++++--------
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++----
> > > >  2 files changed, 36 insertions(+), 20 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > index e46a15d59d79..1992e7060263 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > @@ -472,15 +472,31 @@ static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
> > > >                                               struct intel_crtc *crtc,
> > > >                                               int *min, int *max, int *vblank_start)
> > > >  {
> > > > +       const struct intel_crtc_state *old_crtc_state =
> > > > +               intel_atomic_get_old_crtc_state(state, crtc);
> > > >         const struct intel_crtc_state *new_crtc_state =
> > > >                 intel_atomic_get_new_crtc_state(state, crtc);
> > > > -       const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
> > > > +       const struct intel_crtc_state *crtc_state;
> > > > +       const struct drm_display_mode *adjusted_mode;
> > > >
> > > > -       if (new_crtc_state->vrr.enable) {
> > > > -               if (intel_vrr_is_push_sent(new_crtc_state))
> > > > -                       *vblank_start = intel_vrr_vmin_vblank_start(new_crtc_state);
> > > > +       /*
> > > > +        * During fastsets/etc. the transcoder is still
> > > > +        * running with the old timings at this point.
> > > > +        *
> > > > +        * TODO: maybe just use the active timings here?
> > > > +        */
> > > > +       if (intel_crtc_needs_modeset(new_crtc_state))
> > > > +               crtc_state = new_crtc_state;
> > > > +       else
> > > > +               crtc_state = old_crtc_state;
> > > > +
> > > > +       adjusted_mode = &crtc_state->hw.adjusted_mode;
> > > > +
> > > > +       if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
> > > > +               if (intel_vrr_is_push_sent(crtc_state))
> > > > +                       *vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
> > > >                 else
> > > > -                       *vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
> > > > +                       *vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
> > > >         } else {
> > > >                 *vblank_start = intel_mode_vblank_start(adjusted_mode);
> > > >         }
> > > > @@ -710,15 +726,6 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
> > > >          */
> > > >         intel_vrr_send_push(new_crtc_state);
> > > >
> > > > -       /*
> > > > -        * Seamless M/N update may need to update frame timings.
> > > > -        *
> > > > -        * FIXME Should be synchronized with the start of vblank somehow...
> > > > -        */
> > > > -       if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
> > > > -               intel_crtc_update_active_timings(new_crtc_state,
> > > > -                                                new_crtc_state->vrr.enable);
> > > > -
> > > >         local_irq_enable();
> > > >
> > > >         if (intel_vgpu_active(dev_priv))
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index cfad967b5684..632f1f58df9e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -6476,6 +6476,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
> > > >                                     struct intel_crtc *crtc)
> > > >  {
> > > >         struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > > +       const struct intel_crtc_state *old_crtc_state =
> > > > +               intel_atomic_get_old_crtc_state(state, crtc);
> > > >         const struct intel_crtc_state *new_crtc_state =
> > > >                 intel_atomic_get_new_crtc_state(state, crtc);
> > > >
> > > > @@ -6487,6 +6489,9 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
> > > >         if (DISPLAY_VER(dev_priv) >= 9 &&
> > > >             !intel_crtc_needs_modeset(new_crtc_state))
> > > >                 skl_detach_scalers(new_crtc_state);
> > > > +
> > > > +       if (vrr_enabling(old_crtc_state, new_crtc_state))
> > > > +               intel_vrr_enable(new_crtc_state);
> > >
> > > Wouldnt we also need the condition here:
> > > new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
> >
> > That is handled elsewhere already.
> >
> > >
> > > So that we update VRR enable bit in the seamless_m_n fastset case as well.
> > > This will be needed later once we start updating the VRR params regs
> > > in fastset, since
> > > that otherwise ends up resetting VRR enable bit.
> > >
> > >
> > >
> > > >  }
> > > >
> > > >  static void intel_enable_crtc(struct intel_atomic_state *state,
> > > > @@ -6527,12 +6532,6 @@ static void intel_update_crtc(struct intel_atomic_state *state,
> > > >                         intel_dpt_configure(crtc);
> > > >         }
> > > >
> > > > -       if (vrr_enabling(old_crtc_state, new_crtc_state)) {
> > > > -               intel_vrr_enable(new_crtc_state);
> > > > -               intel_crtc_update_active_timings(new_crtc_state,
> > > > -                                                new_crtc_state->vrr.enable);
> > > > -       }
> > > > -
> > > >         if (!modeset) {
> > > >                 if (new_crtc_state->preload_luts &&
> > > >                     intel_crtc_needs_color_update(new_crtc_state))
> > > > @@ -6569,6 +6568,16 @@ static void intel_update_crtc(struct intel_atomic_state *state,
> > > >
> > > >         intel_pipe_update_end(state, crtc);
> > > >
> > > > +       /*
> > > > +        * VRR/Seamless M/N update may need to update frame timings.
> > > > +        *
> > > > +        * FIXME Should be synchronized with the start of vblank somehow...
> > > > +        */
> > > > +       if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > > +           (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state)))
> > > > +               intel_crtc_update_active_timings(new_crtc_state,
> > > > +                                                new_crtc_state->vrr.enable);
> > > > +
> > >
> > > So would the VRR min/max, flipline values also be updated here
> > > eventually for the fastset in seamless_m_n case?
> >
> > No, it would be done earlier. Should be OK to do anywhere
> > between the VRR disable and enable really. Doesn't even need
> > to be inside the vblank evade critical section since VRR will
> > already have been disabled when we change these.
> 
> Thanks Ville for the clarification.
> So when you mean by then the VRR would already be disabled in vblank
> evade, you are saying
> that vblank would have already terminated as per the flipline value?

No, I mean we've already called intel_vrr_disable() so VRR is
actually disabled.

> 
> With fastset we will only call update_crtc(), where do you think we
> can update the transcode timings
> to update the VRR parameters?
> I guess we can update those up right before enabling VRR?
> so have a condition like  if (vrr_enabling || (seamless_m_n && fastset
> && vrr_params_changed)) : Update VRR params

It should go into the !modeset path in intel_update_crtc(),
after the intel_pre_plane_update() (which is where the VRR
disable will happen).

-- 
Ville Syrjälä
Intel
