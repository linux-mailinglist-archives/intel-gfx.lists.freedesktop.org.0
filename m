Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1571986C784
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 11:58:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A9C10E405;
	Thu, 29 Feb 2024 10:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NbHhNUPq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E96E10E405
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 10:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709204313; x=1740740313;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uzkB99g6Kc0GB83Fi5DBSNcVubhN/0z4ljLDm4ZpAVQ=;
 b=NbHhNUPq3WG5OTvsfjrNg81UllfZj72myYnl1+85dz1lOeZsMPAUKic1
 xXscbma4lkhWydnYjNuD8wxSHfDRw8MEzKsD2yeOn1dYh5Do+4C+l0+38
 JLDZZGgrY3k68GdsSKuGzwSGymR29IpqrB9BBFoLmCBdCR7CI5QauCYMK
 7Bfe5qt2J6hycGmEBnAyArov2vo+uBXC6ptDQ/JAl0JXMfzyGb9c6OXb4
 G3DxGrcyP0jlloFjt3NtW3IRYkjRxZluTZbkzYWISDiuBHe7ati2pj6FU
 11oSQ0/R/xpHM5IqljRK8/Nnc39AjPgGoD3bbmJH/kDwRb0b8NiIhL6sJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="7494143"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="7494143"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 02:58:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="8147041"
Received: from smatua-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.47.143])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 02:58:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v2] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
In-Reply-To: <20240229043716.4065760-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240229043716.4065760-1-animesh.manna@intel.com>
Date: Thu, 29 Feb 2024 12:58:26 +0200
Message-ID: <87il278rl9.fsf@intel.com>
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

On Thu, 29 Feb 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Move psr_init_dpcd() from init-connector to connector-detect
> function. The dpcd probe for checking panel replay capability
> for external dp connector is causing delay during boot which can
> be optimized by moving dpcd probe to connector specific detect().
>
> v1: Initial version.
> v2: Add details in commit description. [Jani]
>
> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10284

Fixes: cceeaa312d39 ("drm/i915/panelreplay: Enable panel replay dpcd initia=
lization for DP")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 3 +++
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6ece2c563c7a..b485ec320085 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5709,6 +5709,9 @@ intel_dp_detect(struct drm_connector *connector,
>  	if (ret =3D=3D 1)
>  		intel_connector->base.epoch_counter++;
>=20=20
> +	if (!intel_dp_is_edp(intel_dp))
> +		intel_psr_init_dpcd(intel_dp);
> +
>  	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
>=20=20
>  	intel_dp_configure_mst(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 72cadad09db5..6927785fd6ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2883,9 +2883,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
>  		return;
>=20=20
> -	if (!intel_dp_is_edp(intel_dp))
> -		intel_psr_init_dpcd(intel_dp);
> -
>  	/*
>  	 * HSW spec explicitly says PSR is tied to port A.
>  	 * BDW+ platforms have a instance of PSR registers per transcoder but

--=20
Jani Nikula, Intel
