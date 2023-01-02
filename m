Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B64365AF4B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 11:08:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DC010E2EC;
	Mon,  2 Jan 2023 10:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3BB410E2EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 10:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672654124; x=1704190124;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iEcSdMMP6dXmQ0BkfOYmwvZgntRXiXOtoDwKZ7fWwKc=;
 b=n701skK6OM/+Jn+W7eVvVJt2SCjU/AemulOJJrEGUNoHuzFwiFNoUSIQ
 VP6ZaQ7U7QSkGeiFpyvGcqaQcpoh2PVBSZKoxnFIqNgCEJafoj5LIhJTs
 3j0nfSAZFgpOb4QwLHXkqJSyvELt1G/9iWpXR4BNILkiVtmchgxPPqb6p
 r5CVUcOV6jZBGV4pvBwxv2aWKr7SLv+nJj4EEd/QO9RsnM2mIeHgxc7hf
 JtMhmLLu9EbHzI96vb5G0Q1WnPqc8Svj66DAYQYknSNePPg3kb2n8sSu9
 ZrhGhyOzXbSlancndkeJRU6x7chY/GGYxr5uOLpb2FuHnveATU9N+xWGz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="301835937"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="301835937"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 02:07:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="604502652"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="604502652"
Received: from shoey-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.185])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jan 2023 02:07:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230102062005.720964-4-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
 <20230102062005.720964-4-chaitanya.kumar.borah@intel.com>
Date: Mon, 02 Jan 2023 12:07:20 +0200
Message-ID: <87o7rhz1uv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 3/4] drm/i915: Initialize intel quirks before
 CDCLK initialization
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 02 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> With addition of new quirk QUIRK_480MHZ_CDCLK_STEP, it is imperative
> that quirks should be initialized before CDCLK initialization. Refactor
> the code accordingly.

Any refactors here should improve the clarity between display and the
rest; this is going the opposite direction with calling display code
from common driver code.

BR,
Jani.


>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 --
>  drivers/gpu/drm/i915/i915_driver.c           | 2 ++
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e75b9b2a0e01..5c71fd83c25b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8666,8 +8666,6 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  	INIT_WORK(&i915->display.atomic_helper.free_work,
>  		  intel_atomic_helper_free_state_worker);
>  
> -	intel_init_quirks(i915);
> -
>  	intel_fbc_init(i915);
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c1e427ba57ae..4d1cb46f9863 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -104,6 +104,7 @@
>  #include "intel_pm.h"
>  #include "intel_region_ttm.h"
>  #include "vlv_suspend.h"
> +#include "display/intel_quirks.h"
>  
>  static const struct drm_driver i915_drm_driver;
>  
> @@ -388,6 +389,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	if (ret < 0)
>  		goto err_gem;
>  	intel_irq_init(dev_priv);
> +	intel_init_quirks(dev_priv);
>  	intel_init_display_hooks(dev_priv);
>  	intel_init_clock_gating_hooks(dev_priv);

-- 
Jani Nikula, Intel Open Source Graphics Center
