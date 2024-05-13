Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9673F8C4864
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 22:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D3810E973;
	Mon, 13 May 2024 20:46:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/yLwB15";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0141810E973
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715633186; x=1747169186;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QXLXT0clZO//WTp89HyZ7b+Dbtt9CWyKig1FpMl5KQs=;
 b=i/yLwB15AStIRiPV7D6BVKAiSariUQNELYQKKugGY7Cb7rGmzOvXuGpE
 dbFiJbj3tgfFj0RBV/uYIls1RixUchdOd0xa1uw+H9pLGuYBUHlsyXjSl
 /acSaQ/3JbtqhO6x8f82u/akux2AvBgMMK/kHkVcMDiBNSLALW49SfUWO
 X8BPyG0Ig+R3zg8SzTVfssGBIavFv+34JytL4MeH2jp6wGGtLve0Q+hX/
 VeTL5G/ewI24Lwdvh8PRwJQrxDASPHmcVOkCfdBvDj/1pf3ct39bCBCqM
 5mBou4h9gkWG7SBwhJa4g7p4H1iIbgW4rmG2ua69SnscI0kIlOdS+L2YX g==;
X-CSE-ConnectionGUID: 7h0fB21gSrquL8Y+B+PRuA==
X-CSE-MsgGUID: /ZBD2StzRuaC0UUJ2Cdd+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15425653"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="15425653"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:46:26 -0700
X-CSE-ConnectionGUID: fFx7q2SkQqGXTqG0zlqI+A==
X-CSE-MsgGUID: 7p5h438OTIWXAX6s2sOe1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35000841"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:46:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 15/16] drm/i915: Nuke skl_write_wm_level() and
 skl_ddb_entry_write()
In-Reply-To: <20240510152329.24098-16-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-16-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 23:46:20 +0300
Message-ID: <874jb1e8yr.fsf@intel.com>
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
> Get rid of skl_ddb_entry_write() and skl_write_wm_level() and
> just call intel_de_write_fw() directly.
>
> This is prep work towards DSB based plane updates where these
> wrappers are more of a hinderance.
>
> Done with cocci mostly:
> @@
> expression D, R, L;
> @@
> - skl_write_wm_level(D, R, L)
> + intel_de_write_fw(D, R, skl_plane_wm_reg_val(L))
>
> @@
> expression D, R, B;
> @@
> - skl_ddb_entry_write(D, R, B)
> + intel_de_write_fw(D, R, skl_plane_ddb_reg_val(B))
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 57 ++++++++------------
>  1 file changed, 22 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 8a0a26ab8e6a..1daceb8ef9de 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2374,13 +2374,6 @@ static u32 skl_plane_ddb_reg_val(const struct skl_=
ddb_entry *entry)
>  		PLANE_BUF_START(entry->start);
>  }
>=20=20
> -static void skl_ddb_entry_write(struct drm_i915_private *i915,
> -				i915_reg_t reg,
> -				const struct skl_ddb_entry *entry)
> -{
> -	intel_de_write_fw(i915, reg, skl_plane_ddb_reg_val(entry));
> -}
> -
>  static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
>  {
>  	u32 val =3D 0;
> @@ -2395,13 +2388,6 @@ static u32 skl_plane_wm_reg_val(const struct skl_w=
m_level *level)
>  	return val;
>  }
>=20=20
> -static void skl_write_wm_level(struct drm_i915_private *i915,
> -			       i915_reg_t reg,
> -			       const struct skl_wm_level *level)
> -{
> -	intel_de_write_fw(i915, reg, skl_plane_wm_reg_val(level));
> -}
> -
>  void skl_write_plane_wm(struct intel_plane *plane,
>  			const struct intel_crtc_state *crtc_state)
>  {
> @@ -2416,27 +2402,27 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  	int level;
>=20=20
>  	for (level =3D 0; level < i915->display.wm.num_levels; level++)
> -		skl_write_wm_level(i915, PLANE_WM(pipe, plane_id, level),
> -				   skl_plane_wm_level(pipe_wm, plane_id, level));
> +		intel_de_write_fw(i915, PLANE_WM(pipe, plane_id, level),
> +				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level))=
);
>=20=20
> -	skl_write_wm_level(i915, PLANE_WM_TRANS(pipe, plane_id),
> -			   skl_plane_trans_wm(pipe_wm, plane_id));
> +	intel_de_write_fw(i915, PLANE_WM_TRANS(pipe, plane_id),
> +			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
>=20=20
>  	if (HAS_HW_SAGV_WM(i915)) {
>  		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>=20=20
> -		skl_write_wm_level(i915, PLANE_WM_SAGV(pipe, plane_id),
> -				   &wm->sagv.wm0);
> -		skl_write_wm_level(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
> -				   &wm->sagv.trans_wm);
> +		intel_de_write_fw(i915, PLANE_WM_SAGV(pipe, plane_id),
> +				  skl_plane_wm_reg_val(&wm->sagv.wm0));
> +		intel_de_write_fw(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
> +				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
>  	}
>=20=20
> -	skl_ddb_entry_write(i915,
> -			    PLANE_BUF_CFG(pipe, plane_id), ddb);
> +	intel_de_write_fw(i915, PLANE_BUF_CFG(pipe, plane_id),
> +			  skl_plane_ddb_reg_val(ddb));
>=20=20
>  	if (DISPLAY_VER(i915) < 11)
> -		skl_ddb_entry_write(i915,
> -				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
> +		intel_de_write_fw(i915, PLANE_NV12_BUF_CFG(pipe, plane_id),
> +				  skl_plane_ddb_reg_val(ddb_y));
>  }
>=20=20
>  void skl_write_cursor_wm(struct intel_plane *plane,
> @@ -2451,22 +2437,23 @@ void skl_write_cursor_wm(struct intel_plane *plan=
e,
>  	int level;
>=20=20
>  	for (level =3D 0; level < i915->display.wm.num_levels; level++)
> -		skl_write_wm_level(i915, CUR_WM(pipe, level),
> -				   skl_plane_wm_level(pipe_wm, plane_id, level));
> +		intel_de_write_fw(i915, CUR_WM(pipe, level),
> +				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level))=
);
>=20=20
> -	skl_write_wm_level(i915, CUR_WM_TRANS(pipe),
> -			   skl_plane_trans_wm(pipe_wm, plane_id));
> +	intel_de_write_fw(i915, CUR_WM_TRANS(pipe),
> +			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
>=20=20
>  	if (HAS_HW_SAGV_WM(i915)) {
>  		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>=20=20
> -		skl_write_wm_level(i915, CUR_WM_SAGV(pipe),
> -				   &wm->sagv.wm0);
> -		skl_write_wm_level(i915, CUR_WM_SAGV_TRANS(pipe),
> -				   &wm->sagv.trans_wm);
> +		intel_de_write_fw(i915, CUR_WM_SAGV(pipe),
> +				  skl_plane_wm_reg_val(&wm->sagv.wm0));
> +		intel_de_write_fw(i915, CUR_WM_SAGV_TRANS(pipe),
> +				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
>  	}
>=20=20
> -	skl_ddb_entry_write(i915, CUR_BUF_CFG(pipe), ddb);
> +	intel_de_write_fw(i915, CUR_BUF_CFG(pipe),
> +			  skl_plane_ddb_reg_val(ddb));
>  }
>=20=20
>  static bool skl_wm_level_equals(const struct skl_wm_level *l1,

--=20
Jani Nikula, Intel
