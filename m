Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53E6C3C190
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3DF10E929;
	Thu,  6 Nov 2025 15:37:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lQb6z9uG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC5610E915;
 Thu,  6 Nov 2025 15:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762443453; x=1793979453;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pEjliWCqBiaL9VJL2aQFY8qHa6Os4CVkczzYbenQ8rs=;
 b=lQb6z9uGEbQAEVhS4l7ar40fVAYRWex7xuGmNKwtJlPMq54YGehb05/S
 2MsjQ3OsaHg+5EKMez4oAjXckx8MMnqLhbx2kHRNMx++Drms91hMhKk+5
 XOdX+Re+lyKxTMQw+GTahMk3am0u+uWnW4dINVYRXolUzDdfCpPKp2DrP
 ObE7NtI8RwxdjT++YFVVPIElsdMAD25Ie5CWG22GuC6VJHKO6IMkk5vSc
 G6tuYyyvWpfWB5hyiigi2/OwW5OOae6laxPtGmjoeC5i9Oyjey5lEsm0D
 Sz7vP1EfJb6IbJCMJZlGLRpNEbyyNOpdYJHTpfuXjam5KYesnsV4OleC1 w==;
X-CSE-ConnectionGUID: uBqaOEbbRmu5RVPQmryQog==
X-CSE-MsgGUID: CBv2awCzQX2VKDcK/JP57A==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="90052877"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="90052877"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:37:32 -0800
X-CSE-ConnectionGUID: rnDHLZ/JSDW2ivgQJrZapA==
X-CSE-MsgGUID: g/MRsFiWR3uUjdVThygPYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187502785"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:37:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 04/10] drm/i915/cx0: Replace
 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US with
 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS
In-Reply-To: <20251106152049.21115-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <20251106152049.21115-5-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 17:37:28 +0200
Message-ID: <95be4a40a06ce830f61210d380b84bc7b938425f@intel.com>
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

On Thu, 06 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> There was a completely unjustified change to the cx0 powerdown
> timeout, and the way it was done now prevents future conversion
> to poll_timeout_us().
>
> Assuming there was some reason the bigger timeout let's nuke
> the old short timeout (XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US)
> nd replace it with the bigger timeout
> (XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS).

Might mention the 2 us short timeout is to be in line with
intel_wait_for_register(). Though xe doesn't use that anyway.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> v2: Go for the longer (ms) timeout in case it actually matters
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index ddc26e383714..e8a96a60fdd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2830,7 +2830,7 @@ void intel_cx0_powerdown_change_sequence(struct int=
el_encoder *encoder,
>  	/* Update Timeout Value */
>  	if (intel_de_wait_custom(display, buf_ctl2_reg,
>  				 intel_cx0_get_powerdown_update(lane_mask), 0,
> -				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
> +				 2, XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS, NULL))
>  		drm_warn(display->drm,
>  			 "PHY %c failed to bring out of lane reset\n",
>  			 phy_name(phy));
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/=
gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 635b35669348..62db0fd99f4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -80,7 +80,7 @@
>  #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
>  #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
>  #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
> -#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
> +#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS		2
>  #define XELPDP_PORT_RESET_END_TIMEOUT			15
>  #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1

--=20
Jani Nikula, Intel
