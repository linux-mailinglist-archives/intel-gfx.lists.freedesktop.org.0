Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E56287578F3
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 12:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3050710E30C;
	Tue, 18 Jul 2023 10:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A18310E30C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 10:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689674908; x=1721210908;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=KDt025Ii4rPrQs3PL4VnOE0NKc1JC0h/os9HwCDg7ic=;
 b=ABEpbeC5bXKJI6HdQuhsZLOhz+0dse6+nAiQGA0zy0Z9ExDXjwr+aIlo
 AZ9W6daG+76b0nLBVbce6lsViFzliMhkjpi8zET8dXghjNXTxzNNPU5mF
 XySnXqzpkPUQ5IXfIEtozm5ny2eps9rVlVYLPoscKx5FELPtXyRtrgo+X
 WS/VDa3oprqJAwSvC0aewxdY+O55GnPldpsy5rXB3XZDjfzG09aFRPd6i
 ROunFLTPZ30CcGpreBR4n9qAFe305xIKViewZlDyXHGtaouLwkhL5aYcv
 xw8ol3UC20h6g2fgXH/6ZZO/2W9c6yh8ir5Oqr+Rqj0kVtOy7oRKSp7vn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="429925957"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="429925957"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 03:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="837236302"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="837236302"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO [10.213.207.99])
 ([10.213.207.99])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 03:08:26 -0700
Message-ID: <8bf4f875-4b52-32ad-4177-3d0803710607@linux.intel.com>
Date: Tue, 18 Jul 2023 11:08:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230718053324.2473817-1-radhakrishna.sripada@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230718053324.2473817-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dpt: Use shmem for dpt objects
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


On 18/07/2023 06:33, Radhakrishna Sripada wrote:
> Dpt objects that are created from internal get evicted when there is
> memory pressure and do not get restored when pinned during scanout. The
> pinned page table entries look corrupted and programming the display
> engine with the incorrect pte's result in DE throwing pipe faults.
> 
> Create DPT objects from shmem and mark the object as dirty when pinning so
> that the object is restored when shrinker evicts an unpinned buffer object.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
Cc: <stable@vger.kernel.org> # v6.0+

Not sure which platforms it actually applies so just mentioning to pick the right one.

> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dpt.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 7c5fddb203ba..a57d18550a46 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -166,6 +166,9 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>   		i915_vma_get(vma);
>   	}
>   
> +	if (i915_gem_object_is_shmem(dpt->obj))
> +		dpt->obj->cache_dirty = true;

GPU writes to this object behind the covers or what is supposed to be the purpose of this?

> +
>   	atomic_dec(&i915->gpu_error.pending_fb_pin);
>   	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>   
> @@ -261,7 +264,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>   		dpt_obj = i915_gem_object_create_stolen(i915, size);
>   	if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
>   		drm_dbg_kms(&i915->drm, "Allocating dpt from smem\n");
> -		dpt_obj = i915_gem_object_create_internal(i915, size);
> +		dpt_obj = i915_gem_object_create_shmem(i915, size);

Yeah it "says on the tin" with internal objects that content is not preserved across re-pinning.

As a disclaimer,  I am not familiar with the lifetime of the DPT objects and their content. But the statement that page table entries are corrupt sounds worrying, like there is more to it than the backing store type.

Also, there is "*make_unshrinkable*" pair of functions which could be used. But again that would be about object content, not corrupt PTEs.. Unless with corrupt what is meant is stale? Maybe put a poison into dpt_clear_range to see if unpinned range is what the display engine will hit?
  
Regards,

Tvrtko

>   	}
>   	if (IS_ERR(dpt_obj))
>   		return ERR_CAST(dpt_obj);
