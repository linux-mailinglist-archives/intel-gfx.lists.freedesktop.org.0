Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A32F124754
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 13:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 750C66E416;
	Wed, 18 Dec 2019 12:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9504E6E416
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 12:54:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 04:54:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="210078346"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 18 Dec 2019 04:54:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191218093504.3477048-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f5e0ac14-36f7-58cd-a0f7-7d3adc3fef2a@linux.intel.com>
Date: Wed, 18 Dec 2019 12:54:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218093504.3477048-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Ratelimit display power w/a
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


On 18/12/2019 09:35, Chris Wilson wrote:
> For very light workloads that frequently park, acquiring the display
> power well (required to prevent the dmc from trashing the system) takes
> longer than the execution. A good example is the igt_coherency selftest,
> which is slowed down by an order of magnitude in the worst case with
> powerwell cycling. To prevent frequent cycling, while keeping our fast
> soft-rc6, use a timer to delay release of the display powerwell.
> 
> Fixes: 311770173fac ("drm/i915/gt: Schedule request retirement when timeline idles")
> References: https://gitlab.freedesktop.org/drm/intel/issues/848
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index bb57e3443a50..f36ce36dabeb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -88,8 +88,9 @@ static int __gt_park(struct intel_wakeref *wf)
>   	/* Everything switched off, flush any residual interrupt just in case */
>   	intel_synchronize_irq(i915);
>   
> +	/* Defer dropping the display power well for 100ms, it's slow! */
>   	GEM_BUG_ON(!wakeref);
> -	intel_display_power_put(i915, POWER_DOMAIN_GT_IRQ, wakeref);
> +	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>   
>   	i915_globals_park();
>   
> 

Checked that intel_display_power_get cancels the delayed put since I 
wasn't familiar with the API and it looks good.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
