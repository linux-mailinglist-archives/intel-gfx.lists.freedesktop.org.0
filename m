Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591D08BCAE1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9533C10EAFF;
	Mon,  6 May 2024 09:39:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RfRH/3gE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2664D10EAFF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988387; x=1746524387;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Xrmu8uU2B7HgST3M2ae+Fi9zKdRtT6fULCpva9336RU=;
 b=RfRH/3gEBH3WsT1mSF9pFpdkMwG6oMjyIsaSqGK3AQ+ptEQCWkddfBm0
 6yRTzqXZ4BJXdqn8p45CDxlxIBoKrDyIT/0LknVsW29IRJNlEFq5PF4MS
 Pc4V0HWTvA1NmHqGOMpUqllx8Qgi2mVTipBsv4S4JT5OswUBpJKWGere5
 9RL821nhYu6tyHG3HU2bOECFH6g5wMJSF8UkJN61uMeb+BxccfeYT4POB
 GJAzqb/b2RUt62475cujAuY7iwsi7xUJATULS71Rfhdz3zWCsBzpjc/r4
 3yBSKmFYpl6i55pIXgtAIcy7y4nvQ6HcQ3HU5mHIjJXOgk7Hdzi4KXwTq g==;
X-CSE-ConnectionGUID: yOogbdQ0T2uC535Yl8C8uw==
X-CSE-MsgGUID: +G6mW/tiQyOrcEkNVRSHew==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10576054"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10576054"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:39:47 -0700
X-CSE-ConnectionGUID: EE01dLYNS9agR61weZXayA==
X-CSE-MsgGUID: 9VvXagndQVqHZyZ7jBwdYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32590152"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:39:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 28/35] drm/i915/bios: Define VBT block 46 (Chromaticity
 For Narrow Gamut Panel) contents
In-Reply-To: <20240503122449.27266-29-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-29-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:39:42 +0300
Message-ID: <87r0efmg81.fsf@intel.com>
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
> Define the contents of VBT block 46 (Chromaticity For Narrow Gamut
> Panel). One entry per panel.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

but...

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 87d073154d49..5f1f485f8bf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -178,6 +178,7 @@ enum bdb_block_id {
>  	BDB_LFP_BACKLIGHT		=3D 43,
>  	BDB_LFP_POWER			=3D 44,
>  	BDB_EDP_BFI			=3D 45, /* 160+ */
> +	BDB_CHROMATICITY		=3D 46, /* 169+ */
>  	BDB_MIPI_CONFIG			=3D 52, /* 175+ */
>  	BDB_MIPI_SEQUENCE		=3D 53, /* 177+ */
>  	BDB_COMPRESSION_PARAMETERS	=3D 56, /* 213+ */
> @@ -1364,6 +1365,31 @@ struct bdb_edp_bfi {
>  	struct edp_bfi bfi[16];
>  } __packed;
>=20=20
> +/*
> + * Block 46 - Chromaticity For Narrow Gamut Panel Configuration Block
> + */
> +
> +struct chromaticity {
> +	u8 chromaticity_enable:1;
> +	u8 chromaticity_from_edid_base_block:1;
> +	u8 rsvd:6;
> +
> +	u8 red_green;
> +	u8 blue_white;
> +	u8 red_x;
> +	u8 red_y;
> +	u8 green_x;
> +	u8 green_y;
> +	u8 blue_x;
> +	u8 blue_y;
> +	u8 white_x;
> +	u8 white_y;
> +} __packed;
> +
> +struct bdb_chromaticity {
> +	struct chromaticity chromaticity[16];

...you can have luminance/gamma stuff here from 211+. Can be added later.

> +} __packed;
> +
>  /*
>   * Block 52 - MIPI Configuration Block
>   */

--=20
Jani Nikula, Intel
