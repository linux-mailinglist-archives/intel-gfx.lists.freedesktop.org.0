Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF9E8FE4C2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 12:56:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E93910E8DC;
	Thu,  6 Jun 2024 10:56:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9xPaOrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2354910E8CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717671359; x=1749207359;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Id3V5cSxIvtMFVyvby+rs624qjN74tdDpYxRPT693BY=;
 b=d9xPaOrDXKFTVv05dH8GVU5USFf8n+UvIoB3JZEfPN/K14xQRxp3MXQ2
 LjFNg1kVBKlNQqI9xlEZhiyTC2oQWtt1YG+gYD30M0IsWHdNBmWpeYiB2
 1baB0PHfY/6gskgujRgbWWRbOrNyvf9cUZ9A7gfiK3PQsi2gn0pSMSyuq
 z+Oj9FEBYg54Cc04OKYF6X9GL8DxgYmy3KntwxL7x02ZhFtq+4iRE+LNa
 HA71O/2LzEOq6kbPwcRAxwY1h4zDmAyxDb3FQ1O0jGS2CEY7pw/gR7Gxb
 p1dPcoEWrNLNEwwCNWfiLJXhhl5rvX8v+4QDpwPoeKVQYFvwcHBpCDTuy g==;
X-CSE-ConnectionGUID: BmHIQDX3RWWwyF6TQubeoQ==
X-CSE-MsgGUID: MAm/HHuSTMCA4mosErvJSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="39733927"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="39733927"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 03:55:58 -0700
X-CSE-ConnectionGUID: vVVBXWnjS6yXPZyiSbiGQA==
X-CSE-MsgGUID: Tf+MK2TISg+YQnWZr04kqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="68735542"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 03:55:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/bios: Define block 46 chromaticity
 coordinates properly
In-Reply-To: <20240605134756.17099-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240605134756.17099-1-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jun 2024 13:55:55 +0300
Message-ID: <878qzibaro.fsf@intel.com>
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

On Wed, 05 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The VBT spec does a very poor job of defining how the chromaticity
> coordinates in block 46 are laid out. After double checking the
> Windows implementation it turns out these more or less match the
> EDID definition, where the 10bit values are split into 2bit + 8bit
> chunks. Adjust our struct definition to reflect that.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 27 ++++++++++++-------
>  1 file changed, 17 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 862c5923b83d..da8694771f69 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1376,16 +1376,23 @@ struct chromaticity {
>  	u8 chromaticity_from_edid_base_block:1;
>  	u8 rsvd:6;
>=20=20
> -	u8 red_green;
> -	u8 blue_white;
> -	u8 red_x;
> -	u8 red_y;
> -	u8 green_x;
> -	u8 green_y;
> -	u8 blue_x;
> -	u8 blue_y;
> -	u8 white_x;
> -	u8 white_y;
> +	u8 green_y_lo:2;
> +	u8 green_x_lo:2;
> +	u8 red_y_lo:2;
> +	u8 red_x_lo:2;
> +	u8 white_y_lo:2;
> +	u8 white_x_lo:2;
> +	u8 blue_y_lo:2;
> +	u8 blue_x_lo:2;
> +
> +	u8 red_x_hi;
> +	u8 red_y_hi;
> +	u8 green_x_hi;
> +	u8 green_y_hi;
> +	u8 blue_x_hi;
> +	u8 blue_y_hi;
> +	u8 white_x_hi;
> +	u8 white_y_hi;
>  } __packed;
>=20=20
>  struct bdb_chromaticity {

--=20
Jani Nikula, Intel
