Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 331F3BDF666
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 17:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F66610E851;
	Wed, 15 Oct 2025 15:33:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i1ZnBeA6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF0510E84F;
 Wed, 15 Oct 2025 15:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760542421; x=1792078421;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=z9CkWZZdQFnYfBut6M2K2YlAJSOzAxGgJ5wAZRHYSkU=;
 b=i1ZnBeA6d9dVjzAWx8c5Cj6bhkZIwZ2Nunf5l8qEibJecTsUkSnl+ZF9
 oBGh0lQvzhueg7OOsUzCbCMnIji4JN3LxyysUtBF8JLUV8aOShmGLFdqk
 f4cz2YNGw4KWHVKeBN+YVkI54pytJBThONkTrIUoFWzQIyBw7SOvDVzl/
 NzkTWQyjQ64qt/DnSMBZU3OFnHnLig6KYBxqanZIdJVkxubj9Pn/9wtc6
 GO08qwx5c6tYezwQ+1p0GZnzhrFIFvcW/oBTTiQE3f0xRMLZ8I3zIKUOw
 wnZBcjQ5eaVA0Z8iQ2dqV1Rw/dnDBsYW5DPRY98mpRaWnDn8CMMWSWzhZ A==;
X-CSE-ConnectionGUID: 7hRBiJwMT1Ks4BP6wlUCTQ==
X-CSE-MsgGUID: 9WY2C/NFRcmf33fTs8S5oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62871943"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62871943"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:33:40 -0700
X-CSE-ConnectionGUID: /HyojC6CR4e4jiB+mifn6g==
X-CSE-MsgGUID: 5x3rVhjgSRa7DUeocPUJ6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205907165"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:33:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>,
 Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Juha-pekka
 Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 29/32] drm/i915/display: Handle dedicated external ports
 in intel_encoder_is_tc()
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-29-d2d1e26520aa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-29-d2d1e26520aa@intel.com>
Date: Wed, 15 Oct 2025 18:33:31 +0300
Message-ID: <bc0b111384b7c28187aa5e7fef1cd39718ab1f75@intel.com>
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

On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Starting with Xe3p_LPD, the VBT has a new field, called in the driver
> "dedicated_external", which tells that a Type-C capable port is
> physically connected to a PHY outside of the Type-C subsystem.  When
> that's the case, the driver must not do the extra Type-C programming for
> that port.  Update intel_encoder_is_tc() to check for that case.
>
> While at it, add a note to intel_phy_is_tc() to remind us that it is
> about whether the respective port is a Type-C capable port rather than
> the PHY itself.
>
> (Maybe it would be a nice idea to rename intel_phy_is_tc()?)
>
> Note that this was handled with a new bool member added to struct
> intel_digital_port instead of having querying the VBT directly because
> VBT memory is freed (intel_bios_driver_remove) before encoder cleanup
> (intel_ddi_encoder_destroy), which would cause an oops to happen when
> the latter calls intel_encoder_is_tc().  This could be fixed by keeping
> VBT data around longer, but that's left for a follow-up work, if deemed
> necessary.
>
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c           |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_display.c       | 19 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  3 files changed, 26 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c09aa759f4d4..6fcbebb81263 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5343,6 +5343,13 @@ void intel_ddi_init(struct intel_display *display,
>  			goto err;
>  	}
>  
> +	if (intel_bios_encoder_is_dedicated_external(devdata)) {
> +		dig_port->dedicated_external = true;
> +		drm_dbg_kms(display->drm,
> +			    "Port %c is dedicated external\n",
> +			    port_name(port));
> +	}

With the information print added in parse_ddi_port(), the printing here
becomes redundant.

> +
>  	if (intel_encoder_is_tc(encoder)) {
>  		bool is_legacy =
>  			!intel_bios_encoder_supports_typec_usb(devdata) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6ac718192e1c..46474199d1ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1778,7 +1778,17 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
>  		return false;
>  }
>  
> -/* Prefer intel_encoder_is_tc() */
> +/*
> + * This function returns true if the DDI port respective to the PHY enumeration
> + * is a Type-C capable port.
> + *
> + * Depending on the VBT, the port might be configured
> + * as a "dedicated external" port, meaning that actual physical PHY is outside
> + * of the Type-C subsystem and, as such, not really a "Type-C PHY".
> + *
> + * Prefer intel_encoder_is_tc(), especially if you really need to know if we
> + * are dealing with Type-C connections.
> + */
>  bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
>  {
>  	/*
> @@ -1863,6 +1873,13 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  
> +	if (intel_encoder_is_dig_port(encoder)) {
> +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +		if (dig_port->dedicated_external)

Why go through all the trouble of duplicating the "decicated external"
information in the digital port, when you already have encoder
available, and can just use intel_bios_encoder_is_dedicated_external()
right here?

> +			return false;
> +	}
> +
>  	return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 13652e2996a4..b5b9351501b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1909,6 +1909,7 @@ struct intel_digital_port {
>  	bool lane_reversal;
>  	bool ddi_a_4_lanes;
>  	bool release_cl2_override;
> +	bool dedicated_external;
>  	u8 max_lanes;
>  	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
>  	enum aux_ch aux_ch;

-- 
Jani Nikula, Intel
