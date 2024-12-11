Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 426659ECA51
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 11:31:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858EF10EAF1;
	Wed, 11 Dec 2024 10:31:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKowIm95";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879A310EAF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 10:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733913096; x=1765449096;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KddgXGkbt+yAiq5w/eny/9wpMFr7DPWAl8Hf2uAWpmk=;
 b=TKowIm954R+vqIP9F+T7nvxPji39OgKvIMCWRAcVjoz9J4JCbSohvH4s
 8SztTUtGNIQnHeLuhmjkBxWNdMa5DiPOUCesSV5Nn0PaCPOcHBrMI361s
 OsZVNhTpiWImMmqQXO2Sm99/Hb7FzkEhuvvJBvusON/db8a2CS8lbwrq/
 dbwFSY0mr/9tvVOG8U7dU//Hw1A51WPdCl9KxpUizrNaDXaOO3IdEw5Jf
 m0/KQenAm9hRECp7zWv6RXS5tjOwVqExsMZNW2EdBiuotQEdyh36yorhI
 jWKife0PVvkWaywxeV6t7uDuQYR9MEdWmPb5y340l9v145TJdEbXT6mtJ Q==;
X-CSE-ConnectionGUID: cpIW3+B1Q9KwcumeLpD2Cw==
X-CSE-MsgGUID: MgLkdMQpSh+ur325cSBZ3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="37121755"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="37121755"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 02:31:36 -0800
X-CSE-ConnectionGUID: dIRt5GVpSf2Rz6Ayry0Mbg==
X-CSE-MsgGUID: uVx+P5YTTOmRtUngF9xvfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="99839230"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.26])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 02:31:34 -0800
Date: Wed, 11 Dec 2024 11:31:31 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/display: use IS_ERR_OR_NULL macro on DP tunnel
 mgr creation failure
Message-ID: <Z1lqA1n3sL_o4YRI@ashyti-mobl2.lan>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Krzysztof,

On Wed, Dec 11, 2024 at 09:56:50AM +0000, Krzysztof Karas wrote:
> drm_dp_tunnel_mgr_create() may return NULL on failure, which will not
> be caught via IS_ERR(), so replace it with IS_ERR_OR_NULL() macro.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Fixes: 91888b5b1ad2 ("drm/i915/dp: Add support for DP tunnel BW allocation")
Cc: Imre Deak <imre.deak@intel.com>
Cc: <stable@vger.kernel.org> # v6.9+

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

nicely spotted, but the fix is wrong. drm_dp_tunnel_mgr_create()
returns NULL, not an error, so that you can just check:

	if (!tunnel_mgr)
		...

Thanks,
Andi

>  		return PTR_ERR(tunnel_mgr);
>  
>  	display->dp_tunnel_mgr = tunnel_mgr;
> -- 
> 2.34.1
