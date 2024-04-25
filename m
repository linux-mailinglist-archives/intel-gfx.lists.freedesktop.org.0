Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5268B2042
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 13:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969B311A3C0;
	Thu, 25 Apr 2024 11:30:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UzN7Vvua";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52BE11A3C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Apr 2024 11:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714044649; x=1745580649;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cZrrV1AfIiIZ7Fa43pvQvT9GjRcvfbijSgL4e6S5tek=;
 b=UzN7Vvuak3wKuMwx6m1yecSsBFUrODMQG3V2EXMGPQoij9OpE6ufZ2to
 zZ3UlQW1xn6zNhqKFpjhlCtJWGLXEzCsdu5htKUG6TiuGbAnvv/DbFbvp
 Yv8xAhnSEJoxPOOqpSX5+7y3dsgOhxvhkUTD//viyGYyNsEtaqnEUgbQb
 wWLqbtTCBvDax6NgAKjCymW8c7rJ1udZK/axFAVJgdFA1kljEo58adACe
 CrmgksBrgtszSsxLIwxutpR6fWAMN7z96mwBTUZV5uLxnyIqT5jsyvI0v
 yNzrHj1iDKQNMMthtdP4z2veQIUT71sT7vGXMwvRe/Jy7pOMDJQ6fCT0l w==;
X-CSE-ConnectionGUID: xzhiGXLXSBumwdSv8hSdHQ==
X-CSE-MsgGUID: Ct5uDbarSRKxa7VzH7zRMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="20874038"
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; d="scan'208";a="20874038"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 04:30:48 -0700
X-CSE-ConnectionGUID: xYRIb9ddQeO/cMz3rdScFw==
X-CSE-MsgGUID: IF/tXnx7TwO0+CUpq0nRxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,229,1708416000"; d="scan'208";a="56219797"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 04:30:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: Re: [PATCH] drm/i915/display: Fixed the main link lost in MST
In-Reply-To: <20240425033426.2269822-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422063300.1459712-1-gareth.yu@intel.com>
 <20240425033426.2269822-1-gareth.yu@intel.com>
Date: Thu, 25 Apr 2024 14:30:43 +0300
Message-ID: <87il05ptlo.fsf@intel.com>
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

On Thu, 25 Apr 2024, gareth.yu@intel.com wrote:
> From: Gareth Yu <gareth.yu@intel.com>
>
> Re-train the main link when the sink asserts a HPD for the main lnk
> lost.

NAK.

Please read the review comments.

BR,
Jani.

>
> v4:  detect the main link state by intel_dp_needs_link_retrain
>      instead of intel_dp_mst_link_status because the main link
>      state can't detect correctly sometimes by
>      intel_dp_mst_link_status
>
> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e05e25cd4a94..e1b60303b256 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5849,8 +5849,14 @@ intel_dp_detect(struct drm_connector *connector,
>  	/* Can't disconnect eDP */
>  	if (intel_dp_is_edp(intel_dp))
>  		status =3D edp_detect(intel_dp);
> -	else if (intel_digital_port_connected(encoder))
> +	else if (intel_digital_port_connected(encoder)) {
>  		status =3D intel_dp_detect_dpcd(intel_dp);
> +		if (status =3D=3D connector_status_connected && intel_dp->is_mst &&
> +		    intel_dp_needs_link_retrain(intel_dp)) {
> +			if (intel_dp_retrain_link(encoder, ctx))
> +				status =3D connector_status_disconnected;
> +		}
> +	}
>  	else
>  		status =3D connector_status_disconnected;

--=20
Jani Nikula, Intel
