Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA05C78BF1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35EC210E856;
	Fri, 21 Nov 2025 11:19:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCo2ezMP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254D610E856;
 Fri, 21 Nov 2025 11:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723986; x=1795259986;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U+//3pd3od8zjMmG0wsYulRlnHDaj1D7pVMut5pe7xI=;
 b=UCo2ezMPZjDQEOV7KVtA74pNVYIu74JDEMxaMftqjaXbhzTlIvOScnbO
 BHmwhl9oVyyOwYgQnzBP0Zi0rdWVidVgTWDfWb979iyBidOg40N6GovDE
 10Ay+/5QaCpJwgOFTU6I8tnqDm8YTbcvSvYFtkwF5OX8OBYaqYxJyu7if
 GBTdMlTWMdH0gwtItPtIoe16ITYR/TTvLNsgDLOcHC+SEC1EHFU1hYXII
 OL0j7KTPKwyDtzW6z1M8kBfPum6Tjs+imJDTPyd+gseQ00NJ7oV2fkLni
 rK1Obx5H9riz79WUGFqPC+WrjQE4b9PLY5DhMhCpi87e9dPOzUo05aVxY g==;
X-CSE-ConnectionGUID: s0sMhc1hTL23+HjoV/yfqQ==
X-CSE-MsgGUID: Xx2QV6OyS7iLCxCAOn+3Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="83204730"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="83204730"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:19:46 -0800
X-CSE-ConnectionGUID: Etf7FKiNTrO0CecUKT7LAg==
X-CSE-MsgGUID: Du2Oi24MQESZNAHb/k3aBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="192112588"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:19:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH 2/5] drm/i915/tc: Add separate intel_tc_phy_port_to_tc()
 for TC DDI/PHY ports
In-Reply-To: <20251120172358.1282765-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-2-imre.deak@intel.com>
Date: Fri, 21 Nov 2025 13:19:38 +0200
Message-ID: <ad7bea20406536bdf9730d792b93ff08d6d98ddb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 20 Nov 2025, Imre Deak <imre.deak@intel.com> wrote:
> intel_port_to_tc() returns the PORT_TC1..6 -> TC_PORT_1..6 mapping only
> for DDI ports that are connected to a TypeC PHY. In some cases this
> mapping is also required for TypeC DDI ports which are not connected to
> a TypeC PHY. Such DDI ports are the PORT_TC1..4 ports on RKL/ADLS/BMG.
>
> Add a separate intel_tc_phy_to_tc() helper to return the mapping for
> ports connected to a TypeC PHY, and make all the current users - which
> expect this semantic - call this helper. A follow-up change will need to
> get the same mapping for TypeC DDI ports not connected to a TypeC PHY,
> leave intel_port_to_tc() exported for that.

The TC port and phy stuff in our driver never cease to confuse me. And I
know you've explained all this to me several times.

I think we need some "TC port and phy for dummies" (that's me)
documentation comment somewhere in intel_tc.c that we (I) can refer to.

I also feel like the whole mess of intel_ddi_encoder_name() underlines
how problematic the concepts are. Moreover, I think intel_bios.c logs
the ports incorrectly.


BR,
Jani.


> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  3 files changed, 22 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 8471bdab5c62f..ed9798b0ec009 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5148,7 +5148,7 @@ static const char *intel_ddi_encoder_name(struct intel_display *display,
>  			       port_name(port - PORT_D_XELPD + PORT_D),
>  			       phy_name(phy));
>  	} else if (DISPLAY_VER(display) >= 12) {
> -		enum tc_port tc_port = intel_port_to_tc(display, port);
> +		enum tc_port tc_port = intel_tc_phy_port_to_tc(display, port);
>  
>  		seq_buf_printf(s, "DDI %s%c/PHY %s%c",
>  			       port >= PORT_TC1 ? "TC" : "",
> @@ -5156,7 +5156,7 @@ static const char *intel_ddi_encoder_name(struct intel_display *display,
>  			       tc_port != TC_PORT_NONE ? "TC" : "",
>  			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
>  	} else if (DISPLAY_VER(display) >= 11) {
> -		enum tc_port tc_port = intel_port_to_tc(display, port);
> +		enum tc_port tc_port = intel_tc_phy_port_to_tc(display, port);
>  
>  		seq_buf_printf(s, "DDI %c%s/PHY %s%c",
>  			       port_name(port),
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6c8a7f63111ec..a8a3e80001870 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1859,17 +1859,32 @@ enum phy intel_port_to_phy(struct intel_display *display, enum port port)
>  }
>  
>  /* Prefer intel_encoder_to_tc() */
> +/*
> + * Return TC_PORT_1..I915_MAX_TC_PORTS for any TypeC DDI port. The function
> + * can be also called for TypeC DDI ports not connected to a TypeC PHY such as
> + * the PORT_TC1..4 ports on RKL/ADLS/BMG.
> + */
>  enum tc_port intel_port_to_tc(struct intel_display *display, enum port port)
>  {
> -	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
> -		return TC_PORT_NONE;
> -
>  	if (DISPLAY_VER(display) >= 12)
>  		return TC_PORT_1 + port - PORT_TC1;
>  	else
>  		return TC_PORT_1 + port - PORT_C;
>  }
>  
> +/*
> + * Return TC_PORT_1..I915_MAX_TC_PORTS for TypeC DDI ports connected to a TypeC PHY.
> + * Note that on RKL, ADLS, BMG the PORT_TC1..4 ports are connected to a non-TypeC
> + * PHY, so on those platforms the function returns TC_PORT_NONE.
> + */
> +enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display, enum port port)
> +{
> +	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
> +		return TC_PORT_NONE;
> +
> +	return intel_port_to_tc(display, port);
> +}
> +
>  enum phy intel_encoder_to_phy(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> @@ -1902,7 +1917,7 @@ enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  
> -	return intel_port_to_tc(display, encoder->port);
> +	return intel_tc_phy_port_to_tc(display, encoder->port);
>  }
>  
>  enum intel_display_power_domain
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index bcc6ccb69d2b5..f8e6e4e827222 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -451,6 +451,7 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy);
>  bool intel_phy_is_tc(struct intel_display *display, enum phy phy);
>  bool intel_phy_is_snps(struct intel_display *display, enum phy phy);
>  enum tc_port intel_port_to_tc(struct intel_display *display, enum port port);
> +enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display, enum port port);
>  
>  enum phy intel_encoder_to_phy(struct intel_encoder *encoder);
>  bool intel_encoder_is_combo(struct intel_encoder *encoder);

-- 
Jani Nikula, Intel
