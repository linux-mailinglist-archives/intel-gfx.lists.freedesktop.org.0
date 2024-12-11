Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC0F9ECA78
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 11:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631A010EAF2;
	Wed, 11 Dec 2024 10:38:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TD+0X7XF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BFF910EAF2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 10:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733913514; x=1765449514;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rTeqrGa5s86dB2VUogqaLAd1PD7zfF0JBkSgDqRwBLc=;
 b=TD+0X7XFodf+78M1nN5lnZw+YesNOx2fDZd1/dN3GBTGvkvrXsOuQsHG
 nxpzvF732JhovCD09pTslnCWhsQJ8MnvKwZKBQfIhd+ffSgH7KjdlGWLP
 pS30h4CKisCz+wakJDwptFspnYMB+x1XkxkFmG9rBnB7BMSpsm+RLFZrQ
 bqdaCuSXO4kc4dc1j7uLFKqgx3iONnspQvnLNrZg1cIa+SQMdRulh5Drw
 b5rpM2Y69Ta9KE2yKFwEPbgcH2IWn/TI30ioYZTyW0io73fUbdEBFu44a
 uXKwXoLb5lgwqCWGnQJi3tj3aFHIHTviaVq2Zj/PtOioBOP3lPhfFOq+c g==;
X-CSE-ConnectionGUID: O2VPnWlXSbS31f8TZ3SJMw==
X-CSE-MsgGUID: Fzb1AGFCRC60b5DE/jFvvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34427507"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="34427507"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 02:38:24 -0800
X-CSE-ConnectionGUID: FqNen2m2RxOkeeezbsmZQw==
X-CSE-MsgGUID: AwTg9iakRZm2uQYJ10TJ9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="126590885"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 11 Dec 2024 02:38:23 -0800
Received: from [10.245.80.89] (mwajdecz-MOBL.ger.corp.intel.com [10.245.80.89])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 039C728795;
 Wed, 11 Dec 2024 10:38:21 +0000 (GMT)
Message-ID: <42d4e7d6-8134-4c34-81a7-cd3eaa8d638b@intel.com>
Date: Wed, 11 Dec 2024 11:38:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: use IS_ERR_OR_NULL macro on DP tunnel
 mgr creation failure
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 11.12.2024 10:56, Krzysztof Karas wrote:
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

this still will not work as expected, since in case of NULL it will
return 0 (success) instead of "a negative error code" as described in
the documentation of the intel_dp_tunnel_mgr_init()

OTOH the documentation of drm_dp_tunnel_mgr_create() says: "Returns a
pointer to the tunnel manager if created successfully or NULL in case of
an error" so more appropriate fix seems to be:

-	if (IS_ERR(tunnel_mgr))
- 		return PTR_ERR(tunnel_mgr);
+	if (!tunnel_mgr)
+ 		return -ENOMEM;

but then it will not work with the drm_dp_tunnel_mgr_create() stub which
actually returns undocumented ERR_PTR(-EOPNOTSUPP)

so unless you are ready to update implementation and documentation of
the drm_dp_tunnel_mgr_create() to return ERR_PTR instead of NULL in case
of error, the fix IMO should look more like:

+	if (!tunnel_mgr)
+ 		return -ENOMEM;

and keep existing IS_ERR check

>  
>  	display->dp_tunnel_mgr = tunnel_mgr;

