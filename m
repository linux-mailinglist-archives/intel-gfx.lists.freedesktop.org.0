Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E593B318A77
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 13:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DC56E40B;
	Thu, 11 Feb 2021 12:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3571C6E40B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 12:28:05 +0000 (UTC)
IronPort-SDR: jQrJ4hhKXPGkj2M4C6BKkn2v6+wg5PfQF5mCI3FloG7GYSWTVHKwcjDqNgSxcrS7P27nUQ+Mo6
 7RViUUf6RRGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246296918"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="246296918"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 04:27:59 -0800
IronPort-SDR: va1mGoD8zjhwu8NZLSftBR4J1BBUGkQ3gJVThZJfLTIC5nN0if2IvnEH/N3YOwsoRlTA49pDEZ
 rABTxmGZrkvw==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="422210455"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO [10.252.0.180])
 ([10.252.0.180])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 04:27:58 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210211112051.14204-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <f0e8e342-f7a3-dc52-b399-3b16ee30e23b@intel.com>
Date: Thu, 11 Feb 2021 12:27:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210211112051.14204-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Probe system memory regions
 before enabling HW
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/02/2021 11:20, Chris Wilson wrote:
> If we want to track system/stolen as memory regions, we need to setup
> our bookkeeping *before* we want to start allocating and reserving
> objects in those regions. In particular, in setup up the GGTT we will
> try to preallocate stolen regions configured by the BIOS, and so should
> prepare the system-stolen memory region beforehand.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index b708517d3972..139cea4443fd 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -557,6 +557,10 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   
>   	i915_perf_init(dev_priv);
>   
> +	ret = intel_memory_regions_hw_probe(dev_priv);
> +	if (ret)
> +		goto err_ggtt;

Hmmm, adjust_stolen is also peeking at ggtt_total_entries(ggtt) on some 
old platforms.

> +
>   	ret = i915_ggtt_probe_hw(dev_priv);
>   	if (ret)
>   		goto err_perf;
> @@ -569,10 +573,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>   	if (ret)
>   		goto err_ggtt;
>   
> -	ret = intel_memory_regions_hw_probe(dev_priv);
> -	if (ret)
> -		goto err_ggtt;
> -
>   	intel_gt_init_hw_early(&dev_priv->gt, &dev_priv->ggtt);
>   
>   	ret = intel_gt_probe_lmem(&dev_priv->gt);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
