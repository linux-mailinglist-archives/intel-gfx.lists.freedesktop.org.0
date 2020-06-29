Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3C720CF88
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 17:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2288089DBD;
	Mon, 29 Jun 2020 15:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95A4489DBD
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 15:14:10 +0000 (UTC)
IronPort-SDR: iB++1A6QUgCvYasMWaNcKd3J08NB1ICj20x9gwRr1PRTZhzB90/1pHkSf2amkE/OBqA0GKRrR3
 DlXcwbovCCuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="145979890"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="145979890"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 08:14:10 -0700
IronPort-SDR: yyd9a4IRcihGGbIAbVtT4eFecVdC+1ZQiIDakESikbtEi7mu9z6RxFJEPn5NRl+t8MQtGBJtJy
 Xc90G+nfD3Gg==
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="454226362"
Received: from tkeuter-mobl2.ger.corp.intel.com (HELO [10.249.42.155])
 ([10.249.42.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 08:14:09 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-8-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <48435be5-d827-d785-9395-0d69a2b061a5@linux.intel.com>
Date: Mon, 29 Jun 2020 16:14:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623142843.423594-8-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/26] drm/i915/gem: Make eb_add_lut
 interruptible wait on object lock.
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


On 23/06/2020 15:28, Maarten Lankhorst wrote:
> The lock here should be interruptible, so we can backoff if needed.

I spied Chris posting "drm/i915/gem: Move obj->lut_list under its own 
lock" so maybe have a look at that.

My question here is..

> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 2636a130fb57..aa441af81431 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -774,7 +774,12 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
>   		if (err == 0) { /* And nor has this handle */
>   			struct drm_i915_gem_object *obj = vma->obj;
>   
> -			i915_gem_object_lock(obj, NULL);
> +			err = i915_gem_object_lock_interruptible(obj, NULL);

.. does this lock-unlock survive to the end of your series or gets 
completely subsumed by the ctx locking?

Regards,

Tvrtko

> +			if (err) {
> +				radix_tree_delete(&ctx->handles_vma, handle);
> +				goto unlock;
> +			}
> +
>   			if (idr_find(&eb->file->object_idr, handle) == obj) {
>   				list_add(&lut->obj_link, &obj->lut_list);
>   			} else {
> @@ -783,6 +788,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
>   			}
>   			i915_gem_object_unlock(obj);
>   		}
> +unlock:
>   		mutex_unlock(&ctx->mutex);
>   	}
>   	if (unlikely(err))
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
