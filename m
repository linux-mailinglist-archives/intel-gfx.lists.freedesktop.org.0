Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E96C530B14
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 10:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AF310F041;
	Mon, 23 May 2022 08:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E989710F041
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 08:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653294694; x=1684830694;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2wJYpApdjJ8ZMkrE++Bb0v2MwuW7v6q+ofZi08yubHg=;
 b=BtR7kjat7H83JMoGpVzeSoZ0Z/y2Ty1CavhqBsQkQNRe09C4tPGCEcXo
 eMmhYNNBdPH7kkjikBApNNSPArNJqUE2K2fb3mT3K4kk2kWbNr8a0Gd86
 Qy+jaX2Vw4SmW/AZ8ChpZMxxekOZNEN0SYDO9GnWEst/jadcjGCmASVNy
 OOFnfUeRc0JtcmZgR7NdL7113yICYsiNfxE5fgwseXK/kmhVy9uB50yx3
 +OwwxVhKnYVUFehk2ffD7toKDQDVoyP9mL4m0jKcN6ekgqwafk9dDvxqV
 Pr0U2XWIFIM/vwwhev02TBVAitD4ddKe2MVZjFPQKzEOnSnxCeSzIwv65 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="255214747"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="255214747"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 01:31:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="600526346"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 01:31:30 -0700
Date: Mon, 23 May 2022 11:31:35 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <20220523083135.GA32178@intel.com>
References: <20220518105946.28179-1-stanislav.lisovskiy@intel.com>
 <96f4549835dfd27301b2a695e60e81fdb6397e67.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96f4549835dfd27301b2a695e60e81fdb6397e67.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Write zero wms if we disable
 planes for icl+
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

On Mon, May 23, 2022 at 11:06:05AM +0300, Govindapillai, Vinod wrote:
> Hi Stan
> 
> Pls see some comments inline..
> 
> BR
> Vinod
> 
> On Wed, 2022-05-18 at 13:59 +0300, Stanislav Lisovskiy wrote:
> > Otherwise we seem to get FIFO underruns. It is being disabled
> > anyway, so kind of logical to write those as zeroes, even if
> > disabling is temporary.
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  .../drm/i915/display/skl_universal_plane.c    |  2 +-
> >  drivers/gpu/drm/i915/intel_pm.c               | 46 +++++++++++++++++++
> >  drivers/gpu/drm/i915/intel_pm.h               |  2 +
> >  3 files changed, 49 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index caa03324a733..c0251189c042 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -633,7 +633,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
> >       if (icl_is_hdr_plane(dev_priv, plane_id))
> >               intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
> >
> > -     skl_write_plane_wm(plane, crtc_state);
> > +     skl_write_zero_plane_wm(plane, crtc_state);
> >
> >       intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
> >       intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index ee0047fdc95d..2470c037bfae 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -5885,6 +5885,52 @@ void skl_write_plane_wm(struct intel_plane *plane,
> >                                   PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
> >  }
> >
> > +void skl_write_zero_plane_wm(struct intel_plane *plane,
> > +                          const struct intel_crtc_state *crtc_state)
> > +{
> > +     struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > +     int level, max_level = ilk_wm_max_level(dev_priv);
> > +     enum plane_id plane_id = plane->id;
> > +     enum pipe pipe = plane->pipe;
> > +     struct skl_pipe_wm pipe_wm;
> > +     const struct skl_ddb_entry *ddb =
> > +             &crtc_state->wm.skl.plane_ddb[plane_id];
> > +     const struct skl_ddb_entry *ddb_y =
> > +             &crtc_state->wm.skl.plane_ddb_y[plane_id];
> > +
> > +     for (level = 0; level <= max_level; level++) {
> > +             pipe_wm.planes[plane_id].wm[level].blocks = 0;
> > +             pipe_wm.planes[plane_id].wm[level].lines = 0;
> > +     }
> > +
> > +     pipe_wm.planes[plane_id].trans_wm.blocks = 0;
> > +     pipe_wm.planes[plane_id].trans_wm.lines = 0;
> 
> What about the other members of struct skl_plane_wm - uv_wm, sagv.wm, sagv.trans_wm?
> Or memset to 0 to the sizeof(skl_wm_level) better?

Yes, you are right the whole structure should be zeroed. However that seems to be enough
in practice though..well theretically whatever we are writing here, shouldn't even
matter because we would be disabling the plane soon rightaway.

> 
> > +
> > +     for (level = 0; level <= max_level; level++)
> > +             skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> > +                                skl_plane_wm_level(&pipe_wm, plane_id, level));
> > +
> > +     skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
> > +                        skl_plane_trans_wm(&pipe_wm, plane_id));
> > +
> > +     if (HAS_HW_SAGV_WM(dev_priv)) {
> > +             const struct skl_plane_wm *wm = &pipe_wm.planes[plane_id];
> > +
> > +             skl_write_wm_level(dev_priv, PLANE_WM_SAGV(pipe, plane_id),
> > +                                &wm->sagv.wm0);
> > +             skl_write_wm_level(dev_priv, PLANE_WM_SAGV_TRANS(pipe, plane_id),
> > +                                &wm->sagv.trans_wm);
> > +     }
> > +
> > +     skl_ddb_entry_write(dev_priv,
> > +                         PLANE_BUF_CFG(pipe, plane_id), ddb);
> 
> As the plane wm values are hardcode to 0 just before this line, these ddb entries might not be
> representing the accurate information anymore. Does that even matter?

It shouldn't matter at all since the plane is disabled.

> 
> Or is it better if we ignore/skip zero-ing the wm values during the disable planes completely if it
> doesnt matter and just rely on disabling the plane bit in plane_ctl?


I now tend to do the same. Writing zeroed struct doesn't seem to be correct option
either, otherwise this should be reflected in state as well - otherwise we are getting
state mismatches.
I think we shouldn't even touch wms here - it doesn't make sense to update
them if we are disabling the plane anyway.
If it was enabled before - I think it should have those correct wms already,
which we are writing here(those from the state).
And once it is enabled -  we should anyway write new wm values there.

I will probably send a new version, where we don't write those at all,
when plane is disabled.

Also I have suspicion, that I can't reproduce this with intel_reg, because
it might be that in the driver we simply can be having race condition here - 
we have now removed spinlocks, in order to get rid of another bug(atomic
evasion time exceeded), so now it is more probable to get this kind of 
issue. That might explain, why writing wms here matters while it shouldn't really
and it is also not reproducible with direct register writes with intel_reg
tool. 

Stan

> 
> > +
> > +     if (DISPLAY_VER(dev_priv) < 11)
> > +             skl_ddb_entry_write(dev_priv,
> > +                                 PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
> > +}
> > +
> > +
> >  void skl_write_cursor_wm(struct intel_plane *plane,
> >                        const struct intel_crtc_state *crtc_state)
> >  {
> > diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> > index 50604cf7398c..fb0ac4f143ab 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > @@ -61,6 +61,8 @@ bool skl_wm_level_equals(const struct skl_wm_level *l1,
> >  bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> >                                const struct skl_ddb_entry *entries,
> >                                int num_entries, int ignore_idx);
> > +void skl_write_zero_plane_wm(struct intel_plane *plane,
> > +                          const struct intel_crtc_state *crtc_state);
> >  void skl_write_plane_wm(struct intel_plane *plane,
> >                       const struct intel_crtc_state *crtc_state);
> >  void skl_write_cursor_wm(struct intel_plane *plane,
