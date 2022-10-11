Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 566F15FB03A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 12:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D385010E7D7;
	Tue, 11 Oct 2022 10:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D565510E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665483173; x=1697019173;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=/hvhmi9L4C8tCg+p10J8PAZPBNpt/NSTU1oP+KFPezQ=;
 b=GQImoqBiqS3aaE1RYBh4mb6xYM7/n9jh8bQGlpJwQZwnNEIBF+ghJlmY
 POYWoATiisoK9JxI90RowCgaxX3xWx3236+ZfMfqgLoDK+Jkr6JPY65QP
 wgb2LgDWzk0KEJUdEFuBii3Mc0+8bUIfEUCtTEA8F9QsXI0ygmtpIyRQK
 JQcz22ztbctpg/EYo2HsauYzuQCdrvVgm2XJ9JheSgJXpC76jHYLJQo+t
 CWAF5g2ptQNpQ1r+LZG0oitviNGkWHC5q5kcjdzyvC3Vkb3A+5PeZh7X+
 1n68KPO6hkOwpFJV6NjGfpdRJt0jLpPGQyJus4LwpA5tqjZ14iihC1a4D A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="304453834"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="304453834"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 03:12:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="621356952"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="621356952"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 03:12:50 -0700
Date: Tue, 11 Oct 2022 13:12:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Y0VBnlm2vei/Vj5k@ideak-desk.fi.intel.com>
References: <20221007133307.3805735-1-imre.deak@intel.com>
 <DM6PR11MB3177E0CAC9D1794A550BB201BA239@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM6PR11MB3177E0CAC9D1794A550BB201BA239@DM6PR11MB3177.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix simulated GPU reset wrt.
 encoder HW readout
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 11, 2022 at 10:07:11AM +0300, Murthy, Arun R wrote:
> > [...]
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 8c3bd9ba0d748..b147ea79c566a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -830,6 +830,20 @@ intel_plane_fence_y_offset(const struct
> > intel_plane_state *plane_state)
> >       return y;
> >  }
> >
> > +static int
> > +intel_display_commit_duplicated_state(struct intel_atomic_state *state,
> > +                                   struct drm_modeset_acquire_ctx *ctx) {
> > +     struct drm_i915_private *i915 = to_i915(state->base.dev);
> > +     int ret;
> > +
> > +     ret = drm_atomic_helper_commit_duplicated_state(&state->base,
> > ctx);
> > +
> > +     drm_WARN_ON(&i915->drm, ret == -EDEADLK);
> > +
> > +     return ret;
> > +}
>
> Do we need a wrapper function for this, cant the drm function be
> called directly? since the wrapper function does nothing than calling
> drm atomic helper function.

It also WARNs when failing with -EDEADLK, which is not expected when
committing a duplicated state.

> 
> Thanks and Regards,
> Arun R Murthy
> --------------------
> > +
> >  static int
> >  __intel_display_resume(struct drm_i915_private *i915,
> >                      struct drm_atomic_state *state, @@ -837,7 +851,7 @@
> > __intel_display_resume(struct drm_i915_private *i915,  {
> >       struct drm_crtc_state *crtc_state;
> >       struct drm_crtc *crtc;
> > -     int i, ret;
> > +     int i;
> >
> >       intel_modeset_setup_hw_state(i915, ctx);
> >       intel_vga_redisable(i915);
> > @@ -863,11 +877,7 @@ __intel_display_resume(struct drm_i915_private
> > *i915,
> >       if (!HAS_GMCH(i915))
> >               to_intel_atomic_state(state)->skip_intermediate_wm = true;
> >
> > -     ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
> > -
> > -     drm_WARN_ON(&i915->drm, ret == -EDEADLK);
> > -
> > -     return ret;
> > +     return
> > +intel_display_commit_duplicated_state(to_intel_atomic_state(state),
> > +ctx);
> >  }
> >
> >  static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
> > @@ -959,7 +969,7 @@ void intel_display_finish_reset(struct
> > drm_i915_private *i915)
> >       /* reset doesn't touch the display */
> >       if (!gpu_reset_clobbers_display(i915)) {
> >               /* for testing only restore the display */
> > -             ret = __intel_display_resume(i915, state, ctx);
> > +             ret =
> > +intel_display_commit_duplicated_state(to_intel_atomic_state(state),
> > +ctx);
> >               if (ret)
> >                       drm_err(&i915->drm,
> >                               "Restoring old state failed with %i\n", ret);
> > --
> > 2.37.1
> 
