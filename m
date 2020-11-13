Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152262B1DD9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 15:55:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64DB86E4FE;
	Fri, 13 Nov 2020 14:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D7D06E4FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 14:55:52 +0000 (UTC)
IronPort-SDR: 103Pqz4Wvvj+T3hdmPWqTUFpRRvHR4ls/Rnh7D0G9MjR5/rA7KdYc+8XFKYPV8a5ClZgX6+f5s
 /f7UrwItXICA==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166971971"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="166971971"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 06:55:51 -0800
IronPort-SDR: YeSYrP5wxlCB5yRWBERSAgktnqa1kdzUKD3wPQ+qoDcNMbRGu8Bz33NvqYP7FAyvCshUs17caB
 xONo87PBGnsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="339776909"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 13 Nov 2020 06:55:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Nov 2020 16:55:48 +0200
Date: Fri, 13 Nov 2020 16:55:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20201113145548.GY6112@intel.com>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
 <20201106173042.7534-5-ville.syrjala@linux.intel.com>
 <20201112134927.GA16561@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112134927.GA16561@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Precompute can_sagv for each
 wm level
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 12, 2020 at 03:59:40PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Nov 06, 2020 at 07:30:40PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > In order to remove intel_atomic_crtc_state_for_each_plane_state()
> > from skl_crtc_can_enable_sagv() we can simply precompute whether
> > each wm level can tolerate the SAGV block time latency or not.
> > =

> > This has the nice side benefit that we remove the duplicated
> > wm level latency calculation. In fact the copy of that code
> > we had in skl_crtc_can_enable_sagv() didn't even handle
> > WaIncreaseLatencyIPCEnabled/Display WA #1141 whereas the copy
> > in skl_compute_plane_wm() did. So now we just have the one
> > copy which handles all the w/as.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/intel_pm.c               | 21 +++++++------------
> >  2 files changed, 9 insertions(+), 13 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index b977e70e34d7..8a0276044832 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -686,6 +686,7 @@ struct skl_wm_level {
> >  	u8 plane_res_l;
> >  	bool plane_en;
> >  	bool ignore_lines;
> > +	bool can_sagv;
> >  };
> >  =

> >  struct skl_plane_wm {
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index 85b4bfb02e2e..b789ad78319b 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3873,9 +3873,7 @@ static bool skl_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > -	struct intel_plane *plane;
> > -	const struct intel_plane_state *plane_state;
> > -	int level, latency;
> > +	enum plane_id plane_id;
> >  =

> >  	if (!intel_has_sagv(dev_priv))
> >  		return false;
> > @@ -3886,9 +3884,10 @@ static bool skl_crtc_can_enable_sagv(const struc=
t intel_crtc_state *crtc_state)
> >  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> >  		return false;
> >  =

> > -	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc=
_state) {
> > +	for_each_plane_id_on_crtc(crtc, plane_id) {
> >  		const struct skl_plane_wm *wm =3D
> > -			&crtc_state->wm.skl.optimal.planes[plane->id];
> > +			&crtc_state->wm.skl.optimal.planes[plane_id];
> > +		int level;
> >  =

> >  		/* Skip this plane if it's not enabled */
> >  		if (!wm->wm[0].plane_en)
> > @@ -3899,19 +3898,12 @@ static bool skl_crtc_can_enable_sagv(const stru=
ct intel_crtc_state *crtc_state)
> >  		     !wm->wm[level].plane_en; --level)
> >  		     { }
> >  =

> > -		latency =3D dev_priv->wm.skl_latency[level];
> > -
> > -		if (skl_needs_memory_bw_wa(dev_priv) &&
> > -		    plane_state->uapi.fb->modifier =3D=3D
> > -		    I915_FORMAT_MOD_X_TILED)
> > -			latency +=3D 15;
> > -
> >  		/*
> >  		 * If any of the planes on this pipe don't enable wm levels that
> >  		 * incur memory latencies higher than sagv_block_time_us we
> >  		 * can't enable SAGV.
> >  		 */
> > -		if (latency < dev_priv->sagv_block_time_us)
> > +		if (!wm->wm[level].can_sagv)
> >  			return false;
> >  	}
> =

> Ah yet again that "thing". I wonder tbh, do we even need this per level,
> as we anyway do "to SAGV or not to SAGV" decision, based on all wm levels.

We need it because we don't know which levels will actually be enabled
until later when we've done the ddb allocation.

> =

> Also I remember we even discussed that we wanted some clarification here,
> as for Gen12+ we actually checking only if we can fit wm0 + block time to=
 ddb.

Yeah, it's quite unclear still.

Also atm we enable sagv if all planes have enabled at least one
level with latency>=3Dsagv_block_time, but atm there is no guarantee that
said level is the same for all the planes (since the w/as can
change the latencies in ways that make two planes use different
latencies for the same level). That to me feels a bit broken. I suspect
we should be looking to make sure the highest common level for all the
planes can tolerate sagv, because I think that's the highest level that
can actually be used by the hw.

So eg. we could have
plane A wm0/en=3Dyes,sagv=3Dno, wm1/en=3Dyes,sagv=3Dno,  wm2/en=3Dyes,sagv=
=3Dyes
plane B wm0/en=3Dyes,sagv=3Dno, wm1/en=3Dyes,sagv=3Dyes, wm2/en=3Dno

and the hardware will never actully use wm2 (I think) which
would be required for sagv to be safe with plane A. But I
think I need to double check the hardware behaviour to be sure
I'm thinking this correctly.

> =

> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> =

> =

> >  =

> > @@ -5375,6 +5367,9 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
> >  	/* Bspec says: value >=3D plane ddb allocation -> invalid, hence the =
+1 here */
> >  	result->min_ddb_alloc =3D max(min_ddb_alloc, res_blocks) + 1;
> >  	result->plane_en =3D true;
> > +
> > +	if (INTEL_GEN(dev_priv) < 12)
> > +		result->can_sagv =3D latency >=3D dev_priv->sagv_block_time_us;
> >  }
> >  =

> >  static void
> > -- =

> > 2.26.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
