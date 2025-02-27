Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19180A47E05
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 13:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4551110EAB6;
	Thu, 27 Feb 2025 12:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DeWqBt/9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2360F10EAB6;
 Thu, 27 Feb 2025 12:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740660037; x=1772196037;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=J6PkG9QtN3/gEJrnZh/UPTwAcA9fizebJ2sXGSE2qzM=;
 b=DeWqBt/9DJO6yS/ZIT6d2JyazGMTl20q8t2xvLUNctCZoHnhfbLC8t7y
 muHpgx+bunO+ExE0T3pPJJBBw/00eSizNAfqktgioo6dM60N0k637cUAb
 w3Pg2KDrEMFnHDadaosMgwJ61xl9G0VWgDehdM9riLjdRKFlAD4p1jD71
 MQzcWnNs8LWUVs9qpAjM/AcxF1U1XfNiKpt1PhFg3mGqAuJKR7zxK+yRC
 Q5MVrfLyJYazj7RcGvJt/ljcl/+ASx3C/qL2HFbZrzCBKNXijYFGFIB9m
 57OVZO76dk1dZ0V0oFOho85Vy/xvjz0nD5qej//5SMVDZY6Lgwq1SF9t6 A==;
X-CSE-ConnectionGUID: EXCoH1+AT9OC9QuevSFJOQ==
X-CSE-MsgGUID: B9UTYPTHQtyYtKTs0d+rkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="52534380"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="52534380"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 04:40:36 -0800
X-CSE-ConnectionGUID: /15PqiyYRIG4cMIW33KyPw==
X-CSE-MsgGUID: y8KZgHeVRhSKJWzLJZZQIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121143782"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 04:40:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
In-Reply-To: <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
Date: Thu, 27 Feb 2025 14:40:31 +0200
Message-ID: <87ldtr36io.fsf@intel.com>
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

On Tue, 25 Feb 2025, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> From PTL, LUT registers are made double buffered. With this change,
> we don't need to wait for vblank to program them. Start DSB1 for
> programming them without waiting for vblank.
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 919e236a9650..9c3fdfcd6759 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7352,6 +7352,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_display *display = to_intel_display(state);

Please always put display local variable first.

>  
>  	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
>  		return;
> @@ -7408,7 +7409,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  
>  	if (new_crtc_state->dsb_color_vblank)
>  		intel_dsb_chain(state, new_crtc_state->dsb_commit,
> -				new_crtc_state->dsb_color_vblank, true);
> +				new_crtc_state->dsb_color_vblank,
> +				HAS_DOUBLE_BUFFERED_LUT(display) ? false : true);

HAS_DOUBLE_BUFFERED_LUT(display) ? false : true

=>

!HAS_DOUBLE_BUFFERED_LUT(display)


>  
>  	intel_dsb_finish(new_crtc_state->dsb_commit);
>  }

-- 
Jani Nikula, Intel
