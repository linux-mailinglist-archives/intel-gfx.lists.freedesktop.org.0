Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52628BCAE5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E9310EDA8;
	Mon,  6 May 2024 09:40:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Da0BEsZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3792810EDA8
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988416; x=1746524416;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=cJrQOUZHHVKcpfCBG2I6EW5q55DT4rqGVGsJsTnzZJI=;
 b=Da0BEsZnAUVpbx8WitdTwYGfBVf5gXCMDCrmHqEAQotqjlvpCJbmLf/6
 VNk9wjPxzVtNjom/HjOQL/PoqPf08TwXaCXcUGcl6YUXK1JwJaTye9lB1
 e95ftWKXcDz2hRBIRKXLpn5tLnZV3+hhy5HmxBveBNC1o/bop9JZosGJd
 ZzLyMPPyP7n4czZpN263Q+D2ZPJJAEaw4CcI+N4LDfpVsi7nWgqEov07G
 AtPSb0pe9jGl5EpXnMYEfIY05Ql9oHb82dr5OflkIm37vMVcMMefrjoG6
 Rjyb/jB0KA5rWZ3S5oXqF1bVwVgG8BLxJrCHiCTpCRch1+Mi9W8ZKzYz3 A==;
X-CSE-ConnectionGUID: 4hr5nyb2RRqUhdi2uHL9HA==
X-CSE-MsgGUID: J9xfMJLeQammzBwCzRwWVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10576105"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10576105"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:40:16 -0700
X-CSE-ConnectionGUID: tTPr6/WHRrupNEkjiMmj2A==
X-CSE-MsgGUID: xYgzXzBAR8a40yTa6C//ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32590198"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:40:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 29/35] drm/i915/bios: Define VBT block 51 (Fixed Set
 Mode Table) contents
In-Reply-To: <20240503122449.27266-30-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-30-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:40:11 +0300
Message-ID: <87o79jmg78.fsf@intel.com>
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define the contents of VBT block 51 (Fixed Set Mode Table).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 5f1f485f8bf7..8b4f76c54829 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -179,6 +179,7 @@ enum bdb_block_id {
>  	BDB_LFP_POWER			=3D 44,
>  	BDB_EDP_BFI			=3D 45, /* 160+ */
>  	BDB_CHROMATICITY		=3D 46, /* 169+ */
> +	BDB_FIXED_SET_MODE		=3D 51, /* 172+ */
>  	BDB_MIPI_CONFIG			=3D 52, /* 175+ */
>  	BDB_MIPI_SEQUENCE		=3D 53, /* 177+ */
>  	BDB_COMPRESSION_PARAMETERS	=3D 56, /* 213+ */
> @@ -1390,6 +1391,16 @@ struct bdb_chromaticity {
>  	struct chromaticity chromaticity[16];
>  } __packed;
>=20=20
> +/*
> + * Block 51 - Fixed Set Mode Table
> + */
> +
> +struct bdb_fixed_set_mode {
> +	u8 enable;
> +	u32 x_res;
> +	u32 y_res;
> +} __packed;
> +
>  /*
>   * Block 52 - MIPI Configuration Block
>   */

--=20
Jani Nikula, Intel
