Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D168C9E13
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 15:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5482D10E4D7;
	Mon, 20 May 2024 13:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGskBrC6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771CB10E1C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 13:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716211449; x=1747747449;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=RIYcw+yC14/1Udhh8tOl4XF7aXiLBhLaMCi1MZ8Y0xY=;
 b=MGskBrC6LzWLTmCfA7E0pnsDs8dRQN4vKGN9r510R04zHi//j6j8ChnX
 A40F3/AOTQMHI8wyAsWIzHkZ7AM4ilNDccXjYrospC4SqtP4WOHn07MKh
 NjiiNlbtGzmQNxlUd9e7zXkUI5UV9dXrCbX0Wb8m1XrRhuDcsyPL4BZZQ
 IPgmkx3uUuTiepo9tdrO7Rg7+2Zv4KpNx+NLcYaHABpDeyoO0lRbw7+/E
 Sn1ApITQ1nhu+6HQAzIi8cPLAVg/iacvh5vuhwDUbZW2yzidgDGB/R0HD
 6D0k0azPgblglPtkMiVtjqYENRkWtxp/Y4EIpFIoEcnetgbEmJL8U7k+s g==;
X-CSE-ConnectionGUID: fAeacovFRUiNT9sFl6YE1w==
X-CSE-MsgGUID: /jddaN6ETrKSYQyqU52xjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="37716147"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37716147"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:24:08 -0700
X-CSE-ConnectionGUID: DaqFfql9RJWhRFWjtPfuWQ==
X-CSE-MsgGUID: Lsn++5uaQKalS1s4uFxibQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37483698"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:24:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/13] drm/i915: Add separate defines for cursor WM/DDB
 register bits
In-Reply-To: <20240516135622.3498-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-8-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 16:24:03 +0300
Message-ID: <878r04sjkc.fsf@intel.com>
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make a more thorough split between universal planes vs. cursors
> by defining the contents of the cursor WM/DDB registers separately.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I like this better than exposing the reg val functions.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 34 +++++++++++++++----
>  .../gpu/drm/i915/display/intel_cursor_regs.h  |  9 +++++
>  .../drm/i915/display/skl_universal_plane.c    |  4 +--
>  .../drm/i915/display/skl_universal_plane.h    |  3 --
>  4 files changed, 39 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 7983cbaf83f7..cea0cfed569d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -24,7 +24,6 @@
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  #include "intel_vblank.h"
> -#include "skl_universal_plane.h"
>  #include "skl_watermark.h"
>=20=20
>  #include "gem/i915_gem_object.h"
> @@ -559,6 +558,29 @@ static void i9xx_cursor_update_sel_fetch_arm(struct =
intel_plane *plane,
>  	}
>  }
>=20=20
> +static u32 skl_cursor_ddb_reg_val(const struct skl_ddb_entry *entry)
> +{
> +	if (!entry->end)
> +		return 0;
> +
> +	return CUR_BUF_END(entry->end - 1) |
> +		CUR_BUF_START(entry->start);
> +}
> +
> +static u32 skl_cursor_wm_reg_val(const struct skl_wm_level *level)
> +{
> +	u32 val =3D 0;
> +
> +	if (level->enable)
> +		val |=3D CUR_WM_EN;
> +	if (level->ignore_lines)
> +		val |=3D CUR_WM_IGNORE_LINES;
> +	val |=3D REG_FIELD_PREP(CUR_WM_BLOCKS_MASK, level->blocks);
> +	val |=3D REG_FIELD_PREP(CUR_WM_LINES_MASK, level->lines);
> +
> +	return val;
> +}
> +
>  static void skl_write_cursor_wm(struct intel_plane *plane,
>  				const struct intel_crtc_state *crtc_state)
>  {
> @@ -572,22 +594,22 @@ static void skl_write_cursor_wm(struct intel_plane =
*plane,
>=20=20
>  	for (level =3D 0; level < i915->display.wm.num_levels; level++)
>  		intel_de_write_fw(i915, CUR_WM(pipe, level),
> -				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level))=
);
> +				  skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)=
));
>=20=20
>  	intel_de_write_fw(i915, CUR_WM_TRANS(pipe),
> -			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
> +			  skl_cursor_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
>=20=20
>  	if (HAS_HW_SAGV_WM(i915)) {
>  		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>=20=20
>  		intel_de_write_fw(i915, CUR_WM_SAGV(pipe),
> -				  skl_plane_wm_reg_val(&wm->sagv.wm0));
> +				  skl_cursor_wm_reg_val(&wm->sagv.wm0));
>  		intel_de_write_fw(i915, CUR_WM_SAGV_TRANS(pipe),
> -				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
> +				  skl_cursor_wm_reg_val(&wm->sagv.trans_wm));
>  	}
>=20=20
>  	intel_de_write_fw(i915, CUR_BUF_CFG(pipe),
> -			  skl_plane_ddb_reg_val(ddb));
> +			  skl_cursor_ddb_reg_val(ddb));
>  }
>=20=20
>  /* TODO: split into noarm+arm pair */
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/g=
pu/drm/i915/display/intel_cursor_regs.h
> index ab02d497fba6..307a850d54b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> @@ -78,6 +78,10 @@
>  #define _CUR_WM_A_0		0x70140
>  #define _CUR_WM_B_0		0x71140
>  #define CUR_WM(pipe, level)	_MMIO(_PIPE((pipe), _CUR_WM_A_0, _CUR_WM_B_0=
) + (level) * 4)
> +#define   CUR_WM_EN				REG_BIT(31)
> +#define   CUR_WM_IGNORE_LINES			REG_BIT(30)
> +#define   CUR_WM_LINES_MASK			REG_GENMASK(26, 14)
> +#define   CUR_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
>=20=20
>  #define _CUR_WM_SAGV_A		0x70158
>  #define _CUR_WM_SAGV_B		0x71158
> @@ -94,6 +98,11 @@
>  #define _CUR_BUF_CFG_A		0x7017c
>  #define _CUR_BUF_CFG_B		0x7117c
>  #define CUR_BUF_CFG(pipe)	_MMIO_PIPE((pipe), _CUR_BUF_CFG_A, _CUR_BUF_CF=
G_B)
> +/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
> +#define   CUR_BUF_END_MASK		REG_GENMASK(27, 16)
> +#define   CUR_BUF_END(end)		REG_FIELD_PREP(CUR_BUF_END_MASK, (end))
> +#define   CUR_BUF_START_MASK		REG_GENMASK(11, 0)
> +#define   CUR_BUF_START(start)		REG_FIELD_PREP(CUR_BUF_START_MASK, (star=
t))
>=20=20
>  #define _SEL_FETCH_CUR_CTL_A	0x70880 /* mtl+ */
>  #define _SEL_FETCH_CUR_CTL_B	0x71880
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 6601baf18ae4..de51652358c9 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -622,7 +622,7 @@ static u32 skl_plane_stride(const struct intel_plane_=
state *plane_state,
>  	return stride / skl_plane_stride_mult(fb, color_plane, rotation);
>  }
>=20=20
> -u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
> +static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
>  {
>  	if (!entry->end)
>  		return 0;
> @@ -631,7 +631,7 @@ u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry =
*entry)
>  		PLANE_BUF_START(entry->start);
>  }
>=20=20
> -u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
> +static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
>  {
>  	u32 val =3D 0;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers=
/gpu/drm/i915/display/skl_universal_plane.h
> index 8eb4521ee851..541489479135 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
> @@ -37,7 +37,4 @@ bool icl_is_nv12_y_plane(struct drm_i915_private *dev_p=
riv,
>  u8 icl_hdr_plane_mask(void);
>  bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id);
>=20=20
> -u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry);
> -u32 skl_plane_wm_reg_val(const struct skl_wm_level *level);
> -
>  #endif

--=20
Jani Nikula, Intel
