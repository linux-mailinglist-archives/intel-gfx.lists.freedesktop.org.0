Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9488BCB06
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:44:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7E2E10EF07;
	Mon,  6 May 2024 09:44:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ty7GnU7B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E20A10EF07
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988658; x=1746524658;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=T5LsJ2RUPV0KsoGkORN+87U/n8mWSCHYX9sFbFGQhBo=;
 b=Ty7GnU7BbnLnGcI2zHKdWVK0A1N/lDBo79UXQUFJ6MkbrAnozBorYjAM
 MXhbo+eEc2hB8moWs84vBvoFTfoQl3iaCUgvMLIj2mIf4Jfbcf79hXJy8
 0AGeeXimCqF1bqkQZkvAxknTpXH3Wf3R1Lp/s5aUvzdNSy+RXwSwVHZyR
 FduSAOuXgGW93us18YLDDcKcip8SfG141UvGsP6YD8vPqsjrNjMzjyvtS
 aOQDVNw28Sn1Ck0YqvqMIhfwaqzD6c3hOvC79Qu7TuJT2SRUL9BzB/SNw
 EQB2TQBApEpWXxJjnl96AP1phS04g2EUS+EW0b6pUGSduuTCcRyCLMHFr w==;
X-CSE-ConnectionGUID: MOQs0It+T2OWRI5a+3eymg==
X-CSE-MsgGUID: pYYwYgX+S1SJw9F14b+t6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10883714"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10883714"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:44:18 -0700
X-CSE-ConnectionGUID: NY0nv9uQSAeEPsqFXHri9Q==
X-CSE-MsgGUID: aS4kCaT4RgCxgSNHa1UK3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28630163"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:44:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 32/35] drm/i915/bios: Define VBT block 50 (MIPI) contents
In-Reply-To: <20240503122449.27266-33-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-33-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:44:12 +0300
Message-ID: <87fruvmg0j.fsf@intel.com>
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
> Define the contents of VBT block 50 (MIPI).
>
> This was some easly attempt at a MIPI DSI stuff. I'm not sure
> this was ever actually used (I certainly don't have any VBTs
> with this block), but here's some kind of definition for it
> anyway.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 0e5a2bf429f4..3bcb9fb5b706 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -179,6 +179,7 @@ enum bdb_block_id {
>  	BDB_LFP_POWER			=3D 44,
>  	BDB_EDP_BFI			=3D 45, /* 160+ */
>  	BDB_CHROMATICITY		=3D 46, /* 169+ */
> +	BDB_MIPI			=3D 50, /* 170-172 */
>  	BDB_FIXED_SET_MODE		=3D 51, /* 172+ */
>  	BDB_MIPI_CONFIG			=3D 52, /* 175+ */
>  	BDB_MIPI_SEQUENCE		=3D 53, /* 177+ */
> @@ -1393,6 +1394,52 @@ struct bdb_chromaticity {
>  	struct chromaticity chromaticity[16];
>  } __packed;
>=20=20
> +/*
> + * Block 50 - MIPI Block
> + */
> +
> +struct mipi_data {
> +	u16 panel_identifier;
> +	u16 bridge_revision;
> +
> +	u32 dithering:1;
> +	u32 pixel_format_18bpp:1;
> +	u32 reserved1:1;
> +	u32 dphy_params_valid:1;
> +	u32 reserved2:28;
> +
> +	u16 port_info;
> +
> +	u16 reserved3:2;
> +	u16 num_lanes:2;
> +	u16 reserved4:12;
> +
> +	u16 virtual_channel_num:2;
> +	u16 video_transfer_mode:2;
> +	u16 reserved5:12;
> +
> +	u32 dsi_ddr_clock;
> +	u32 renesas_bridge_ref_clock;
> +	u16 power_conservation;
> +
> +	u32 prepare_count:5;
> +	u32 reserved6:3;
> +	u32 clk_zero_count:8;
> +	u32 trail_count:5;
> +	u32 reserved7:3;
> +	u32 exit_zero_count:6;
> +	u32 reserved8:2;
> +
> +	u32 high_low_switch_count;
> +	u32 lp_byte_clock;
> +	u32 clock_lane_switch_time_counter;
> +	u32 panel_color_depth;
> +} __packed;
> +
> +struct bdb_mipi {
> +	struct mipi_data mipi[16];
> +} __packed;
> +
>  /*
>   * Block 51 - Fixed Set Mode Table
>   */

--=20
Jani Nikula, Intel
