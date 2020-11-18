Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 551E72B7F1B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 15:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAD66E3D0;
	Wed, 18 Nov 2020 14:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8118C6E3D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 14:10:42 +0000 (UTC)
IronPort-SDR: YT9zbUli4hZCQ7BqXROQznwAYb+jPzQAPUs39M2S4vRwKrnkpey+eBOxQvZB7fyW9H4f6r3gY/
 wS0z6sSnP0/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="167609563"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="167609563"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 06:10:20 -0800
IronPort-SDR: ZUyG//krEAUgwHSG1AJKqhegF8jV/U4I2rhYNlQajIH5eLBaj/SVDOLpUZnBBbGHXkGAapYlkW
 cJV27dMXwQ7A==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="544544989"
Received: from shaid-mobl.ger.corp.intel.com (HELO [10.255.202.56])
 ([10.255.202.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 06:10:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201118133839.1783-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <59b105d5-29e8-2932-c7d4-44365a803097@linux.intel.com>
Date: Wed, 18 Nov 2020 14:10:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201118133839.1783-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remember to free the virtual
 breadcrumbs
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


On 18/11/2020 13:38, Chris Wilson wrote:
> Since we allocate some breadcrumbs for the virtual engine, and the
> virtual engine has a custom destructor, we also need to free the
> breadcrumbs after use.
> 
> Fixes: b3786b29379c ("drm/i915/gt: Distinguish the virtual breadcrumbs from the irq breadcrumbs")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 8a51c1c3a091..eaa0a9f38ae5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -5512,6 +5512,7 @@ static void virtual_context_destroy(struct kref *kref)
>   		__execlists_context_fini(&ve->context);
>   	intel_context_fini(&ve->context);
>   
> +	intel_breadcrumbs_free(ve->base.breadcrumbs);
>   	intel_engine_free_request_pool(&ve->base);
>   
>   	kfree(ve->bonds);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
