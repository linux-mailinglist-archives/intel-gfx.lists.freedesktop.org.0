Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E36C8BCABB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:35:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A4610F2B3;
	Mon,  6 May 2024 09:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WpWUDz3M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F3510F2B3
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988146; x=1746524146;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=R31aNFimFbYx6AF+u/9SPi3IP/wnY8YRmX87BDtUlvA=;
 b=WpWUDz3MEfd3unk/FIxHgU1mZ9Lj+fwNp5peEAlUzAPPvfE156K7qnYI
 JpjINZW1vkabMQ3qyDuGKwrra2P6y9fhkSHyhKsood78KrhWQyv0UN52/
 K5fF9QtTRonG69vwexsiIukJHSTf19o5A4ynmvgpYlrlUvvct5U3PmQWh
 0kzJ1aYnkbpMM8cB1ILjvSvI4xidwNfkmZuRWVHZ+R6iYUNeTO5A3XfeD
 SEZJCFMN7j4LHXovoeLWhFoI2ZhKEn8pd4L6z88cbBX7ltODmNFf5bx50
 2P/uLpar02Jodjobyfx7otkFyhDLMKikMOpA9R8mkPQst6dnctY+L9g6j Q==;
X-CSE-ConnectionGUID: xnfqbCYJRga/wTPL6Y8N5Q==
X-CSE-MsgGUID: BfvuT+koR7+nhM7gb7l1JA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10652861"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10652861"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:35:46 -0700
X-CSE-ConnectionGUID: uElpjaMeTMiaAtcc5Nymgg==
X-CSE-MsgGUID: fiYk/Gv4S+i6ctn5vcD71g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28213227"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:35:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 21/35] drm/i915/bios: Define VBT block 20 (OEM
 Customizable Modes) contents
In-Reply-To: <20240503122449.27266-22-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-22-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:35:41 +0300
Message-ID: <87zft3mgeq.fsf@intel.com>
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
> Define the contents of VBT block 20 (OEM Customizable Modes).
> Each entry is either 26 or 28 bytes, depending on the BDB version.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 30d60835e4d0..a61ae39196b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -897,6 +897,30 @@ struct bdb_display_remove_old {
>  	struct display_remove_entry_old table[];
>  } __packed;
>=20=20
> +/*
> + * Block 20 - OEM Customizable Modes
> + */
> +
> +struct oem_mode {
> +	u8 enable_in_vbios:1;
> +	u8 enable_in_os:1;
> +	u8 enable_in_gop:1;					/* 207+ */
> +	u8 reserved:5;
> +	u8 display_flags;					/* ???-216 */
> +	u16 x_res;
> +	u16 y_res;
> +	u8 color_depth;
> +	u8 refresh_rate;
> +	struct bdb_edid_dtd dtd;
> +	u16 display_flags_2;					/* 217+ */
> +} __packed;
> +
> +struct bdb_oem_custom {
> +	u8 num_entries;
> +	u8 entry_size;
> +	struct oem_mode modes[];
> +} __packed;
> +
>  /*
>   * Block 22 - SDVO LVDS General Options
>   */

--=20
Jani Nikula, Intel
