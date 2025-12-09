Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D894DCAFB48
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4779410E50D;
	Tue,  9 Dec 2025 10:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R0Jxdbmg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E35F10E50C;
 Tue,  9 Dec 2025 10:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765277863; x=1796813863;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/lfeOiqQImc95S9+Nb2QeNy1u0fOks95bjY7l3socZU=;
 b=R0JxdbmgX5q7VGt09VWOOAX8rFcs4HOb1xzSY0ZspAG9f18d8j3SS3hP
 SwqI7N2Y0KrAtiNbxbFrKIZIegddNbmRkwaPMUQSrTvweUuZzQbZ4nM9K
 DkKanQ2cQeeGKVTp8D/HEfo+ay18HqlkXP09v6cV64IEyXGS49B9bSyoz
 pe7bR97STkKRMYbZijIZ0O7sH7vCnTbegWrTGBSzSk+1ACm6cm8Jdorqg
 RZGPTOUEGNmPTEPPJmXc9uRRLXHdhMlhNlVMhqfPx7ZG0rmRy2AOZSYiS
 8rrEjz1eraww+mfBrjgDRhjmPmECwyzTjBKJqE0WQOriR9oblWjc7bTsU w==;
X-CSE-ConnectionGUID: lnbVC5TQTwePL/QaintwKg==
X-CSE-MsgGUID: Iqm1xQvAQEew+jRcX7Rzng==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="70852205"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="70852205"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:57:43 -0800
X-CSE-ConnectionGUID: bLTXDApPR1WO6gw3ekImVA==
X-CSE-MsgGUID: XvjmwatiSEOZMSWupufeMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="219538440"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:57:41 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 16/19] drm/i915/crt: Extract
 intel_crt_sense_above_threshold()
In-Reply-To: <20251208182637.334-17-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-17-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:57:38 +0200
Message-ID: <61b789d6739e227fc78cf9d70fbb82228e70b350@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the CRT sense check into a helper instead of repeating
> the same thing twice.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 6f216ba887bc..b71a8d97cdbb 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -693,6 +693,11 @@ static bool intel_crt_detect_ddc(struct drm_connecto=
r *connector)
>  	return ret;
>  }
>=20=20
> +static bool intel_crt_sense_above_threshold(struct intel_display *displa=
y)
> +{
> +	return intel_vga_read(display, VGA_IS0_R, true) & (1 << 4);
> +}
> +
>  static enum drm_connector_status
>  intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  {
> @@ -704,7 +709,6 @@ intel_crt_load_detect(struct intel_crt *crt, enum pip=
e pipe)
>  	u32 vsample;
>  	u32 vblank, vblank_start, vblank_end;
>  	u32 dsl;
> -	u8 st00;
>  	enum drm_connector_status status;
>=20=20
>  	drm_dbg_kms(display->drm, "starting load-detect on CRT\n");
> @@ -738,8 +742,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pip=
e pipe)
>  		 * border color for Color info.
>  		 */
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
> -		st00 =3D intel_vga_read(display, VGA_IS0_R, true);
> -		status =3D ((st00 & (1 << 4)) !=3D 0) ?
> +
> +		status =3D intel_crt_sense_above_threshold(display) ?
>  			connector_status_connected :
>  			connector_status_disconnected;
>=20=20
> @@ -779,15 +783,13 @@ intel_crt_load_detect(struct intel_crt *crt, enum p=
ipe pipe)
>  		while ((dsl =3D intel_de_read(display, PIPEDSL(display, pipe))) <=3D v=
sample)
>  			;
>  		/*
> -		 * Watch ST00 for an entire scanline
> +		 * Watch sense for an entire scanline
>  		 */
>  		detect =3D 0;
>  		count =3D 0;
>  		do {
>  			count++;
> -			/* Read the ST00 VGA status register */
> -			st00 =3D intel_vga_read(display, VGA_IS0_R, true);
> -			if (st00 & (1 << 4))
> +			if (intel_crt_sense_above_threshold(display))
>  				detect++;
>  		} while ((intel_de_read(display, PIPEDSL(display, pipe)) =3D=3D dsl));

--=20
Jani Nikula, Intel
