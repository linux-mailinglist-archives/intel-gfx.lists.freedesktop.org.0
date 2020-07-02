Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5B2212350
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 14:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5196E1DE;
	Thu,  2 Jul 2020 12:27:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5526E248
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 12:27:48 +0000 (UTC)
IronPort-SDR: RalTxRVw+kO5h/xmrSvZ95eAk5PyMvTEhv0YFHoAL27M8ER1VMDAVvTZlTlkYRZ7OooVFD1ZhQ
 fwsOUOHun3rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164926612"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="164926612"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 05:27:48 -0700
IronPort-SDR: n9B3TEmF8lcbbhsfjDkqIXQuq8GVImYsOh43rXQc7XhMKv6Gu3/fCZDvGglnjXh/wiZElnBznP
 pY0nc+5sNWzA==
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="481984527"
Received: from dandoron-mobl.ger.corp.intel.com (HELO [10.214.212.30])
 ([10.214.212.30])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 05:27:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8a50fa3d-83bd-0a75-cd50-17a593a2e0ca@linux.intel.com>
Date: Thu, 2 Jul 2020 13:27:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Drop vm.ref for duplicate
 vma on construction
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/07/2020 09:32, Chris Wilson wrote:
> As we allow for parallel threads to create vma instances in parallel,
> and we only filter out the duplicates upon reacquiring the spinlock for
> the rbtree, we have to free the loser of the constructors' race. When
> freeing, we should also drop any resource references acquired for the
> redundant vma.
> 
> Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.5+
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 1f63c4a1f055..7fe1f317cd2b 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -198,6 +198,7 @@ vma_create(struct drm_i915_gem_object *obj,
>   		cmp = i915_vma_compare(pos, vm, view);
>   		if (cmp == 0) {
>   			spin_unlock(&obj->vma.lock);
> +			i915_vm_put(vm);
>   			i915_vma_free(vma);
>   			return pos;
>   		}
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
