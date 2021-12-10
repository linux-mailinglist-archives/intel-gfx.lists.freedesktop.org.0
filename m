Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB37946FD00
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 09:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547EF10E446;
	Fri, 10 Dec 2021 08:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4006B10E445
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 08:51:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="235821455"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="235821455"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 00:51:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="463599852"
Received: from kbinis1x-mobl2.gar.corp.intel.com (HELO [10.209.148.127])
 ([10.209.148.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 00:51:06 -0800
Message-ID: <d8e9dfad-7665-cc29-9f53-ff350c8a402d@linux.intel.com>
Date: Fri, 10 Dec 2021 08:51:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: dong.yang@intel.com, intel-gfx@lists.freedesktop.org
References: <20211210013147.2256699-1-dong.yang@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211210013147.2256699-1-dong.yang@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request
 to intel_context twice
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


On 10/12/2021 01:31, dong.yang@intel.com wrote:
> From: "Yang, Dong" <dong.yang@intel.com>
> 
> With unknow race condition, the i915_request will be added

What do you mean with unknown here?

> to intel_context list twice, and result in system panic.
> 
> If node alreay exist then do not add it again.

Note the call chains are under ce->signal_lock and protecting from double add AFAICT:

static void insert_breadcrumb(struct i915_request *rq)
{
...
	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
		return;
...
	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);


bool i915_request_enable_breadcrumb(struct i915_request *rq)
{
...
	spin_lock(&ce->signal_lock);
	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags))
		insert_breadcrumb(rq);
	spin_unlock(&ce->signal_lock);


void i915_request_cancel_breadcrumb(struct i915_request *rq)
{
...
	spin_lock(&ce->signal_lock);
	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
		spin_unlock(&ce->signal_lock);
		return;
	}

void intel_context_remove_breadcrumbs(struct intel_context *ce,
				      struct intel_breadcrumbs *b)
{
...
	spin_lock_irqsave(&ce->signal_lock, flags);

	if (list_empty(&ce->signals))
		goto unlock;

	list_for_each_entry_safe(rq, rn, &ce->signals, signal_link) {
		GEM_BUG_ON(!__i915_request_is_complete(rq));
		if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
					&rq->fence.flags))
			continue;

The last one in signal_irq_work is guarded by the __i915_request_is_complete check.

So I think more context is needed on how you found this may be an issue.

Regards,

Tvrtko

> 
> Signed-off-by: Yang, Dong <dong.yang@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 209cf265bf74..9c7bc060d2ae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -387,6 +387,9 @@ static void insert_breadcrumb(struct i915_request *rq)
>   		}
>   	}
>   
> +	if (&rq->signal_link == pos)
> +		return;
> +
>   	i915_request_get(rq);
>   	list_add_rcu(&rq->signal_link, pos);
>   	GEM_BUG_ON(!check_signal_order(ce, rq));
> 
