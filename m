Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5537EC290
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 13:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6564810E113;
	Wed, 15 Nov 2023 12:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71EAF10E113
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700052022; x=1731588022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UUvvd/4hhTHApfEJk/+nFKLjqKSEKnTIVhOWsSObMlM=;
 b=OliRztpjvy9X1JZgN5vSptoJHzVTKkv+2E57uU7IWzYmZD1/cnHlOuTb
 n60jssz2+JDgQ95gWDtN66ILIwwm3N4392myexDPSUB1JH3tE5kfO+pVD
 30Z38ZVTbL0TwySsm28houH53TOUu6Wl7wW8pJFLE3gkjx2lUP1SgNKD0
 7j45I8AAUN0ju1nOcoqnzX5T9zlc1uzShPA3+l/I/ytf8r+kafsvvpg8G
 5HaqITjtGftgU5Bv8Q94cejnRhojORSc6s/CaVvakVscQGGGgueL0p0U5
 cbn8sulWPWDRs9MAS6QI1eY8jl5H86cFE9sJfkotyGEJbfjM7AYYmwZA2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="390665605"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="390665605"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 04:40:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="1096431620"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="1096431620"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.10.45])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 04:40:19 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 15 Nov 2023 13:40:17 +0100
Message-ID: <3378498.VqM8IeB0Os@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231115-eols-v1-1-d47a2f52b807@intel.com>
References: <20231115-eols-v1-1-d47a2f52b807@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: add missing new-line to
 GT_TRACE
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, 15 November 2023 13:10:33 CET Andrzej Hajda wrote:
> Trace requires new-line at the end of message (in opposition to printk),
> otherwise trace dump becomes messy.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Acked-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index f5899d503e234b..471b7cdc10ba0f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -167,7 +167,7 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
>  	enum intel_engine_id id;
>  	intel_wakeref_t wakeref;
>  
> -	GT_TRACE(gt, "force:%s", str_yes_no(force));
> +	GT_TRACE(gt, "force:%s\n", str_yes_no(force));
>  
>  	/* Use a raw wakeref to avoid calling intel_display_power_get early */
>  	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> 
> ---
> base-commit: 1489bab52c281a869295414031a56506a375b036
> change-id: 20231115-eols-20f9f52cf338
> 
> Best regards,
> 




