Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C0E8C4860
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 22:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D91210E252;
	Mon, 13 May 2024 20:43:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HNC6gXSZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1468010E252
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 20:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715632995; x=1747168995;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QbM1+XOYQ2L0c5gFLQW5jFqi6o5ZZ5c2FF8t/CCKKxM=;
 b=HNC6gXSZZFERDT1jo0k0ALq/zqNmx6EANJHah+CqS+psdyjd255PRKuG
 nBtyVIYBI+6FGLF7/ppo4ThymiyP5XjRDoDYzh2kQY6xy4h8aHD6vnqiV
 /yidHJYT8MlW7xI2XrjGlsMARbyBxX/m4iNfteZyocTze7lkRZRg94wca
 SuxWlXmqlmEkHCF8icAyt2ZsAF4Rvr3Xr6GwbZQasV5v5dTdy9AT1cBvB
 BbXy/RyUgm2Zwo19NHpKkQBwKJvoUCL0U3XvOpvro/O04KK27xrZqkV05
 NTqc8rYAzEKHstg9QqF5vE8SA9+i7+zUyrXD8x2jRymr7L1SGyojVy7CK w==;
X-CSE-ConnectionGUID: tduPjzjhTZKhrSeTz4rvpA==
X-CSE-MsgGUID: rG8RXzTIQYyDsfdQExxsYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11750894"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11750894"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:43:15 -0700
X-CSE-ConnectionGUID: jZNV3OkbQYukPM15DoRCUw==
X-CSE-MsgGUID: HJ8+3meSQYm11u56qPW/Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30426414"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:43:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 14/16] drm/i915: Extract skl_plane_{wm,ddb}_reg_val()
In-Reply-To: <20240510152329.24098-15-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-15-ville.syrjala@linux.intel.com>
Date: Mon, 13 May 2024 23:43:10 +0300
Message-ID: <87a5kte941.fsf@intel.com>
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
> Extract helpers to calculate the final wm/ddb register
> values for skl+. Will allow me to more cleanly remove the
> register write wrappers for these registers.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 29 +++++++++++++-------
>  1 file changed, 19 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 2a2073bf3aca..8a0a26ab8e6a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2365,21 +2365,23 @@ static int skl_build_pipe_wm(struct intel_atomic_=
state *state,
>  	return skl_wm_check_vblank(crtc_state);
>  }
>=20=20
> +static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
> +{
> +	if (!entry->end)
> +		return 0;
> +
> +	return PLANE_BUF_END(entry->end - 1) |
> +		PLANE_BUF_START(entry->start);
> +}
> +
>  static void skl_ddb_entry_write(struct drm_i915_private *i915,
>  				i915_reg_t reg,
>  				const struct skl_ddb_entry *entry)
>  {
> -	if (entry->end)
> -		intel_de_write_fw(i915, reg,
> -				  PLANE_BUF_END(entry->end - 1) |
> -				  PLANE_BUF_START(entry->start));
> -	else
> -		intel_de_write_fw(i915, reg, 0);
> +	intel_de_write_fw(i915, reg, skl_plane_ddb_reg_val(entry));
>  }
>=20=20
> -static void skl_write_wm_level(struct drm_i915_private *i915,
> -			       i915_reg_t reg,
> -			       const struct skl_wm_level *level)
> +static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
>  {
>  	u32 val =3D 0;
>=20=20
> @@ -2390,7 +2392,14 @@ static void skl_write_wm_level(struct drm_i915_pri=
vate *i915,
>  	val |=3D REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
>  	val |=3D REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
>=20=20
> -	intel_de_write_fw(i915, reg, val);
> +	return val;
> +}
> +
> +static void skl_write_wm_level(struct drm_i915_private *i915,
> +			       i915_reg_t reg,
> +			       const struct skl_wm_level *level)
> +{
> +	intel_de_write_fw(i915, reg, skl_plane_wm_reg_val(level));
>  }
>=20=20
>  void skl_write_plane_wm(struct intel_plane *plane,

--=20
Jani Nikula, Intel
