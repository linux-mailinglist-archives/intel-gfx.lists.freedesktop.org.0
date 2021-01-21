Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E27122FEAC1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 13:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445556E4E8;
	Thu, 21 Jan 2021 12:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BA66E4E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 12:56:09 +0000 (UTC)
IronPort-SDR: U5jLimYHQ928LRYLutOpOfPRxtuVXbLztGEQ6lHYmylU6jkWktw7DyIhubffxviXaNzlepeI1T
 WXeK9J4ezhgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="166360538"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="166360538"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 04:55:59 -0800
IronPort-SDR: Sc3DhexygqooRTSLeTWmkhlP9+8L22X/W7WrLLiv5zRJfiqOPRuwrMvukCgWCbyPCK5G2UDWqE
 ZtE8TJ91mV/A==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="571694524"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 04:55:56 -0800
Date: Thu, 21 Jan 2021 14:57:08 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210121125708.GB29064@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-20-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225171125.28885-20-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 19/20] drm/i915: Do a bit more initial
 readout for dbuf
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

On Tue, Feb 25, 2020 at 07:11:24PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Readout the dbuf related stuff during driver init/resume and
> stick it into our dbuf state.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  4 --
>  drivers/gpu/drm/i915/intel_pm.c              | 48 +++++++++++++++++++-
>  2 files changed, 46 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e3df43f3932d..21ad1adcc1eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17475,14 +17475,10 @@ void intel_modeset_init_hw(struct drm_i915_priv=
ate *i915)
>  {
>  	struct intel_cdclk_state *cdclk_state =3D
>  		to_intel_cdclk_state(i915->cdclk.obj.state);
> -	struct intel_dbuf_state *dbuf_state =3D
> -		to_intel_dbuf_state(i915->dbuf.obj.state);
>  =

>  	intel_update_cdclk(i915);
>  	intel_dump_cdclk_config(&i915->cdclk.hw, "Current CDCLK");
>  	cdclk_state->logical =3D cdclk_state->actual =3D i915->cdclk.hw;
> -
> -	dbuf_state->enabled_slices =3D i915->dbuf.enabled_slices;
>  }
>  =

>  static int sanitize_watermarks_add_affected(struct drm_atomic_state *sta=
te)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c11508fb3fac..7edac506d343 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5363,6 +5363,18 @@ static inline bool skl_ddb_entries_overlap(const s=
truct skl_ddb_entry *a,
>  	return a->start < b->end && b->start < a->end;
>  }
>  =

> +static void skl_ddb_entry_union(struct skl_ddb_entry *a,
> +				const struct skl_ddb_entry *b)
> +{
> +	if (a->end && b->end) {
> +		a->start =3D min(a->start, b->start);
> +		a->end =3D max(a->end, b->end);
> +	} else if (b->end) {
> +		a->start =3D b->start;
> +		a->end =3D b->end;
> +	}
> +}
> +
>  bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
>  				 const struct skl_ddb_entry *entries,
>  				 int num_entries, int ignore_idx)
> @@ -5857,14 +5869,46 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *=
crtc,
>  =

>  void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
>  	struct intel_crtc *crtc;
> -	struct intel_crtc_state *crtc_state;
>  =

>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		enum pipe pipe =3D crtc->pipe;
> +		enum plane_id plane_id;
>  =

>  		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
> +
> +		memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
> +
> +		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			struct skl_ddb_entry *ddb_y =3D
> +				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			struct skl_ddb_entry *ddb_uv =3D
> +				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +
> +			skl_ddb_get_hw_plane_state(dev_priv, crtc->pipe,
> +						   plane_id, ddb_y, ddb_uv);
> +
> +			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_y);
> +			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_uv);
> +		}
> +
> +		dbuf_state->slices[pipe] =3D
> +			skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes);
> +
> +		dbuf_state->weight[pipe] =3D intel_crtc_ddb_weight(crtc_state);
> +
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\=
n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
> +			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes);
>  	}
> +
> +	dbuf_state->enabled_slices =3D dev_priv->dbuf.enabled_slices;
>  }
>  =

>  static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
