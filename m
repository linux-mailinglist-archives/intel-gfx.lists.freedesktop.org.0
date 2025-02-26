Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB301A46162
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691E710E34D;
	Wed, 26 Feb 2025 13:55:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F9pM1g6D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CFB10E225;
 Wed, 26 Feb 2025 13:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740578127; x=1772114127;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vS3X5at0w7rhwLeF2ClFz3u4iU4rhrXXOzC03HmJzRw=;
 b=F9pM1g6D/R0kEJzEkLt7XkT+fKE4zo4oHBu0y9GsD1vW2E2sEcFLcRNx
 r3ZrcKQusvilVIhjgkSJILD7G+kchzSayiNvzZIxJLQVClZnE4JT6yENT
 HAo1FeQ7Vh5SEOm0aU/U/OMxhMrHM8TwSQi6CAXoixRA8CLguOEu3ELz7
 kxDvjMUd/TJAjezidHVJ5hlZpAwBJyIkS3LeBgIIe7byBp1ansp/Ped8t
 nbFDQCuAUahLoG/40nnOYheHauKHhOtNzYghyb81Khsnc6XP0a5z6cbuK
 1k+nD9irzpSmI+PtuVdJjlkZKp1b9it11pb21jRo/lCmu6rM2ePipOfo5 w==;
X-CSE-ConnectionGUID: kG35lT1ATX6KhacW7NKjGg==
X-CSE-MsgGUID: jQeVZEn/T2a1djZxJUe4Qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52813130"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52813130"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:55:27 -0800
X-CSE-ConnectionGUID: P1QM5UpOTcua4LTV6t1SHg==
X-CSE-MsgGUID: 41Fi22j4QdW/gGnNQjyfFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121955673"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:55:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:55:22 +0200
Date: Wed, 26 Feb 2025 15:55:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 12/20] drm/i915/display: Extend WA 14015406119 for PSR2
Message-ID: <Z78dSlvSmDfF6zRD@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-13-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:09AM +0530, Ankit Nautiyal wrote:
> Wa_14015406119 is required for PSR1/2 while working with fixed refresh
> rate with VRR timing generator.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0db84af1063a..752ed44d8892 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2508,8 +2508,9 @@ static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> -		IS_DISPLAY_VER(display, 13, 14);
> +	return intel_vrr_possible(crtc_state) &&
> +	       (crtc_state->has_psr || crtc_state->has_sel_update) &&

I presume you wanted some kind of use_vrr_tg_always() check here instead
of that has_sel_update thing (which is a nop since it should never be
set unless has_psr is also set)?

> +	       IS_DISPLAY_VER(display, 13, 14);
>  }
>  
>  static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
