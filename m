Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE309ECF80
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 16:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F7F10E1C2;
	Wed, 11 Dec 2024 15:18:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e/MVwDri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F5410E1C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 15:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733930295; x=1765466295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ukrGri52IST/ae3Q334P2JT6KHhzXSR/ereBf4Z9bGI=;
 b=e/MVwDrikwIC9jypVY/wmN0z353A9x76/BslCKAx/QQj2cKukdEqkfx5
 OUbWdnLzYHE1pkpekDUx21YkpCyNUJX62qOyCmMebDd4OdhuTm4YE4G4n
 F+pyttrTF8P4zUvY6rNL616X6oiXSopdjZjt+wvrtVQ0h8uLE+jQhi90d
 jlGxqoHzOxaHJmMvDLJZnNqi3bWoev9zu6uBxBNFBPj6iZ5w8kOug+/9D
 x7m6i2+Nz2pwjxDlrS2zkUnwkVsB4RKf5TZoqoqb3zTOaGsp/p+WkILWm
 Ptivqxa09AUu0upGmsuXe8PFRKE27P6kBnm5M7GMo4rcjh95XcafwOpds w==;
X-CSE-ConnectionGUID: /WvC3/I9TkOxkaLB0Kx6Kg==
X-CSE-MsgGUID: yhaySuh9SGCQJNwNimB5qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="56793829"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="56793829"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 07:18:15 -0800
X-CSE-ConnectionGUID: Bl3Vd0hpRUir07zzi9e/Mg==
X-CSE-MsgGUID: iha50d25R2+Y50+Uixt7iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="95704322"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.26])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 07:18:10 -0800
Date: Wed, 11 Dec 2024 16:18:06 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Imre Deak <imre.deak@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/display: use ERR_PTR on DP tunnel manager
 creation fail
Message-ID: <Z1mtLhJ_40VtfF3M@ashyti-mobl2.lan>
References: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
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

On Wed, Dec 11, 2024 at 02:52:20PM +0000, Krzysztof Karas wrote:
> Instead of returning a generic NULL on error from drm_dp_tunnel_mgr_create(),
> use error pointers with informative codes. This will also trigger IS_ERR() in
> current caller (intel_dp_tunnerl_mgr_init()) instead of bypassing it via NULL
> pointer.

I was about to suggest fixing either this or his counterpart in
the header file.

Please send this in a series along with the previous patch in
order to let people understand why you are sending this.

Besides, I think you can improve the explanation here, which is
the different behaviour of drm_dp_tunnel_mgr_create() depending
on the CONFIG_DRM_DISPLAY_DP_TUNNEL config flag.

You can add to both of them my r-b.

Did you check who is maintaining this file?

Andi

> v2: use error codes inside drm_dp_tunnel_mgr_create() instead of handling
>  on caller's side (Michal, Imre)
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_tunnel.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
> index 48b2df120086..90fe07a89260 100644
> --- a/drivers/gpu/drm/display/drm_dp_tunnel.c
> +++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
> @@ -1896,8 +1896,8 @@ static void destroy_mgr(struct drm_dp_tunnel_mgr *mgr)
>   *
>   * Creates a DP tunnel manager for @dev.
>   *
> - * Returns a pointer to the tunnel manager if created successfully or NULL in
> - * case of an error.
> + * Returns a pointer to the tunnel manager if created successfully or error
> + * pointer in case of failure.
>   */
>  struct drm_dp_tunnel_mgr *
>  drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
> @@ -1907,7 +1907,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
>  
>  	mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
>  	if (!mgr)
> -		return NULL;
> +		return ERR_PTR(-ENOMEM);
>  
>  	mgr->dev = dev;
>  	init_waitqueue_head(&mgr->bw_req_queue);
> @@ -1916,7 +1916,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
>  	if (!mgr->groups) {
>  		kfree(mgr);
>  
> -		return NULL;
> +		return ERR_PTR(-ENOMEM);
>  	}
>  
>  #ifdef CONFIG_DRM_DISPLAY_DP_TUNNEL_STATE_DEBUG
> @@ -1927,7 +1927,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
>  		if (!init_group(mgr, &mgr->groups[i])) {
>  			destroy_mgr(mgr);
>  
> -			return NULL;
> +			return ERR_PTR(-ENOMEM);
>  		}
>  
>  		mgr->group_count++;
> -- 
> 2.34.1
