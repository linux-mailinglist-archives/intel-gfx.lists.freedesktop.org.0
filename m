Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0916A6C1D5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 18:47:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1993C10E1D7;
	Fri, 21 Mar 2025 17:47:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jnFymKv0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED3310E1D7;
 Fri, 21 Mar 2025 17:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742579237; x=1774115237;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=f9bmXhLH+G73cAfEWwU6i3TmZBF5c080IfV+tmr1C0Y=;
 b=jnFymKv0A+9z4RLk0qeaaitO541lMSVsLyXrr+bGdmL6Cn5GM3mdHCyY
 Jhc0heKCtenJvusRVkYG+3jOLbvOjDlCXRUWqHD5/yIkBUqFno23trMEf
 kCwauvc5iWoSSya2JZviKXWbuQo5pRZC9ZxnQf35RpVmXe1NkVfffXyFf
 CiwI1j7bkkGq0SU9W9Cl0fjfpGXoNTgikVOGs7NMZaC2LrpVYvThQeYXw
 h1XdFrSEzYa2f8oxdlkcdRn1YH7Sm8MgloBSwr/SplFVg3ZcWp9ICUmdN
 a/VusdFMoG/u7nR8vc1/DsgNC5pMPT48L73DmkkugqYAHhQ/UR4D+oLy0 w==;
X-CSE-ConnectionGUID: +8vKgb8fSjqU/U1F7xf4fw==
X-CSE-MsgGUID: w7J72mu5SJG8qpQXoIFRSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43972301"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="43972301"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 10:47:16 -0700
X-CSE-ConnectionGUID: A3xycH6CQ5iBoj8eNSVncw==
X-CSE-MsgGUID: H5bBUWdsT4qCRyIChBshuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128684443"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 10:47:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 19:47:12 +0200
Date: Fri, 21 Mar 2025 19:47:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 15/16] drm/i915/vrr: Always use VRR timing generator for
 PTL+
Message-ID: <Z92mIPHsmQaWuFW5@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250318073540.2773890-16-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Mar 18, 2025 at 01:05:39PM +0530, Ankit Nautiyal wrote:
> Currently, the VRR timing generator is used only when VRR is enabled by
> userspace for sinks that support VRR. Starting with PTL+, gradually move
> away from the legacy timing generator and use the VRR timing generator
> for both variable and fixed timings.
> 
> Note: For platforms where we always enable the VRR timing generator,
> the LRR fastset is not allowed to avoid live programming of vrr.guardband
> with VRR TG enabled. This effectively breaks the LRR fastset functionality
> for these platforms and needs to be addressed.
> 
> v2: Use this for PTL for now to avoid losing LRR fastset for older
> platforms. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c1cdd1918c19..6c6bb868381c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -553,7 +553,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>  	if (!HAS_VRR(display))
>  		return false;
>  
> -	/* #TODO return true for platforms supporting fixed_rr */
> +	if (DISPLAY_VER(display) >= 30)
> +		return true;
> +
>  	return false;
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
