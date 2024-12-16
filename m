Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2479F2EF7
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 12:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5114810E59B;
	Mon, 16 Dec 2024 11:18:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eMAyA8Qz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64FB310E59B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 11:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734347891; x=1765883891;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZP3/5JXtqoJDoQP6RUAuJi6y9IdcDGH982voa7tr8lQ=;
 b=eMAyA8Qz0JqvZvOyleIFpmefedBD8g0D23STl0zHIOjOh+XSyNieOdJ5
 wj5LH9LIB9fCnbu4LHF6UsIQbjryVMWGbqDXPp5EKFE5l/tPVlJzkhp1v
 siG1yJWADbTal7JEbUzwFoXmBdH5aM08hn+6qEY/rgWqGfuIQdEb6d/Ez
 uxdFwVr6x3SUQXeloFl7vCxCJqoWc3mMqHzO20vrk4zCtQnEaq0YDOFox
 K2SRTJZ9gOGqcWTp92EwHMEeeiTJEaM5FkuOtHgKGmEwy2KsCMDkz4sgI
 CNs1ECNEV2NgoXBD0oCoxmufNYEL7u/PoJ0+0UEZ5gVXwEBpg4oGmTS/F Q==;
X-CSE-ConnectionGUID: 7S7OULPJQJuPsoOQSF0FUA==
X-CSE-MsgGUID: RP9yka6cQUK1v+qyNXhEbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="57209539"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="57209539"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 03:18:11 -0800
X-CSE-ConnectionGUID: HZKWaADNTlGMTCGhW+lkoQ==
X-CSE-MsgGUID: Mo/OKcq3QGauknbcr6K+yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128157609"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 03:18:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add MTL subplatforms definition
In-Reply-To: <20241213143408.3051070-2-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241213143408.3051070-1-dnyaneshwar.bhadane@intel.com>
 <20241213143408.3051070-2-dnyaneshwar.bhadane@intel.com>
Date: Mon, 16 Dec 2024 13:18:04 +0200
Message-ID: <8734inub9v.fsf@intel.com>
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

On Fri, 13 Dec 2024, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> Separate MTL-U platform PCI ids in one define macro.
>
> Add the MTL U/ARL U as subplatform member in MTL platform description
> structure to use display.platform.<platform> from intel_display
> structure instead of IS_<PLATFORM>() in display code path.
>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 21 +++++++++++++++++++
>  .../drm/i915/display/intel_display_device.h   |  2 ++
>  include/drm/intel/pciids.h                    |  5 ++++-
>  3 files changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 68cb7f9b9ef3..5dc689a8b1ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1357,6 +1357,16 @@ static const struct intel_display_device_info xe2_hpd_display = {
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  };
>  
> +static const u16 arl_u_ids[] = {
> +	INTEL_ARL_U_IDS(ID),
> +	0
> +};
> +
> +static const u16 mtl_u_ids[] = {
> +	INTEL_MTL_U_IDS(ID),
> +	0
> +};

We don't have arrowlake platform definition. They're all just
meteorlakes. Do you actually need the mtl-u/arl-u distinction, or do you
just need mtl+arl vs. mtl-u+arl-u distinction?

I.e. could we just have 

static const u16 mtl_u_ids[] = {
	INTEL_MTL_U_IDS(ID),
	INTEL_ARL_U_IDS(ID),
	0
};

And call them all mtl-u?

> +
>  /*
>   * Do not initialize the .info member of the platform desc for GMD ID based
>   * platforms. Their display will be probed automatically based on the IP version
> @@ -1364,6 +1374,17 @@ static const struct intel_display_device_info xe2_hpd_display = {
>   */
>  static const struct platform_desc mtl_desc = {
>  	PLATFORM(meteorlake),
> +	.subplatforms = (const struct subplatform_desc[]) {
> +		{
> +			SUBPLATFORM(meteorlake, u),
> +			.pciidlist = mtl_u_ids,
> +		},
> +		{
> +			SUBPLATFORM(arrowlake, u),
> +			.pciidlist = arl_u_ids,

You're defining subplatfroms for meteorlake. All the platform parameters
for SUBPLATFORM() *must* match the PLATFORM() above.

> +		},
> +		{},
> +	}
>  };
>  
>  static const struct platform_desc lnl_desc = {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 9a333d9e6601..87a614e2dfab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -96,6 +96,8 @@ struct pci_dev;
>  	func(dg2_g12) \
>  	/* Display ver 14 (based on GMD ID) */ \
>  	func(meteorlake) \
> +	func(meteorlake_u) \
> +	func(arrowlake_u) \

The naming needs to be <platform>_<subplatform>. We don't have arrowlake
platform, so we can't have arrowlake_u.

Either we can just put all mtl+arl u's together in meteorlake_u, or we
define arl-u as meteorlake_arrowlake_u with meteorlake being the
platform and arrowlake_u the subplatform.

>  	/* Display ver 20 (based on GMD ID) */ \
>  	func(lunarlake) \
>  	/* Display ver 14.1 (based on GMD ID) */ \
> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
> index c6518b0992cf..f29034ccb36c 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -811,9 +811,12 @@
>  	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
>  
>  /* MTL */
> +#define INTEL_MTL_U_IDS(MACRO__, ...) \
> +	MACRO__(0x7D45, ## __VA_ARGS__)
> +
>  #define INTEL_MTL_IDS(MACRO__, ...) \
>  	MACRO__(0x7D40, ## __VA_ARGS__), \
> -	MACRO__(0x7D45, ## __VA_ARGS__), \
> +	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__), \
>  	MACRO__(0x7D55, ## __VA_ARGS__), \
>  	MACRO__(0x7D60, ## __VA_ARGS__), \
>  	MACRO__(0x7DD5, ## __VA_ARGS__)

-- 
Jani Nikula, Intel
