Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5467DC3A68C
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 11:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71B410E894;
	Thu,  6 Nov 2025 10:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kf2asWiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C9610E894;
 Thu,  6 Nov 2025 10:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762426669; x=1793962669;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=gwGKJ293G4H/MtZ7kp9H8fABd+s//XEM5eRKf6s1aUs=;
 b=Kf2asWiKfIRvSDC4VE92VbH/K+7ou6/zNdwEKqJ7FizhnwKVZTMxUJe0
 VJvFmVQxiHOpM0CxMnbaEL11fpjO/viT0uusqggh8OtlaMjiQCV9i2lGQ
 facjeklgSr7sp1RHQjIExZuejQ2MG/y6WcOnMHby1kOl7JScKq3DbQsxn
 7B+aTSxkpyw2JVHTnaH+HXcVCdzuwtTo2rtNUul35lSvpnCntgd1FCYWf
 AuBpenNmQK+WdkpQkagiXVX0cOUhnvb7q6CtsEaZkHRhD8GdgmyaE13kY
 n/JCPWWluofBPVtt/o5YfhshyZNzeGrU9Imon+wzrikVbSPMCrfh9+vGO A==;
X-CSE-ConnectionGUID: zLxna/8dTvOzo9INTzxiRA==
X-CSE-MsgGUID: kzpwlARzRqCU5S3GfZfsDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="90027618"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="90027618"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:57:49 -0800
X-CSE-ConnectionGUID: a0X7/oC3Q1eoeV4HJVCLSw==
X-CSE-MsgGUID: 2uwhqWPBTbenC2v/JX7I9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="188447781"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:57:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/7] drm/i915/cx0:
 s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
In-Reply-To: <20251105190433.16434-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-5-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 12:57:45 +0200
Message-ID: <d29d2d7f85abaf7eafce54261e4f04ccbcd6a345@intel.com>
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
> Include the units the in the define name for XELPDP_PORT_RESET_END_TIMEOUT
> to make it match all its other counterparts.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 55ce4f673c63..7c9c181aba8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2926,10 +2926,10 @@ static void intel_cx0_phy_lane_reset(struct intel=
_encoder *encoder,
>=20=20
>  	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display, port=
),
>  				    lane_phy_current_status,
> -				    XELPDP_PORT_RESET_END_TIMEOUT))
> +				    XELPDP_PORT_RESET_END_TIMEOUT_US))
>  		drm_warn(display->drm,
>  			 "PHY %c failed to bring out of Lane reset after %dms.\n",
> -			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
> +			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT_US);
>  }
>=20=20
>  static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, in=
t lane_count,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/=
gpu/drm/i915/display/intel_cx0_phy_regs.h
> index bd62c396c837..77244a5d52d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -80,7 +80,7 @@
>  #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
>  #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
>  #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
> -#define XELPDP_PORT_RESET_END_TIMEOUT			15
> +#define XELPDP_PORT_RESET_END_TIMEOUT_US		15
>  #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
>=20=20
>  #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004

--=20
Jani Nikula, Intel
