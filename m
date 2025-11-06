Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06381C3A677
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 11:57:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB6B10E892;
	Thu,  6 Nov 2025 10:57:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jz4FvMNP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB2B010E892;
 Thu,  6 Nov 2025 10:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762426643; x=1793962643;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Y7lWE78mX7UvTLRishXmWNDpJcMCouuzFoFTpNvNiGg=;
 b=Jz4FvMNPnqVleTb75dieMbFrLHBrXqpvVv9vgQXgUygHbCS80uRCILMc
 bmH0zL2GRxzBDGnMx0pB7lH3JV6xYz5cu3blGB0YQ0DDWHQi8ZUiS9jcr
 KDqh0DyClNI+5hPdOymbg3IWksg9DjXq8DRxvO4ejk9PMxK4PmyCN6Te3
 +5V+igRlSOoHbE5wjkXHE+LfcAs+djQ/vvT5ynYi6ov+hs7hw0MbyNZVn
 bu/kQ8mvDZeYMnXKyP9C6mbqGV3OqQO5WWnTfQSBD8ud7HDuO8F1ZcgDA
 YRV6CHuExZQRbUxpYnRloL0sskhCoJen05gHVbP77YBU0FQu/ls+OXajw g==;
X-CSE-ConnectionGUID: UjckMElFTtaLP6HCnFxpxg==
X-CSE-MsgGUID: iftwkr3NTFWxobKcyrTi5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="68398521"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="68398521"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:57:23 -0800
X-CSE-ConnectionGUID: nmoX8NqOTY6x+5/foadC+g==
X-CSE-MsgGUID: nee8ra6cSYqeSezLAuhfKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="224978221"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 02:57:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/7] drm/i915/cx0:
 s/XELPDP_MSGBUS_TIMEOUT_SLOW/XELPDP_MSGBUS_TIMEOUT_MS/
In-Reply-To: <20251105190433.16434-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-4-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 12:57:17 +0200
Message-ID: <407ea42798a23eba3405251938417946b3340ff7@intel.com>
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
> The slow vs. fast timeout stuff is really just an implementation
> detail. Let's not spread that terminology in random timeout defines.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 12 ++++++------
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c       |  2 +-
>  3 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 6f57ad751c9e..55ce4f673c63 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -147,7 +147,7 @@ void intel_cx0_bus_reset(struct intel_encoder *encode=
r, int lane)
>=20=20
>  	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display=
, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_RESET,
> -				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +				    XELPDP_MSGBUS_TIMEOUT_MS)) {
>  		drm_err_once(display->drm,
>  			     "Failed to bring PHY %c to idle.\n",
>  			     phy_name(phy));
> @@ -168,7 +168,7 @@ int intel_cx0_wait_for_ack(struct intel_encoder *enco=
der,
>  				 XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
>  				 XELPDP_PORT_P2M_RESPONSE_READY,
>  				 XELPDP_PORT_P2M_RESPONSE_READY,
> -				 2, XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
> +				 2, XELPDP_MSGBUS_TIMEOUT_MS, val)) {
>  		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
>  			    phy_name(phy), *val);
> @@ -215,7 +215,7 @@ static int __intel_cx0_read_once(struct intel_encoder=
 *encoder,
>=20=20
>  	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display=
, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> -				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +				    XELPDP_MSGBUS_TIMEOUT_MS)) {
>  		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for previous transaction to complete. Res=
et the bus and retry.\n", phy_name(phy));
>  		intel_cx0_bus_reset(encoder, lane);
> @@ -286,7 +286,7 @@ static int __intel_cx0_write_once(struct intel_encode=
r *encoder,
>=20=20
>  	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display=
, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> -				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +				    XELPDP_MSGBUS_TIMEOUT_MS)) {
>  		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for previous transaction to complete. Res=
etting the bus.\n", phy_name(phy));
>  		intel_cx0_bus_reset(encoder, lane);
> @@ -302,7 +302,7 @@ static int __intel_cx0_write_once(struct intel_encode=
r *encoder,
>=20=20
>  	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display=
, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> -				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +				    XELPDP_MSGBUS_TIMEOUT_MS)) {
>  		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for write to complete. Resetting the bus.=
\n", phy_name(phy));
>  		intel_cx0_bus_reset(encoder, lane);
> @@ -2815,7 +2815,7 @@ void intel_cx0_powerdown_change_sequence(struct int=
el_encoder *encoder,
>  	for_each_cx0_lane_in_mask(lane_mask, lane)
>  		if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(displa=
y, port, lane),
>  					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> -					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +					    XELPDP_MSGBUS_TIMEOUT_MS)) {
>  			drm_dbg_kms(display->drm,
>  				    "PHY %c Timeout waiting for previous transaction to complete. Re=
set the bus.\n",
>  				    phy_name(phy));
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/=
gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 67c6f06ab9a2..bd62c396c837 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -74,7 +74,7 @@
>  #define   XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DAT=
A_MASK, val)
>  #define   XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
>=20=20
> -#define XELPDP_MSGBUS_TIMEOUT_SLOW			1
> +#define XELPDP_MSGBUS_TIMEOUT_MS			1
>  #define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
>  #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
>  #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/dr=
m/i915/display/intel_lt_phy.c
> index af48d6cde226..6fb68157b322 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1043,7 +1043,7 @@ static int __intel_lt_phy_p2p_write_once(struct int=
el_encoder *encoder,
>=20=20
>  	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display=
, port, lane),
>  				    XELPDP_PORT_P2P_TRANSACTION_PENDING,
> -				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +				    XELPDP_MSGBUS_TIMEOUT_MS)) {
>  		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for previous transaction to complete. Res=
etting bus.\n",
>  			    phy_name(phy));

--=20
Jani Nikula, Intel
