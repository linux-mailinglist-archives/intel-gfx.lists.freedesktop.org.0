Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D421C3A6D8
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 12:01:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45B410E89B;
	Thu,  6 Nov 2025 11:01:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LcjMtW1n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3498F10E89B;
 Thu,  6 Nov 2025 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762426887; x=1793962887;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wMiM+Xhv/CIGu3a1/mVCkSrnzgfvPBskh5NJUdHVOeU=;
 b=LcjMtW1nnovKWdef5H9lyMDYd84ZyRJp3uQ1tMGMMJGCFoPlCnCg04K2
 rgV4BhRp8AsckmmguZMRQfZKaEI2FvVvoPuY8yExjg75T6h9m+e+K0koX
 p0gU7ep94WIsJI/ZYPEWASlxvPEF5tStM6DpN/yfC7mpJebHvRQ6KHl5S
 +5hsWAHaKo0SSYa0vGbVCt2RQHcDKx40qV4PlY3OvDv5m8bMol7kWR2/p
 0X9vCC4peqHLmcfv2zDcYjsUVrztHCSnYS6CdSIEaPRrg4uZGpA5li4m3
 om+s4XhncpDeyZSHGX+pIBLunG7dpJSFfmJks3liBNhcVPrTWDES9Gz4m w==;
X-CSE-ConnectionGUID: A3IrknQtT1SFupEb9GVQbQ==
X-CSE-MsgGUID: jHy+XLLESrOpyCZIOc1c6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64595338"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64595338"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:01:27 -0800
X-CSE-ConnectionGUID: JVohycUrSSO4ivlIuLp+Mw==
X-CSE-MsgGUID: /sYhooq8T8CrWFxFOr4E/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="218487220"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 03:01:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/7] drm/i915/pmdemand: Use the default 2 usec fast
 polling timeout
In-Reply-To: <20251105190433.16434-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-8-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 13:01:22 +0200
Message-ID: <56e13496c2b39c0ca4b519fff11320e6b31c13ab@intel.com>
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

On Wed, 05 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> For whatever unknown reason the pmdemand code is using a custom
> 50 usec fast polling timeout instead of the normal 2 usec
> value. Switch to the standard value to get rid of the special
> case.
>
> The eventual aim is to get rid of the fast vs. slow timeout
> entirely and switch over to poll_timeout_us().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/=
drm/i915/display/intel_pmdemand.c
> index f52abd4e2eb0..22d8f720ae7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -464,7 +464,7 @@ static void intel_pmdemand_poll(struct intel_display =
*display)
>=20=20
>  	ret =3D intel_de_wait_custom(display, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1),
>  				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
> -				   50, timeout_ms, &status);
> +				   2, timeout_ms, &status);
>=20=20
>  	if (ret =3D=3D -ETIMEDOUT)
>  		drm_err(display->drm,

--=20
Jani Nikula, Intel
