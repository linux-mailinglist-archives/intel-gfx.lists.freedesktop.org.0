Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A3DB416D2
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 09:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04F010E425;
	Wed,  3 Sep 2025 07:37:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JPKkhp+I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C1510E434;
 Wed,  3 Sep 2025 07:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756885032; x=1788421032;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7B5HxczyirBwLi2KuVVRmNDM0qgbUFC1l1HfFr3IAeo=;
 b=JPKkhp+IDgupcTE7lPFHB5PADgUEMnhnJHUBdSJY/YYS7NqpkEgJ9/ZM
 g+zpbVaBD03TOHGD90UJC4TNnblxPZT7bRDDP0lsCDntePP31Wz11A5u4
 Tw+jE7pNGKfCpIeBaJD4vYh5b3pLXquGJHIrt+dEF2V+GcH9+BBd6/1rO
 E+g2PNYT7t1i+d09hwaZnKA1T7a772E4e/yysrPy5T8mOG5AmW5C448UX
 YPNVhyCsv5pH9khD/U3UAVwKwBu1fZWfbZsx76AaUlPrR11rfMYChxiRf
 XG2gXS47/2i/muRfJh6fKM/1b1YxvvZkaeDPJvEn5UbMXzT51hVJuQZgD w==;
X-CSE-ConnectionGUID: cGYISW2aRLORDkJ8Yu3iDg==
X-CSE-MsgGUID: 5xQ+QxcrQdOkxU/G0c2tVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59256635"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="59256635"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:37:12 -0700
X-CSE-ConnectionGUID: H9oA0cCBS9Gt5J8aThFeig==
X-CSE-MsgGUID: CwkkJw2RT1yxg1a8XtgOmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171482853"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 00:37:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/hdmi: Fix potential overflow while using
 intel_encoder_to_tc
In-Reply-To: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
Date: Wed, 03 Sep 2025 10:37:07 +0300
Message-ID: <29e10fcd0e9bf9e995739cf53ae8f49544ebb06a@intel.com>
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

On Wed, 03 Sep 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> The helper intel_encoder_to_tc() can potentially return TC_PORT_NONE
> (-1) and cause overflow while computing ddc pins in
> icl_encoder_to_ddc_pin().
>
> Check for TC_PORT_NONE before deriving the ddc pins for TC port.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index cbee628eb26b..85f70cedc40c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2791,10 +2791,16 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  
> -	if (intel_encoder_is_combo(encoder))
> +	if (intel_encoder_is_combo(encoder)) {
>  		return GMBUS_PIN_1_BXT + port;
> -	else if (intel_encoder_is_tc(encoder))
> -		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
> +	} else if (intel_encoder_is_tc(encoder)) {
> +		enum tc_port tc_port = intel_encoder_to_tc(encoder);

intel_encoder_to_tc() can only return TC_PORT_NONE if intel_phy_is_tc()
== false. But intel_encoder_is_tc() just above means intel_phy_is_tc()
== true.

This case can't happen, it's a static analyzer being overzealous.

Adding checks like this to please a static analyzer leads to misery,
because it adds unnecessary code to maintain, and it will never be run.

I think it would be more interesting to make intel_port_to_tc() WARN on
!intel_phy_is_tc(), return a bogus >= 0 port, and ensure all callers
only call it on TC ports.

This obviously leads to issues if it happens, but hey, it shouldn't
happen, and intel_encoder_to_tc() returning TC_PORT_NONE is *already*
such a case. Just move it to lower levels.

If we start checking for every impossible situation, and propagating
errors for them, our codebase will be 90% error handling.


BR,
Jani.


> +
> +		if (tc_port != TC_PORT_NONE)
> +			return GMBUS_PIN_9_TC1_ICP + tc_port;
> +
> +		drm_WARN(display->drm, 1, "Invalid TC port\n");
> +	}
>  
>  	drm_WARN(display->drm, 1, "Unknown port:%c\n", port_name(port));
>  	return GMBUS_PIN_2_BXT;

-- 
Jani Nikula, Intel
