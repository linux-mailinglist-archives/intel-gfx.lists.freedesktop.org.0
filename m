Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FAFB405F3
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 16:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF13010E737;
	Tue,  2 Sep 2025 14:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WJVQwItG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D408C10E733;
 Tue,  2 Sep 2025 14:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756821819; x=1788357819;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6B6BG4SRa1Dh4Y5Ex/TF12gH6/60+oDL1W1Skl2DpcE=;
 b=WJVQwItGTZDqGnJoPXk34HRahW4WdabZmjMVIVnOq4cQw1vegUZ818CC
 4SRavFIybGff8vHQZG8CE9LC+PpOEc1dIZlEwk/HZKk6tVKKPu/QWwbhH
 mlpMZMWdskupA7PuYkwfNqGTHiz7in7faMZlVp7F0Jvm1rWpVth+ep/Xa
 hOIav5CN4bwwV0xs86ayja8u41t2ePmFZR70672WfGPtkXlXPEZt7wAD8
 MSFsQugXgPZK+ZGdlHoPGarXYgbiB79JqwOMLK4hPGK3EuHNYLvwo0Xj7
 13nE4VFlKIfaRlF9kumAQNYR2eKepFbFGgEak+h8bCrayCRZlXxEBCpi9 Q==;
X-CSE-ConnectionGUID: IcLItJRbR1Gp4hzupZgP3Q==
X-CSE-MsgGUID: KlKyMebYSrmDAUUrGaV3+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="61738385"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="61738385"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:03:38 -0700
X-CSE-ConnectionGUID: uN0c6CRQQZ6PC4+MZXudYg==
X-CSE-MsgGUID: xpvTki+JRTqZRoj5DlsObQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175424157"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:03:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 8/8] drm/i915/dram: Print memory details even if
 something went wrong
In-Reply-To: <20250902133113.18778-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-9-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 17:03:33 +0300
Message-ID: <925eaff500dbb2cde4576ff63d06149b6cc70b0d@intel.com>
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

On Tue, 02 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Print the memory details even if the detection failed in some way
> but we continued the driver initialization anyway. It'll be easier
> to debug issues if we at least know what the final results were.
>
> And while at it also print the number of PSF GV points. Previously
> we only printed the QGV points.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915=
/soc/intel_dram.c
> index 38b7dd20b18d..149527827624 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -757,14 +757,15 @@ int intel_dram_detect(struct drm_i915_private *i915)
>  	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
>  		    intel_dram_type_str(dram_info->type));
>=20=20
> -	/* TODO: Do we want to abort probe on dram detection failures? */
> -	if (ret)
> -		return 0;
> -
> -	drm_dbg_kms(&i915->drm, "Num qgv points %u\n", dram_info->num_qgv_point=
s);
> -
>  	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
>=20=20
> +	drm_dbg_kms(&i915->drm, "Num QGV points %u\n", dram_info->num_qgv_point=
s);
> +	drm_dbg_kms(&i915->drm, "Num PSF GV points %u\n", dram_info->num_psf_gv=
_points);
> +
> +	/* TODO: Do we want to abort probe on dram detection failures? */
> +	if (ret)
> +		return 0;
> +
>  	return 0;
>  }

--=20
Jani Nikula, Intel
