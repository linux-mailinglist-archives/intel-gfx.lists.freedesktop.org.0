Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7264EA32D07
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 18:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00FED10E93C;
	Wed, 12 Feb 2025 17:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQBgyVN6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68C610E93C;
 Wed, 12 Feb 2025 17:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739380295; x=1770916295;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ID16G8gIngI5QGuujH4/QGs3veKiO4zi7CYjIa4n5wE=;
 b=iQBgyVN62c7XD6t9G086o+2iFLiUlxss3fE/wP06c2iziAjPgUgWkFIw
 KDD5QZrywggW++EjZhUg4klScIxw1tUutidFkNCf4VRE5GeiqqPb6dl0K
 8SSlIILE3fXviw75B3lyhasOHVk1h8lMmPyi/WjupNDxvihUJUDZHvpiZ
 a41A1P8BcwNP9dBs4l3RGdk70kLVmyNBGGV0YEj/danT7fabTAS45ZqGR
 tyDeaBSL9qIQNiCxaN9ain7f/oaqqCaM2BPESw/4s3bjBjwc4JMjEb0rI
 GbKE50B0oo3EYTRPCLv0J+wkEp0wGe8VXw/b18BgtrwpG2lMZ78pVmq1a w==;
X-CSE-ConnectionGUID: J1+3XfHcQ3qYP4ZCo0idVg==
X-CSE-MsgGUID: oz6Tl/bRS8al6AyIubIsFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40169552"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40169552"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:11:35 -0800
X-CSE-ConnectionGUID: EysWy76IQG+6RmM2eMqFzA==
X-CSE-MsgGUID: Jjd98S3KT5CFtgh6g1nG2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112737393"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:11:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: Make POWER_DOMAIN_*() always
 result in enum intel_display_power_domain
In-Reply-To: <20250212132658.323640-3-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250212132658.323640-1-gustavo.sousa@intel.com>
 <20250212132658.323640-3-gustavo.sousa@intel.com>
Date: Wed, 12 Feb 2025 19:11:29 +0200
Message-ID: <87bjv7ytoe.fsf@intel.com>
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

On Wed, 12 Feb 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> In the hope of contributing to type safety in our code, let's ensure
> that the type returned by the POWER_DOMAIN_*() macros is always of type
> enum intel_display_power_domain.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 3caa3f517a32..ab4c9a1e7e02 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -117,12 +117,13 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
>  };
>  
> -#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
> +#define POWER_DOMAIN_PIPE(pipe) \
> +	((enum intel_display_power_domain)((int)(pipe) +  1 + POWER_DOMAIN_PIPE_A))
                                                        ^^^^^^^

What's with the +1?


>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
> -		((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
> +	((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
>  #define POWER_DOMAIN_TRANSCODER(tran) \
>  	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
> -	 (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
> +	 (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_TRANSCODER_A))
>  
>  struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);

-- 
Jani Nikula, Intel
