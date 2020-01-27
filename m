Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EFB14A5D7
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 15:16:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59CF6E041;
	Mon, 27 Jan 2020 14:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACB36E041
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 14:16:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 06:16:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221746953"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Jan 2020 06:16:00 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
 <20200126102346.1877661-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6ca9947e-e4ec-5d0b-86b7-df03f9f0646f@linux.intel.com>
Date: Mon, 27 Jan 2020 14:15:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200126102346.1877661-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Check current
 i915_vma.pin_count status first on unbind
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


On 26/01/2020 10:23, Chris Wilson wrote:
> Do an early rejection of a i915_vma_unbind() attempt if the i915_vma is
> currently pinned, without waiting to see if the inflight operations may
> unpin it. We see this problem with the shrinker trying to unbind the
> active vma from inside its bind worker:

What is the actual problem? flush_work from a worker?

Regards,

Tvrtko

> <6> [472.618968] Workqueue: events_unbound fence_work [i915]
> <4> [472.618970] Call Trace:
> <4> [472.618974]  ? __schedule+0x2e5/0x810
> <4> [472.618978]  schedule+0x37/0xe0
> <4> [472.618982]  schedule_preempt_disabled+0xf/0x20
> <4> [472.618984]  __mutex_lock+0x281/0x9c0
> <4> [472.618987]  ? mark_held_locks+0x49/0x70
> <4> [472.618989]  ? _raw_spin_unlock_irqrestore+0x47/0x60
> <4> [472.619038]  ? i915_vma_unbind+0xae/0x110 [i915]
> <4> [472.619084]  ? i915_vma_unbind+0xae/0x110 [i915]
> <4> [472.619122]  i915_vma_unbind+0xae/0x110 [i915]
> <4> [472.619165]  i915_gem_object_unbind+0x1dc/0x400 [i915]
> <4> [472.619208]  i915_gem_shrink+0x328/0x660 [i915]
> <4> [472.619250]  ? i915_gem_shrink_all+0x38/0x60 [i915]
> <4> [472.619282]  i915_gem_shrink_all+0x38/0x60 [i915]
> <4> [472.619325]  vm_alloc_page.constprop.25+0x1aa/0x240 [i915]
> <4> [472.619330]  ? rcu_read_lock_sched_held+0x4d/0x80
> <4> [472.619363]  ? __alloc_pd+0xb/0x30 [i915]
> <4> [472.619366]  ? module_assert_mutex_or_preempt+0xf/0x30
> <4> [472.619368]  ? __module_address+0x23/0xe0
> <4> [472.619371]  ? is_module_address+0x26/0x40
> <4> [472.619374]  ? static_obj+0x34/0x50
> <4> [472.619376]  ? lockdep_init_map+0x4d/0x1e0
> <4> [472.619407]  setup_page_dma+0xd/0x90 [i915]
> <4> [472.619437]  alloc_pd+0x29/0x50 [i915]
> <4> [472.619470]  __gen8_ppgtt_alloc+0x443/0x6b0 [i915]
> <4> [472.619503]  gen8_ppgtt_alloc+0xd7/0x300 [i915]
> <4> [472.619535]  ppgtt_bind_vma+0x2a/0xe0 [i915]
> <4> [472.619577]  __vma_bind+0x26/0x40 [i915]
> <4> [472.619611]  fence_work+0x1c/0x90 [i915]
> <4> [472.619617]  process_one_work+0x26a/0x620
> 
> Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 17 +++++------------
>   1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 84e03da0d5f9..2ffc68e18dd0 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1190,18 +1190,6 @@ int __i915_vma_unbind(struct i915_vma *vma)
>   
>   	lockdep_assert_held(&vma->vm->mutex);
>   
> -	/*
> -	 * First wait upon any activity as retiring the request may
> -	 * have side-effects such as unpinning or even unbinding this vma.
> -	 *
> -	 * XXX Actually waiting under the vm->mutex is a hinderance and
> -	 * should be pipelined wherever possible. In cases where that is
> -	 * unavoidable, we should lift the wait to before the mutex.
> -	 */
> -	ret = i915_vma_sync(vma);
> -	if (ret)
> -		return ret;
> -
>   	if (i915_vma_is_pinned(vma)) {
>   		vma_print_allocator(vma, "is pinned");
>   		return -EAGAIN;
> @@ -1275,6 +1263,11 @@ int i915_vma_unbind(struct i915_vma *vma)
>   	if (!drm_mm_node_allocated(&vma->node))
>   		return 0;
>   
> +	if (i915_vma_is_pinned(vma)) {
> +		vma_print_allocator(vma, "is pinned");
> +		return -EAGAIN;
> +	}
> +
>   	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
>   		/* XXX not always required: nop_clear_range */
>   		wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
