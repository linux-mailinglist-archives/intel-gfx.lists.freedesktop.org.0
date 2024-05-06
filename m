Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A6E8BCAC4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C477811226F;
	Mon,  6 May 2024 09:36:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VETOD91Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D816511226F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714988209; x=1746524209;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=K3FxDGe+CD7fK7LoMYlHjqVa8E49cb+ocRYAFzLZwlA=;
 b=VETOD91Zwft4Pvw7vvuMrXQtC8kYUGSpH7NtFm5p7x/wQp+hCX4jPa+s
 f6Q2gX+AixBfbu4FeDdCNmOF+tVieh6AOJ/UKML3G+JXz1nnxKatppNYq
 rloc1UHSBJmKqQwGOnWcnr6hvvMTn4Lfxz3GFNsBeq6fYzAPrl5rzKCjd
 w5/bGRPwqJ2NW9ETaWXbSxOxUcNK7z2P38e8FQRo0RYLGJXVb3K6RX8De
 VTtUgGgi1R6AUzgz2T2/WMYyDXAJXweJFCn98DTXGRx1L5ySngCgL83ne
 RHw2jHy5KysiBvFRFW1t8OKT+NZHg7TuBwqOOreMR24bIlu6plGQjyjrx Q==;
X-CSE-ConnectionGUID: kc7iA8bVQeabGH2xPocZqQ==
X-CSE-MsgGUID: WOgVC22CRBGtfCD959pzKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10575809"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10575809"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:36:48 -0700
X-CSE-ConnectionGUID: iQkbsiFzSpyn3GAVbKrhTA==
X-CSE-MsgGUID: YnWlubvgR0OsyKIutpPA4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32589720"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:36:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 25/35] drm/i915/bios: Define VBT block 26 (TV Options)
 contents
In-Reply-To: <20240503122449.27266-26-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-26-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:36:43 +0300
Message-ID: <87wmo7mgd0.fsf@intel.com>
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
> Define the contents of VBT block 26 (TV Options).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index c6d03905593d..1b94d4aba00a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -988,6 +988,18 @@ struct bdb_sdvo_lvds_pps {
>  	struct sdvo_lvds_pps pps[4];
>  } __packed;
>=20=20
> +/*
> + * Block 26 - TV Options Block
> + */
> +
> +struct bdb_tv_options {
> +	u16 underscan_overscan_hdtv_component:2;
> +	u16 rsvd1:10;
> +	u16 underscan_overscan_hdtv_dvi:2;
> +	u16 add_modes_to_avoid_overscan_issue:1;
> +	u16 d_connector_support:1;
> +} __packed;
> +
>  /*
>   * Block 27 - eDP VBT Block
>   */

--=20
Jani Nikula, Intel
