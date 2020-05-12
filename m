Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF7A1CF2B8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 12:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1BD6E89C;
	Tue, 12 May 2020 10:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6FE6E89C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 10:41:44 +0000 (UTC)
IronPort-SDR: NHwWzD+zxgSIH5/VYzPY/Pd5NmUeQTr6vTDcY5d7q2XqDMOvKFAmc7R0nigqJmQpd1U6IYVh8c
 kS7ZUWCJYpKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 03:41:43 -0700
IronPort-SDR: IKGkcoonveRRsaxEa/z7hB2eSwHmMMWTLNtvjBme2nqnMHOXCmjMfwT/I5P8A7Z8xqVvma9d8X
 TmoBJ3UjM5fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="252857807"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 12 May 2020 03:41:42 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 36AFF5C1F36; Tue, 12 May 2020 13:39:31 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200509115217.26853-1-chris@chris-wilson.co.uk>
References: <20200509115217.26853-1-chris@chris-wilson.co.uk>
Date: Tue, 12 May 2020 13:39:31 +0300
Message-ID: <87lflx309o.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Watch out for idling during
 i915_gem_evict_something
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> i915_gem_evict_something() is charged with finding a slot within the GTT
> that we may reuse. Since our goal is not to stall, we first look for a
> slot that only overlaps idle vma. To this end, on the first pass we move
> any active vma to the end of the search list. However, we only stopped
> moving active vma after we see the first active vma twice. If during the
> search, that first active vma completed, we would not notice and keep on
> extending the search list.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1746
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.5+

Only thing I would change is tune up the subject line.
It fixes a possible busy loop in eviction so I feel 'watch out' is not
strong enough for my liking.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gem_evict.c | 26 ++++++++++++--------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> index 0ba7b1e881c0..6501939929d5 100644
> --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> @@ -128,6 +128,13 @@ i915_gem_evict_something(struct i915_address_space *vm,
>  	active = NULL;
>  	INIT_LIST_HEAD(&eviction_list);
>  	list_for_each_entry_safe(vma, next, &vm->bound_list, vm_link) {
> +		if (vma == active) { /* now seen this vma twice */
> +			if (flags & PIN_NONBLOCK)
> +				break;
> +
> +			active = ERR_PTR(-EAGAIN);
> +		}
> +
>  		/*
>  		 * We keep this list in a rough least-recently scanned order
>  		 * of active elements (inactive elements are cheap to reap).
> @@ -143,21 +150,12 @@ i915_gem_evict_something(struct i915_address_space *vm,
>  		 * To notice when we complete one full cycle, we record the
>  		 * first active element seen, before moving it to the tail.
>  		 */
> -		if (i915_vma_is_active(vma)) {
> -			if (vma == active) {
> -				if (flags & PIN_NONBLOCK)
> -					break;
> -
> -				active = ERR_PTR(-EAGAIN);
> -			}
> -
> -			if (active != ERR_PTR(-EAGAIN)) {
> -				if (!active)
> -					active = vma;
> +		if (active != ERR_PTR(-EAGAIN) && i915_vma_is_active(vma)) {
> +			if (!active)
> +				active = vma;
>  
> -				list_move_tail(&vma->vm_link, &vm->bound_list);
> -				continue;
> -			}
> +			list_move_tail(&vma->vm_link, &vm->bound_list);
> +			continue;
>  		}
>  
>  		if (mark_free(&scan, vma, flags, &eviction_list))
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
