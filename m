Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6AC8ACC01
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 13:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32301129E6;
	Mon, 22 Apr 2024 11:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PDhfZ5Lz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD0321129E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 11:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713785196; x=1745321196;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Dv39KhYadM5zNUgrqFtAHl4CFq3kfCPN15PTRA5XE3o=;
 b=PDhfZ5LzoV+Xqw3YCJzLy2jY8m8U5JFEpMMEz19jYBeGpPt8lZOJ6zP1
 mJLPJxaA8xmKOciREipga0nzZSRSkCSKa3o+KQukOMiK5F9UBumNp1JGR
 iLS7D2mmdDCQ4fmGXfg4Z84Nly/cbIG5DjWzr8/Znfm0StGl2/NQ3ZRcw
 /ES2HO3Uc7G+ApxhKkW6ecbuRGR5Ig6MoYSr8v2GMevhazwB8vD7FMjnm
 PtTnpdIxWUcCWNGaGeXLkUTNgoo0S1GRCJJoWzXO9FWxHHAxsylU2KF6f
 JoD49vlWRgYyo4WZFfwoIDHBjH6atSo2/fPYwv4GrdTSbIqSE15ycNCNL A==;
X-CSE-ConnectionGUID: /kct/ZoHTKu4ZQmPqVs1TA==
X-CSE-MsgGUID: oQCBwpDvQ0W0+6TqJyj2mQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9432609"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9432609"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 04:26:35 -0700
X-CSE-ConnectionGUID: mKfml+/JS2mgjk6VIvLp/w==
X-CSE-MsgGUID: EYMGeNffTa+yKplOma77WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="61433517"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 04:26:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: Re: [PATCH] drm/i915/display: Fixed HDMI can't show up behind a
 USB-C dock station
In-Reply-To: <20240422094451.1566990-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422063300.1459712-1-gareth.yu@intel.com>
 <20240422094451.1566990-1-gareth.yu@intel.com>
Date: Mon, 22 Apr 2024 14:26:30 +0300
Message-ID: <87o7a1tz89.fsf@intel.com>
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
> Re-train the main link once HPD happens without link status

Please address review before sending more versions.

Please include a patch changelog, and indicate patch version with git
send-email/format-patch -vN option because otherwise we have no clue.

BR,
Jani.

>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10902
> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e05e25cd4a94..52ab549e6d08 100644
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
>  	else
>  		status =3D connector_status_disconnected;

--=20
Jani Nikula, Intel
