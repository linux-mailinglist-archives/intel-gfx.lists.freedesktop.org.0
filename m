Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB4B69F5AF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 14:34:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 742BC10E9A4;
	Wed, 22 Feb 2023 13:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3480D10E9A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 13:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677072882; x=1708608882;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fVbc1wsCUZnmzk15DTFsmfUsT39hObT3C7YA/0zIzPQ=;
 b=Xyv+o6wlZbxJBaD+7OgK7Atb1coXP388cSX+kcxlbdVBPFGK5Kho//wk
 HurNPyFNKMpVq1RDBGHwR3hfVBxfCGayNn1f0z5Vm9IvMvSzpozkR10ba
 RgY6sNnJ7kMAc7WNcry46IVyCH3fNlNeefEjQaAT4rBjuK9xg5UltHaLy
 BBSt257nWoISCxZYHL82Z8pATh6Ys/J9dGiESYodIVdr9qcul83s1eljW
 bfktuEv0+0afX/VS0O49Z2lYhBdW43B5dSnF96SuMGOQv9xFtpbR50EUM
 9hIOiIdn/Ys68S0raxHInWHjoOj9PNSQvKxzwBgCyEL0VcNJngSlZGF8+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="321062763"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="321062763"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 05:34:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="665349411"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="665349411"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 22 Feb 2023 05:34:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 15:34:38 +0200
Date: Wed, 22 Feb 2023 15:34:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <Y/YZ7tKbWBFJZSRW@intel.com>
References: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
 <20230127173044.24108-4-ville.syrjala@linux.intel.com>
 <139c6f3e968277b1ca83aa4e2aaf3eb80f11c215.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <139c6f3e968277b1ca83aa4e2aaf3eb80f11c215.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Extract skl_wm_latency()
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

On Wed, Feb 22, 2023 at 09:25:56AM +0000, Hogander, Jouni wrote:
> On Fri, 2023-01-27 at 19:30 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Extract the skl+ wm latency determination into a small helper
> > so that everyone has the same idea what the latency should be.
> > 
> > This introduces a slight functional change in that
> > skl_cursor_allocation() will now start to account for the
> > extra 4 usec that the kbk/cfl/cml IPC w/a adds.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 40 +++++++++++++-----
> > --
> >  1 file changed, 26 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index ae4e9e680c2e..65c746d018b5 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -704,6 +704,28 @@ static void skl_compute_plane_wm(const struct
> > intel_crtc_state *crtc_state,
> >                                  const struct skl_wm_level
> > *result_prev,
> >                                  struct skl_wm_level *result /* out
> > */);
> >  
> > +static unsigned int skl_wm_latency(struct drm_i915_private *i915,
> > int level,
> > +                                  const struct skl_wm_params *wp)
> > +{
> > +       unsigned int latency = i915->display.wm.skl_latency[level];
> > +
> > +       if (latency == 0)
> > +               return 0;
> 
> What does it mean if latency is 0 here? Why it is ok to skip checks for
> ipc_enabled and memory bandwidth workaround?

Zero latency means this watermark level is disabled.

> > +
> > +       /*
> > +        * WaIncreaseLatencyIPCEnabled: kbl,cfl
> > +        * Display WA #1141: kbl,cfl
> > +        */
> > +       if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) ||
> > IS_COMETLAKE(i915)) &&
> > +           skl_watermark_ipc_enabled(i915))
> > +               latency += 4;
> > +
> > +       if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
> > +               latency += 15;
> > +
> > +       return latency;
> > +}
> > +
> >  static unsigned int
> >  skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
> >                       int num_active)
> > @@ -723,7 +745,7 @@ skl_cursor_allocation(const struct
> > intel_crtc_state *crtc_state,
> >         drm_WARN_ON(&i915->drm, ret);
> >  
> >         for (level = 0; level <= max_level; level++) {
> > -               unsigned int latency = i915-
> > >display.wm.skl_latency[level];
> > +               unsigned int latency = skl_wm_latency(i915, level,
> > &wp);
> >  
> >                 skl_compute_plane_wm(crtc_state, plane, level,
> > latency, &wp, &wm, &wm);
> >                 if (wm.min_ddb_alloc == U16_MAX)
> > @@ -1834,17 +1856,6 @@ static void skl_compute_plane_wm(const struct
> > intel_crtc_state *crtc_state,
> >                 return;
> >         }
> >  
> > -       /*
> > -        * WaIncreaseLatencyIPCEnabled: kbl,cfl
> > -        * Display WA #1141: kbl,cfl
> > -        */
> > -       if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) ||
> > IS_COMETLAKE(i915)) &&
> > -           skl_watermark_ipc_enabled(i915))
> > -               latency += 4;
> > -
> > -       if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
> > -               latency += 15;
> > -
> >         method1 = skl_wm_method1(i915, wp->plane_pixel_rate,
> >                                  wp->cpp, latency, wp-
> > >dbuf_block_size);
> >         method2 = skl_wm_method2(wp->plane_pixel_rate,
> > @@ -1971,7 +1982,7 @@ skl_compute_wm_levels(const struct
> > intel_crtc_state *crtc_state,
> >  
> >         for (level = 0; level <= max_level; level++) {
> >                 struct skl_wm_level *result = &levels[level];
> > -               unsigned int latency = i915-
> > >display.wm.skl_latency[level];
> > +               unsigned int latency = skl_wm_latency(i915, level,
> > wm_params);
> >  
> >                 skl_compute_plane_wm(crtc_state, plane, level,
> > latency,
> >                                      wm_params, result_prev, result);
> > @@ -1991,7 +2002,8 @@ static void tgl_compute_sagv_wm(const struct
> > intel_crtc_state *crtc_state,
> >         unsigned int latency = 0;
> >  
> >         if (i915->display.sagv.block_time_us)
> > -               latency = i915->display.sagv.block_time_us + i915-
> > >display.wm.skl_latency[0];
> > +               latency = i915->display.sagv.block_time_us +
> > +                       skl_wm_latency(i915, 0, wm_params);
> >  
> >         skl_compute_plane_wm(crtc_state, plane, 0, latency,
> >                              wm_params, &levels[0],
> 

-- 
Ville Syrjälä
Intel
