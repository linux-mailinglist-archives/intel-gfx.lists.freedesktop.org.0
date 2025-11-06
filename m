Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5858C3A65C
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 11:56:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8225C10E893;
	Thu,  6 Nov 2025 10:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xsh/yJ4k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D0010E028;
 Thu,  6 Nov 2025 10:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762426582; x=1793962582;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=n1kr4pwd8XUC62nUvhg8WQrfPQchISLeSIv95qGlfCY=;
 b=Xsh/yJ4kyWxMPU+WKMya36bY7ZysRXLaEE6zz+Ro4dVkY4jQ6S92HRXJ
 mq7haebLO3Uvdo545h4xWC7QR8Xch94An9lzwz3HFHGRBPdqUlQPcrwW6
 5xyFOv1BnUDa/U+jIa2KK6DaHo5nrToViRtqMAgQXhfa2z+lIrCbhCgio
 8bmrZWLuoOvZ+poiJJ2S/HDh7cf4S8GKVa4pGl77h6oUbZJfsWQWO5U4v
 IrK2/lFlNEMw0jcmxPK0I7SMeLBPtoyMo8P15Wi9A/56uH4QmejI1it1d
 bn8DLjFYIdRB4iz9FKbUEapZDdLy2d9hwNTekrBZrqbVfgrX671qqa8D6 A==;
X-CSE-ConnectionGUID: 1jclwIN8SlinWFFqRNMEtA==
X-CSE-MsgGUID: t3dPnyLPS7K8I+PXifOx1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="81962843"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="81962843"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:56:22 -0800
X-CSE-ConnectionGUID: vlvMD4/ITzSr/3gG3pTMBg==
X-CSE-MsgGUID: 7uTHwjX1QPKDFX6iGhpy0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="191823407"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:56:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915/cx0: Get rid of XELPDP_MSGBUS_TIMEOUT_FAST_US
In-Reply-To: <20251105190433.16434-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-3-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 12:56:17 +0200
Message-ID: <5b7ab493f7672659723de362de3684bb8ff8caff@intel.com>
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
> XELPDP_MSGBUS_TIMEOUT_FAST_US looks to be just a obfuscated version

*an

> of the default 2 microsecond fast timeout used by
> intel_wait_for_register(). get rid of it to make it clear what's going
> on here.

*Get

Moreover, I don't like timeouts being defined along with what are
supposed to be register *content* descriptions.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 3 +--
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 1 -
>  2 files changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index e7fe974129fe..6f57ad751c9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -168,8 +168,7 @@ int intel_cx0_wait_for_ack(struct intel_encoder *enco=
der,
>  				 XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
>  				 XELPDP_PORT_P2M_RESPONSE_READY,
>  				 XELPDP_PORT_P2M_RESPONSE_READY,
> -				 XELPDP_MSGBUS_TIMEOUT_FAST_US,
> -				 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
> +				 2, XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
>  		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
>  			    phy_name(phy), *val);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/=
gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 635b35669348..67c6f06ab9a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -75,7 +75,6 @@
>  #define   XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
>=20=20
>  #define XELPDP_MSGBUS_TIMEOUT_SLOW			1
> -#define XELPDP_MSGBUS_TIMEOUT_FAST_US			2
>  #define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
>  #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
>  #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100

--=20
Jani Nikula, Intel
