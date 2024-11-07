Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060AD9C0103
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FDD10E7CB;
	Thu,  7 Nov 2024 09:20:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqjxxKXR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B76910E7CB
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971231; x=1762507231;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=bRSnJOhjvRVtmJU86avaVYc/1MlEKchlilNS8XsG8jg=;
 b=GqjxxKXRvrZHlWGzY1uLMRpUh1r4/4K41MOPYogxvaFOIMWXi9I8LBsS
 juLgAMFU54NSNt5/jhJ1i8pMQAbm9Ei5BLPQSHpoaK0RiXSs2TLNC8MNR
 pcewGFvNP5h9yBotMEmMVmt/tmJbPbz6UqihbghoMlQ4ZvEm56dxES2kN
 WjAyGxvfxBLEbcHK+ya1OrVmX9LtqfACDbecYddFO7iopQnPjz4448iWT
 Q4qHV4I8QwGFLX3dYWyxZ0w9Bqskh8k9jYkovHdpofd/M2S95+KZYOvdD
 Iht8PYMeD3PG03kqQ5HrdWscplsBJ0WAu9JYNNAaagnjzsYLhr/solRTm A==;
X-CSE-ConnectionGUID: t3o3oZFTQJqg0uxTaa8lyQ==
X-CSE-MsgGUID: KvrfFPxuTZWISxBtaaB0PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="41399284"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="41399284"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:20:28 -0800
X-CSE-ConnectionGUID: 3NZqsvcgQ+mC3EDlbgA9ig==
X-CSE-MsgGUID: hJzPcQODTTKJxzNsaq1gnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="89806488"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:20:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 7/8] drm/i915/pps: Extract pps_units_to_msecs()
In-Reply-To: <20241106215859.25446-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-8-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:20:24 +0200
Message-ID: <8734k3flif.fsf@intel.com>
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

On Wed, 06 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add pps_units_to_msecs() as the counterpart to msecs_pps_units_to().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 5be2903c6aaf..378a525eec16 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1468,6 +1468,12 @@ static int msecs_to_pps_units(int msecs)
>  	return msecs * 10;
>  }
>=20=20
> +static int pps_units_to_msecs(int val)
> +{
> +	/* PPS uses 100us units */
> +	return DIV_ROUND_UP(val, 10);
> +}
> +
>  static void pps_init_delays_bios(struct intel_dp *intel_dp,
>  				 struct intel_pps_delays *bios)
>  {
> @@ -1554,7 +1560,7 @@ static void pps_init_delays(struct intel_dp *intel_=
dp)
>  	assign_final(power_cycle);
>  #undef assign_final
>=20=20
> -#define get_delay(field)	(DIV_ROUND_UP(final->field, 10))
> +#define get_delay(field)	pps_units_to_msecs(final->field)
>  	intel_dp->pps.panel_power_up_delay =3D get_delay(power_up);
>  	intel_dp->pps.backlight_on_delay =3D get_delay(backlight_on);
>  	intel_dp->pps.backlight_off_delay =3D get_delay(backlight_off);

--=20
Jani Nikula, Intel
