Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E652A2FF3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 17:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BDF6E500;
	Mon,  2 Nov 2020 16:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0906E500
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 16:38:38 +0000 (UTC)
IronPort-SDR: foMjUDv23cK8luI4foZh0kTTnBBMoujDkQKnsbE/ywmy7DlKPDgf+Q8XsaTvNPY2wnpnkWwBhT
 yxI5/YM5oJPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="148767598"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="148767598"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 08:38:38 -0800
IronPort-SDR: wT3sLkv+9h5Fnt986mMZt3G2YRn3BEkl7TSy5FWLz/iYz/smP1TdiVkjgKWw3WE+PawCEmRvs6
 Vo9bfDD2T+jg==
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="538084323"
Received: from obarniv1-mobl.ger.corp.intel.com (HELO [10.214.212.214])
 ([10.214.212.214])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 08:38:36 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201102161931.30031-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <788e4993-4b61-dd7f-cd02-6c628daf894c@linux.intel.com>
Date: Mon, 2 Nov 2020 16:38:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201102161931.30031-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Hold onto an explicit ref to
 i915_vma_work.pinned
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


On 02/11/2020 16:19, Chris Wilson wrote:
> Since __vma_release is run by a kworker after the fence has been
> signaled, it is no longer protected by the active reference on the vma,
> and so the alias of vw->pinned to vma->obj is also not protected by a
> reference on the object. Add an explicit reference for vw->pinned so it
> will always be safe.
> 
> Found by inspection.
> 
> Fixes: 54d7195f8c64 ("drm/i915: Unpin vma->obj on early error")
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.6+
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index ffb5287e055a..caa9b041616b 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -314,8 +314,10 @@ static void __vma_release(struct dma_fence_work *work)
>   {
>   	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
>   
> -	if (vw->pinned)
> +	if (vw->pinned) {
>   		__i915_gem_object_unpin_pages(vw->pinned);
> +		i915_gem_object_put(vw->pinned);
> +	}
>   
>   	i915_vm_free_pt_stash(vw->vm, &vw->stash);
>   	i915_vm_put(vw->vm);
> @@ -431,7 +433,7 @@ int i915_vma_bind(struct i915_vma *vma,
>   
>   		if (vma->obj) {
>   			__i915_gem_object_pin_pages(vma->obj);
> -			work->pinned = vma->obj;
> +			work->pinned = i915_gem_object_get(vma->obj);
>   		}
>   	} else {
>   		vma->ops->bind_vma(vma->vm, NULL, vma, cache_level, bind_flags);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
