Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372939ECCAE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 14:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB7810EB37;
	Wed, 11 Dec 2024 13:00:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3GPJ5zg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16F610EB37
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 13:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733922041; x=1765458041;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=+tIbi6bZXuMkj3s/x2KHq/1xvabDw6Sc17PHaGUQV5c=;
 b=H3GPJ5zgbUuq03vrysheMdAUny1nd7mlHyofuK2zbVhy5UEofmRKf3Nv
 QigSZH8ElYBf0EEP9IbQtYFDa9UycWi71gPbY8w4LAbVwmSSz4NcrNsp0
 AFy+Ae+6UEm/mEWucgUoFnN5LHOvf7B8y9cz62KZWHgQgqpUAUQ/OprTC
 Ck1pjhj2+SlwwPHB/oiN2u4gux4iEwW8mNHNqXdI9dFkR1I6SLJfVtDmY
 VkdfLpABURLiPCXX0F7pjxhZCXJVsvaMLuBFD+zfyopsPjjD8XQsRLwaH
 /s49HFn9kJTosqk9e67KsfyJH8gVsZy7F7cJwiClHfsH423nORBOZRSYy g==;
X-CSE-ConnectionGUID: MeOP7tSIS/OYtio8T5aYQg==
X-CSE-MsgGUID: mwja1zJZTN+vJQwZySqsSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="44908468"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="44908468"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 05:00:40 -0800
X-CSE-ConnectionGUID: u91dUF29TImxMoFC/N7Nkw==
X-CSE-MsgGUID: DorIgxDHRMa/G5PP1h32gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="126737704"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 05:00:38 -0800
Date: Wed, 11 Dec 2024 15:01:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/display: use IS_ERR_OR_NULL macro on DP tunnel
 mgr creation failure
Message-ID: <Z1mNHX2vnDurMOT0@ideak-desk.fi.intel.com>
References: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 11, 2024 at 09:56:50AM +0000, Krzysztof Karas wrote:
> drm_dp_tunnel_mgr_create() may return NULL on failure, which will not
> be caught via IS_ERR(), so replace it with IS_ERR_OR_NULL() macro.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index 94198bc04939..6c960416f776 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -793,7 +793,7 @@ int intel_dp_tunnel_mgr_init(struct intel_display *display)
>  	drm_connector_list_iter_end(&connector_list_iter);
>  
>  	tunnel_mgr = drm_dp_tunnel_mgr_create(display->drm, dp_connectors);
> -	if (IS_ERR(tunnel_mgr))
> +	if (IS_ERR_OR_NULL(tunnel_mgr))
>  		return PTR_ERR(tunnel_mgr);

Thanks for spotting this. As Michal pointed out, instead of the above
drm_dp_tunnel_mgr_create() should be fixed to return PTR_ERR(-ENOMEM) in
case of an error.

>  
>  	display->dp_tunnel_mgr = tunnel_mgr;
> -- 
> 2.34.1
> 
