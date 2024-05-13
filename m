Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420368C4880
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 22:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A33F210E981;
	Mon, 13 May 2024 20:52:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLMIWErO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BEA610E981
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 20:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715633533; x=1747169533;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=cHzozl+MVeWocB7823PTzP6JXOb5h25rYCq3gb5+rvQ=;
 b=aLMIWErO6+gSokEEDPEstmMns5t2PIkRZNIjeKz+yhr1gAjY/MbrMqsg
 G7iLYxVIL3HoIK8TfFLtftNPHetmAf9WXeWWZOwxNqRGI8+SfFyRNnaP6
 yiklH+rsBQMOQhvCaGOfucIUiTnLf+UVvghnZtDzrt0HZ2f8pIGErSHNy
 vIOZ2o4NQNFHtZtQ3703/y2sjPBUkOmJhwteifh6sQxiX3hoyifekt89q
 p80IiXaXApTgHLlWCiaqP/cM3riDfBXyQ8lE6oRu52QoxTTR2YcsiC9U6
 5h1XjG91VA7M7zii2QGbBjWK7sXYv//dQV8zPr5vv7abDKL0tODr+fS+M Q==;
X-CSE-ConnectionGUID: sicj4vQLQlmv/xyH531azw==
X-CSE-MsgGUID: bRHX7tOlQDi4yZ/xgqXSlA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11422226"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11422226"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:52:13 -0700
X-CSE-ConnectionGUID: 7WRLjfZRTJKu/ZT+h+LA/w==
X-CSE-MsgGUID: cizubbs5TOe3meHtnekcZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30491242"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:52:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 16/16] drm/i915: Handle SKL+ WM/DDB registers next to
 all other plane registers
In-Reply-To: <20240510152329.24098-17-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-17-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 23:52:08 +0300
Message-ID: <871q65e8p3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Having the plane WM/DDB regitster write functions in skl_watermarks.c
> is rather annoying when trying to implement DSB based plane updates.
> Move them into the respective files that handle all other plane
> register writes. Less places where I need to worry about the DSB
> vs. MMIO decisions.
>
> The downside is that we spread the wm struct details a bit further
> afield. But if that becomes too annoying we can probably abstract
> things a bit more with a few extra functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

[snip]

> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers=
/gpu/drm/i915/display/skl_universal_plane.h
> index e92e00c01b29..8eb4521ee851 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> @@ -12,6 +12,8 @@ struct drm_i915_private;
>  struct intel_crtc;
>  struct intel_initial_plane_config;
>  struct intel_plane_state;
> +struct skl_ddb_entry;
> +struct skl_wm_level;
>=20=20
>  enum pipe;
>  enum plane_id;
> @@ -35,4 +37,7 @@ bool icl_is_nv12_y_plane(struct drm_i915_private *dev_p=
riv,
>  u8 icl_hdr_plane_mask(void);
>  bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id);
>=20=20
> +u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry);
> +u32 skl_plane_wm_reg_val(const struct skl_wm_level *level);

Yeah, I don't much like interfaces that return register values for
registers that aren't even known... but let's see how this pans out. It
does what it says on the box.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 1daceb8ef9de..2064f72da675 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1396,7 +1396,7 @@ skl_total_relative_data_rate(const struct intel_crt=
c_state *crtc_state)
>  	return data_rate;
>  }
>=20=20
> -static const struct skl_wm_level *
> +const struct skl_wm_level *
>  skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
>  		   enum plane_id plane_id,
>  		   int level)
> @@ -1409,7 +1409,7 @@ skl_plane_wm_level(const struct skl_pipe_wm *pipe_w=
m,
>  	return &wm->wm[level];
>  }
>=20=20
> -static const struct skl_wm_level *
> +const struct skl_wm_level *
>  skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
>  		   enum plane_id plane_id)
>  {
> @@ -2365,97 +2365,6 @@ static int skl_build_pipe_wm(struct intel_atomic_s=
tate *state,
>  	return skl_wm_check_vblank(crtc_state);
>  }
>=20=20
> -static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
> -{
> -	if (!entry->end)
> -		return 0;
> -
> -	return PLANE_BUF_END(entry->end - 1) |
> -		PLANE_BUF_START(entry->start);
> -}
> -
> -static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
> -{
> -	u32 val =3D 0;
> -
> -	if (level->enable)
> -		val |=3D PLANE_WM_EN;
> -	if (level->ignore_lines)
> -		val |=3D PLANE_WM_IGNORE_LINES;
> -	val |=3D REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
> -	val |=3D REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
> -
> -	return val;
> -}
> -
> -void skl_write_plane_wm(struct intel_plane *plane,
> -			const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe =3D plane->pipe;
> -	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> -	const struct skl_ddb_entry *ddb =3D
> -		&crtc_state->wm.skl.plane_ddb[plane_id];
> -	const struct skl_ddb_entry *ddb_y =3D
> -		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -	int level;
> -
> -	for (level =3D 0; level < i915->display.wm.num_levels; level++)
> -		intel_de_write_fw(i915, PLANE_WM(pipe, plane_id, level),
> -				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level))=
);
> -
> -	intel_de_write_fw(i915, PLANE_WM_TRANS(pipe, plane_id),
> -			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
> -
> -	if (HAS_HW_SAGV_WM(i915)) {
> -		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> -
> -		intel_de_write_fw(i915, PLANE_WM_SAGV(pipe, plane_id),
> -				  skl_plane_wm_reg_val(&wm->sagv.wm0));
> -		intel_de_write_fw(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
> -				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
> -	}
> -
> -	intel_de_write_fw(i915, PLANE_BUF_CFG(pipe, plane_id),
> -			  skl_plane_ddb_reg_val(ddb));
> -
> -	if (DISPLAY_VER(i915) < 11)
> -		intel_de_write_fw(i915, PLANE_NV12_BUF_CFG(pipe, plane_id),
> -				  skl_plane_ddb_reg_val(ddb_y));
> -}
> -
> -void skl_write_cursor_wm(struct intel_plane *plane,
> -			 const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe =3D plane->pipe;
> -	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> -	const struct skl_ddb_entry *ddb =3D
> -		&crtc_state->wm.skl.plane_ddb[plane_id];
> -	int level;
> -
> -	for (level =3D 0; level < i915->display.wm.num_levels; level++)
> -		intel_de_write_fw(i915, CUR_WM(pipe, level),
> -				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level))=
);
> -
> -	intel_de_write_fw(i915, CUR_WM_TRANS(pipe),
> -			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
> -
> -	if (HAS_HW_SAGV_WM(i915)) {
> -		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> -
> -		intel_de_write_fw(i915, CUR_WM_SAGV(pipe),
> -				  skl_plane_wm_reg_val(&wm->sagv.wm0));
> -		intel_de_write_fw(i915, CUR_WM_SAGV_TRANS(pipe),
> -				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
> -	}
> -
> -	intel_de_write_fw(i915, CUR_BUF_CFG(pipe),
> -			  skl_plane_ddb_reg_val(ddb));
> -}
> -
>  static bool skl_wm_level_equals(const struct skl_wm_level *l1,
>  				const struct skl_wm_level *l2)
>  {
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/d=
rm/i915/display/skl_watermark.h
> index 91f92c0e706e..78b121941237 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -18,6 +18,8 @@ struct intel_bw_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_plane;
> +struct skl_pipe_wm;
> +struct skl_wm_level;
>=20=20
>  u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915);
>=20=20
> @@ -30,11 +32,6 @@ bool intel_has_sagv(struct drm_i915_private *i915);
>  u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
>  			    const struct skl_ddb_entry *entry);
>=20=20
> -void skl_write_plane_wm(struct intel_plane *plane,
> -			const struct intel_crtc_state *crtc_state);
> -void skl_write_cursor_wm(struct intel_plane *plane,
> -			 const struct intel_crtc_state *crtc_state);
> -
>  bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
>  				 const struct skl_ddb_entry *entries,
>  				 int num_entries, int ignore_idx);
> @@ -51,6 +48,12 @@ unsigned int skl_watermark_max_latency(struct drm_i915=
_private *i915,
>  				       int initial_wm_level);
>  void skl_wm_init(struct drm_i915_private *i915);
>=20=20
> +const struct skl_wm_level *skl_plane_wm_level(const struct skl_pipe_wm *=
pipe_wm,
> +					      enum plane_id plane_id,
> +					      int level);
> +const struct skl_wm_level *skl_plane_trans_wm(const struct skl_pipe_wm *=
pipe_wm,
> +					      enum plane_id plane_id);
> +
>  struct intel_dbuf_state {
>  	struct intel_global_state base;

--=20
Jani Nikula, Intel
