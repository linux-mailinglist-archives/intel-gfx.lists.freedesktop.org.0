Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE45A7BD50
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 15:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC27B10E1AF;
	Fri,  4 Apr 2025 13:14:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E88bWVjo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3970210E1AF
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Apr 2025 13:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743772443; x=1775308443;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2hL6oQVhruOtA1s6s0MfWMd0Iuj/kLcSXy+xgUljhJE=;
 b=E88bWVjo+shOUH7oWR6/+EUqihA0fAjYwEiDm1EmCP5UzLKBSeLrHCWV
 lRnA2+7kFdLA5ge85nG4cYecp1ucZPZ89GeTQmT6uzix58Ey8KYFx0DAM
 /YCeW/7mY/XAbxCnfY61ZNc9A6USRpsiED+SM4BkuvsWCAQ349jlo8V/i
 2AQEsYH2JVK+jEjX3PV/L3M+WHtq2WSgx7VvRPwKgxpYZ7wuwMzouCQmw
 tO+4G2WAIvBh1TywK7aPqxNfWA0qc/6sW3M6J39poHca8NeX1OpeP1gxN
 /rV/Vfkzi6wNMG6apKUXAV7QGqu/0ca4m/zGVprcP5yWdpAJKR8GCJKPs Q==;
X-CSE-ConnectionGUID: +Z/6hc7TS0qnfIpCxiP97w==
X-CSE-MsgGUID: OCKri4lmR0CMbaLgmqVKCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="62609484"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="62609484"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:13:58 -0700
X-CSE-ConnectionGUID: YsWzq/XERzeZZDrOOTmP2Q==
X-CSE-MsgGUID: KC64JK0+TcK1P6TZfY/wNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127121543"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:13:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/dsi: Fix off by one in BXT_MIPI_TRANS_VTOTAL
In-Reply-To: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
Date: Fri, 04 Apr 2025 16:13:53 +0300
Message-ID: <87iknkysq6.fsf@intel.com>
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

On Fri, 14 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> BXT_MIPI_TRANS_VTOTAL must be programmed with vtotal-1
> instead of vtotal. Make it so.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index af717df83197..661de51dfd22 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1060,7 +1060,7 @@ static void bxt_dsi_get_pipe_config(struct intel_en=
coder *encoder,
>  				              BXT_MIPI_TRANS_VACTIVE(port));
>  	adjusted_mode->crtc_vtotal =3D
>  				intel_de_read(display,
> -				              BXT_MIPI_TRANS_VTOTAL(port));
> +				              BXT_MIPI_TRANS_VTOTAL(port)) + 1;
>=20=20
>  	hactive =3D adjusted_mode->crtc_hdisplay;
>  	hfp =3D intel_de_read(display, MIPI_HFP_COUNT(display, port));
> @@ -1265,7 +1265,7 @@ static void set_dsi_timings(struct intel_encoder *e=
ncoder,
>  			intel_de_write(display, BXT_MIPI_TRANS_VACTIVE(port),
>  				       adjusted_mode->crtc_vdisplay);
>  			intel_de_write(display, BXT_MIPI_TRANS_VTOTAL(port),
> -				       adjusted_mode->crtc_vtotal);
> +				       adjusted_mode->crtc_vtotal - 1);
>  		}
>=20=20
>  		intel_de_write(display, MIPI_HACTIVE_AREA_COUNT(display, port),

--=20
Jani Nikula, Intel
