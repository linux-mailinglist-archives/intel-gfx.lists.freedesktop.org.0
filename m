Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D640E9F1225
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 17:29:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D65810E22B;
	Fri, 13 Dec 2024 16:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRUb/G8m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32D410E22B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 16:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734107378; x=1765643378;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=AnVP2N+Docix5tFf4PjFVOoDujSnbIn0HYZoojpcaVI=;
 b=mRUb/G8mdeDr2NylvEF0FrpVPzk+mUYHmvxUGlqqeqJhGsubMAPevMzB
 LOmBI8UFKjUONQf08sDDU5fkIewcSE68tflc1BWokKCWSYdX2beROimxf
 FtZ4AczTcX0r4wTuaG4X/mQlW5ReIX1CMvR3gL8WQlJhpaPAZ966Z9Oir
 mV/3CQplHN47dPzDOk4oVat4LIxzFjXS2xiC+IWNno12LNtIZdCt6UhGQ
 WNm7VN9aMv8R0JNmYACik5ywe8L8Nlr4SBBKw7WXvi/Ru6WGuNQkgvnJO
 sA5+9uhffNWT4BC/4shhyDTLZiv/kDLxd1nHbYEwAS/6mBwylCgnMJlS3 Q==;
X-CSE-ConnectionGUID: GbGFamdNSTShq4YWcEIzbg==
X-CSE-MsgGUID: hAsAvUcFQHSP0yS3SDxopw==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="37411017"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="37411017"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 08:29:37 -0800
X-CSE-ConnectionGUID: KN5+1kAMTOG4CBn3izs6gw==
X-CSE-MsgGUID: DRrRWAk0Tr2jOPsmc2I3WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127577628"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.161])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 08:29:34 -0800
Date: Fri, 13 Dec 2024 17:29:30 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Maarten@intel.com,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, stable@vger.kernel.org
Subject: Re: [PATCH v3] drm/display: use ERR_PTR on DP tunnel manager
 creation fail
Message-ID: <Z1xg6hOJJiBWixC6@ashyti-mobl2.lan>
References: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
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

Hi,

who is going to take this patch? Can I merge it in
drm-intel-next?

Thanks,
Andi

On Thu, Dec 12, 2024 at 11:00:41AM +0000, Krzysztof Karas wrote:
> Instead of returning a generic NULL on error from
> drm_dp_tunnel_mgr_create(), use error pointers with informative codes
> to align the function with stub that is executed when
> CONFIG_DRM_DISPLAY_DP_TUNNEL is unset. This will also trigger IS_ERR()
> in current caller (intel_dp_tunnerl_mgr_init()) instead of bypassing it
> via NULL pointer.
> 
> v2: use error codes inside drm_dp_tunnel_mgr_create() instead of handling
>  on caller's side (Michal, Imre)
> 
> v3: fixup commit message and add "CC"/"Fixes" lines (Andi),
>  mention aligning function code with stub
>     
> Fixes: 91888b5b1ad2 ("drm/i915/dp: Add support for DP tunnel BW allocation")
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: <stable@vger.kernel.org> # v6.9+
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
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
