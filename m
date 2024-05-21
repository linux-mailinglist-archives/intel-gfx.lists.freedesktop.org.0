Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2CD8CAB3C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 11:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDADB10E033;
	Tue, 21 May 2024 09:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xm8yjzsv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3EA10E033
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 09:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716285017; x=1747821017;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1CxEX2RyamEycTUcvr7zygXR0VlQC9PK42Mopcg0kb0=;
 b=Xm8yjzsvDaEPDKyKtgTiQJY63lSIbgJV/rlprxcLylsbKRMc5+XteMka
 Bd9lUJg2B5xbE2RkbHvAS6BhKI5rwRy6rXdwiMx54Ak+KK/py7Aqndaf1
 lbi/XdMNzo+0NkQkD6yHTVqrk8RLNsxa2kcJ+waXUFpUUiDK9/1wwfL7O
 DJlFXE2DqtQsMGuNHTZbmXwoY2NJthUyatbYjqB9F6dJO1uSFOiIbTgA0
 Ov3+kx1yM3AjiUn62vemxsXGWxlyoQDvLmHu/Fu8Hi5bITgtOCidR8pO7
 /k9DfFy4+MNSVUhkDknwF3dJvDEwxckl/1JaKJVvlmsm8Htk1/BC5v1eM Q==;
X-CSE-ConnectionGUID: gZjGGzczRuOwSAAFGkTiHg==
X-CSE-MsgGUID: CPwfts33Rs2/gGyhndn+Gg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12577300"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12577300"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 02:50:15 -0700
X-CSE-ConnectionGUID: 8pgKkBCOSEWvWWWrKr37Hg==
X-CSE-MsgGUID: 5WQ3SOtVSXOYI4fPsTJKjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="32762531"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 02:50:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915: Bump max TMDS bitrate to 6 Gbps on
 ADL-S/ADL-P/DG2+
In-Reply-To: <20240520164732.3682-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
 <20240520164732.3682-1-ville.syrjala@linux.intel.com>
Date: Tue, 21 May 2024 12:50:10 +0300
Message-ID: <87v837qyst.fsf@intel.com>
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

On Mon, 20 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Bspec lists the mas TMDS bitrate as 6 Gbps on ADL-S/ADL-P/DG2.
> Bump our limit to match.
>
> v2: Bump for ADL-S as well (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 0faf2afa1c09..9ac670a40bc1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1784,7 +1784,9 @@ static int intel_hdmi_source_max_tmds_clock(struct =
intel_encoder *encoder)
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int max_tmds_clock, vbt_max_tmds_clock;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 13 || IS_ALDERLAKE_S(dev_priv))
> +		max_tmds_clock =3D 600000;
> +	else if (DISPLAY_VER(dev_priv) >=3D 10)
>  		max_tmds_clock =3D 594000;
>  	else if (DISPLAY_VER(dev_priv) >=3D 8 || IS_HASWELL(dev_priv))
>  		max_tmds_clock =3D 300000;

--=20
Jani Nikula, Intel
