Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A378AC6F7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:27:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747E61128B2;
	Mon, 22 Apr 2024 08:27:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h789H2te";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7CD1128B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774441; x=1745310441;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kjvSnm994sqhYqOrHxGrAS4nWoibU7Dri7EIneACUiw=;
 b=h789H2te43KZ9O23799afn78K7XCnrIVs8xwLUtesy7+OngVbZ3Kcw62
 9yb2UmHW3BZwfKks034bwsj09w0nXCdDk5Yovqyq2x94pmvC+HzNL7aF/
 u2qfWW4Mt0608IwtU6jw3FGTT6UuO8DBfrY4QMKS3S2eiTL09TzqolL9H
 Pao0ajQja7YHpAL8BjfsSqfV7Vf4rP5ImCVaMUJiAHPZ+y8+Ba1eenW/1
 KRmzTpJPSZeFRKsUCHeaGQ0p438hHB3vToVTaJoTlHImsp8twXFZMOWXs
 IxW72EHF5hvhoKYlB8kgJB0Wyhhx82PpbIV6CQiv1OliKCWs4+MnZydw+ g==;
X-CSE-ConnectionGUID: Ey9vsRd8TPa6oHxt8ow84w==
X-CSE-MsgGUID: gjn/1Fd1Q4G+h+HTsE3oMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="13088818"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="13088818"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:27:20 -0700
X-CSE-ConnectionGUID: 6SREXkeEQh6q4CzJEOyUvg==
X-CSE-MsgGUID: q8eIrt3XRd+UFBQmHX2j4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23989441"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:27:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: Re: [PATCH] drm/i915/display: Fixed the main link lost in MST
In-Reply-To: <20240422075514.1529260-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422063300.1459712-1-gareth.yu@intel.com>
 <20240422075514.1529260-1-gareth.yu@intel.com>
Date: Mon, 22 Apr 2024 11:27:15 +0300
Message-ID: <87r0exvm3g.fsf@intel.com>
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

On Mon, 22 Apr 2024, gareth.yu@intel.com wrote:
> From: Gareth Yu <gareth.yu@intel.com>
>
> Re-train the main link when the sink asserts a HPD for the main lnk=20
> lost.

This is a completely inadequate commit message for such a fundamental
change.

Preferrably we'd additionally like a bug filed at fdo gitlab, with debug
logs that show the situation, etc.

> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Superfluous space before ":".

> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e05e25cd4a94..db5d4fa8340b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5849,8 +5849,13 @@ intel_dp_detect(struct drm_connector *connector,
>  	/* Can't disconnect eDP */
>  	if (intel_dp_is_edp(intel_dp))
>  		status =3D edp_detect(intel_dp);
> -	else if (intel_digital_port_connected(encoder))
> +	else if (intel_digital_port_connected(encoder)) {
>  		status =3D intel_dp_detect_dpcd(intel_dp);
> +		if (status =3D=3D connector_status_connected && intel_dp->is_mst &&
> +		    !intel_dp_mst_link_status(intel_dp))
> +			if (intel_dp_retrain_link(encoder, ctx))
> +				status =3D connector_status_disconnected;
> +	}

If we were to add this, this is definitely not the place. You can't look
at ->is_mst for clues here because it's between mst detect and
configure. We might be unconfiguring mst. This also adds unnecessary
checks for status =3D=3D connected, when it's all handled below with an
early exist for disconnected, etc. And there's a path for retrain too.

All of this has to fit the existing paths nicely instead of just shoving
it here at random.


BR,
Jani.

>  	else
>  		status =3D connector_status_disconnected;

--=20
Jani Nikula, Intel
