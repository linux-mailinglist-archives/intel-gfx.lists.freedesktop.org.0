Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDF051C823
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 20:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5215610EACC;
	Thu,  5 May 2022 18:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7198410EB55
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 18:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651775876; x=1683311876;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=0H379XRY3dPQcFKcZEtPkL9H47IL002WhgwFZ5DdRmA=;
 b=NtCwvirqWlYuIe/L7JRivbRO7nWIg8hf6rx+o5ABljiaaIUipvh+Rmx5
 ATX5//brkm/tP37TNw4VtMNvQ7uIdI7Qj0vZJI9MLhwjE6oPKxiJ5QuUq
 7Z6o3Jh53ZrCOITGag1/A0/wrUYHBgNNVtjlknD4Eg0Ycvd0winPpKpxS
 AvXA9rWxB2+zKe+osDJhMQqxlJ13rgRa/FZaTyN0sknBIBNSPNVj0J8AZ
 9BJQjnpXVPrqoRes41u+wE3l3xwODFiYK07fewbbrTqA0TDVsROSL81Mh
 MVEOEG1P1T/k3m4daRh21vVu5qTyaKVZ/yDysPMCIuW41b/BobTRs/PMq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="293417943"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="293417943"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 11:37:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="585492602"
Received: from mstepka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.134.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 11:37:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220504114808.1578304-1-andrzej.hajda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220504114808.1578304-1-andrzej.hajda@intel.com>
Date: Thu, 05 May 2022 21:37:49 +0300
Message-ID: <87h763ltaa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/fbdev: print error in case
 drm_fb_helper_initial_config fails
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

On Wed, 04 May 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On some configurations drm_fb_helper_initial_config sometimes fails.
> Logging error value should help debugging such issues.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 221336178991f0..557c7f15ac22a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -539,11 +539,16 @@ int intel_fbdev_init(struct drm_device *dev)
>  static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
>  {
>  	struct intel_fbdev *ifbdev = data;
> +	int ret;
>  
>  	/* Due to peculiar init order wrt to hpd handling this is separate. */
> -	if (drm_fb_helper_initial_config(&ifbdev->helper,
> -					 ifbdev->preferred_bpp))
> -		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
> +	ret = drm_fb_helper_initial_config(&ifbdev->helper,
> +					   ifbdev->preferred_bpp);
> +	if (!ret)
> +		return;

If this patch is intended for merging, I'd prefer keeping the failure
path indented within if (ret).

> +	drm_err(ifbdev->helper.dev, "failed to set initial configuration: %pe\n",
> +		ERR_PTR(ret));

I'm leaning towards preferring "%s", errname(ret) over "%pe",
ERR_PTR(ret) because everyone knows what %s means and using ERR_PTR()
seems odd when it's really a plain int.

BR,
Jani.

> +	intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>  }
>  
>  void intel_fbdev_initial_config_async(struct drm_device *dev)

-- 
Jani Nikula, Intel Open Source Graphics Center
