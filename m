Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D82E53A1765
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 16:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3630E6E420;
	Wed,  9 Jun 2021 14:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C8B6E420
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 14:36:18 +0000 (UTC)
IronPort-SDR: mbzXW0YM+GFq1rCZKzfS9/OV0MMCPVTd4aCayZosbezODnAzfXiu3BA3TxRUdIICMcKlHVKxbk
 qB+XvreXbtGQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="204897489"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="204897489"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:36:17 -0700
IronPort-SDR: 8X6ytCusLKyv/NNia0KY/3CvXzDdBvVkwXVS7N/9FPDVY1ey/OJix7xw08MsoVcv0T14NmEaWv
 9qqBysaPBNFg==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="482407261"
Received: from ochaldek-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.111])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:36:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210603065038.7298-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210603065038.7298-1-stanislav.lisovskiy@intel.com>
Date: Wed, 09 Jun 2021 17:36:12 +0300
Message-ID: <87sg1ryujn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: CDCLK crawl support for ADL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 03 Jun 2021, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> CDCLK crawl feature allows to change CDCLK frequency
> without disabling the actual PLL and doesn't require
> a full modeset.

I've pushed this to din because supposedly this is urgent.

However, there are some issues, comments inline, please fix them
afterwards.

BR,
Jani.

>
> v2: - Added has_cdclk_crawl as a feature flag to
>       intel_device_info(Matt Roper)
>     - s/gen13_cdclk_pll_crawl/adlp_cdclk_pll_crawl/
>       (Matt Roper)
>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 72 +++++++++++++++++++---
>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>  drivers/gpu/drm/i915/i915_reg.h            |  2 +
>  drivers/gpu/drm/i915/intel_device_info.h   |  2 +
>  4 files changed, 68 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 4656a6edc3be..f24bd9cf1318 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1547,6 +1547,35 @@ static void cnl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
>  	dev_priv->cdclk.hw.vco = vco;
>  }
>  
> +static bool has_cdclk_crawl(struct drm_i915_private *i915)
> +{
> +	return INTEL_INFO(i915)->has_cdclk_crawl;
> +}

For everything else we use HAS_SOMETHING() in i915_drv.h, not local
functions.

[...]

> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 1390fad5ec06..b326aff65cd6 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -185,6 +185,8 @@ struct intel_device_info {
>  
>  	u8 abox_mask;
>  
> +	u8 has_cdclk_crawl;  /* does support CDCLK crawling */
> +

Flags are supposed to be added to DEV_INFO_FOR_EACH_FLAG() in
intel_device_info.h. Or, actually, this one's about display, so
DEV_INFO_DISPLAY_FOR_EACH_FLAG().

This makes them 1-bit bitfields instead of 8 bits, and automatically
adds them to debug printouts.

>  #define DEFINE_FLAG(name) u8 name:1
>  	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
>  #undef DEFINE_FLAG

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
