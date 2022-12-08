Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C47646FC5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 13:32:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FAE10E21D;
	Thu,  8 Dec 2022 12:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9107E10E21D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 12:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670502769; x=1702038769;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=X+gCFy3mFBQyjIjuewUoMToKx/dXAqGtuzWm1Fl4TTM=;
 b=LHmiQrswN/gOlRUOA8txZcjVllDa3pfJzZ8hVGGoM4Sue0CznZ8jB1J0
 j2I0R8LailQNU+3MOrCUn3UeokqnvtvDPT1wFUmm4RQrkriuFB4mdIZx5
 OOtBtXHEYydlKmWxzGqKiEb7npl6kem51tgPLEF0IK2F69/zZNFKHni+M
 m2yRiob+HdgrbVKNlxjrUGF5GrZmH53zYuWlk3IoHU4O3X+TBpuZ/HhrZ
 vPxibEJsVdocZvRIxM1uPvLFlsgdXNY8UH5CQkU212XVeXko8B+HXe1Xy
 /I5Gc+UVrvNY/zuk8BzyE+Bqzi8UASY9prdUSKJ09AeJth9sRb0wOMY44 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="304790999"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="304790999"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 04:32:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="640610151"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="640610151"
Received: from danyang-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.18.245])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 04:32:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221208111217.3734461-1-andrzej.hajda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
Date: Thu, 08 Dec 2022 14:32:41 +0200
Message-ID: <877cz213fa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> Simplify the code.

Personally, I absolutely hate fetch_and_zero().

I understand the point, but there are two main traps:

First, the name implies atomicity, which there is none at all.

Second, the name implies it's part of a kernel core header, which it
isn't, and this just amplifies the first point.

It's surprising and misleading, and those are not things I like about
interfaces in the kernel.

I would not like to see this proliferate. If fetch_and_zero() was atomic
*and* part of a core kernel header, it would be a different matter. But
I don't think that's going to happen, exactly because it won't be atomic
and the name implies it is.


BR,
Jani.


>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 907ab7526cb478..2972d7533da44e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -304,10 +304,8 @@ static void i915_digport_work_func(struct work_struct *work)
>  	u32 old_bits = 0;
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	long_port_mask = dev_priv->display.hotplug.long_port_mask;
> -	dev_priv->display.hotplug.long_port_mask = 0;
> -	short_port_mask = dev_priv->display.hotplug.short_port_mask;
> -	dev_priv->display.hotplug.short_port_mask = 0;
> +	long_port_mask = fetch_and_zero(&dev_priv->display.hotplug.long_port_mask);
> +	short_port_mask = fetch_and_zero(&dev_priv->display.hotplug.short_port_mask);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  
>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
> @@ -379,10 +377,8 @@ static void i915_hotplug_work_func(struct work_struct *work)
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
>  
> -	hpd_event_bits = dev_priv->display.hotplug.event_bits;
> -	dev_priv->display.hotplug.event_bits = 0;
> -	hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
> -	dev_priv->display.hotplug.retry_bits = 0;
> +	hpd_event_bits = fetch_and_zero(&dev_priv->display.hotplug.event_bits);
> +	hpd_retry_bits = fetch_and_zero(&dev_priv->display.hotplug.retry_bits);
>  
>  	/* Enable polling for connectors which had HPD IRQ storms */
>  	intel_hpd_irq_storm_switch_to_polling(dev_priv);

-- 
Jani Nikula, Intel Open Source Graphics Center
