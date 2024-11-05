Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0E09BC8AA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 10:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1DF210E53B;
	Tue,  5 Nov 2024 09:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QhDMHi0j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E2910E53B;
 Tue,  5 Nov 2024 09:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730797725; x=1762333725;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PB+BNMTxWbxJm4E6H/iXG/hQxaI2IglYPi5dMh/Zlxo=;
 b=QhDMHi0jFyQmsSxx2GATyOjYnqMhd4o4wvu6x394NjdUDedMKjFAzJj8
 uqeHjzUtInOD/f2MDHe5i8NTo+qAThmzsFU15JHCFPwjUyplNmY40yVVC
 fKYOCJeuvBj0mRbZJFVCdRFRq1co3SR6bas08a5+m8mSeAuFfFuZTZ3Vi
 Edz1CF0OY6ABjsZ4Lwtok+Pj/kmh/DyQXqqwedrdUk1q7LlzZyL/fg1i7
 OoJfmSY/E+qRo5p/+wY9jVzUzyAqPrEzSBGzcihnLV90ikqLMivvGK8H8
 dT/8x7u2dXtQMNDyR7TKwqQCijOOGnpsCBviNDR9WhZrA6xd8/C1Z11rt w==;
X-CSE-ConnectionGUID: SoG5fVIVSvW5E2xz2XW5aw==
X-CSE-MsgGUID: 3v5Xr2sHTySRhU+/2KAzgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41124323"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="41124323"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 01:08:45 -0800
X-CSE-ConnectionGUID: 5HtVn4yzS2i/rs0iObj0cw==
X-CSE-MsgGUID: 1BMTPIDjTyaU+XzFAU7NFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="114722707"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.82])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 01:08:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 3/8] drm/i915/display: update use_minimal_wm0_only to
 use intel_display
In-Reply-To: <20241105071600.235338-4-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-4-vinod.govindapillai@intel.com>
Date: Tue, 05 Nov 2024 11:08:40 +0200
Message-ID: <87ses6gi93.fsf@intel.com>
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

On Tue, 05 Nov 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Avoid using struct drm_i915_private reference and use intel_display
> instead. This is in preparation for the rest of the patches in this
> series where hw support for the minimum and interim ddb allocations
> for async flip is added

This is technically correct, but it's self-contained in a single
function. I've preferred two approaches over this:

- Convert entire files (sometimes internally first, with the external
  interface changes in a separate patch, depending on how big the patch
  becomes).

- Convert single functions which are widely used and have struct
  intel_display as parameter, to limit the size of the patch (as opposed
  to doing the conversion as part of an entire file change).

I think Ville said he's had a go at converting skl_watermark.c. Ville,
do you have a patch for that?

BR,
Jani.

>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 2afc95e7533c..2018abc35c8a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1372,9 +1372,9 @@ static bool
>  use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
>  		     struct intel_plane *plane)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	struct intel_display *display = to_intel_display(plane);
>  
> -	return DISPLAY_VER(i915) >= 13 &&
> +	return DISPLAY_VER(display) >= 13 &&
>  	       crtc_state->uapi.async_flip &&
>  	       plane->async_flip;
>  }

-- 
Jani Nikula, Intel
