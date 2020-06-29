Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE44720CF36
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 16:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0EB89A08;
	Mon, 29 Jun 2020 14:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 894F089A08
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 14:42:10 +0000 (UTC)
IronPort-SDR: hmZChdT++4Jk0U8HzaKfB4f59dWxxRH8TA+cQ0oa4lz398lZSHMO09g75M7Ej8vve5uOh3CUQZ
 pgFSOwJv/jmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="211053704"
X-IronPort-AV: E=Sophos;i="5.75,294,1589266800"; d="scan'208";a="211053704"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 07:42:09 -0700
IronPort-SDR: S2vlgHgfPqcMDZX88mP8N1xBHMQO5rRldLx5X01apqFfYPZBFPbI/+69yZwpZ6pXSWT3Ai5CkN
 uiOiq8jboJPA==
X-IronPort-AV: E=Sophos;i="5.75,294,1589266800"; d="scan'208";a="454215434"
Received: from tkeuter-mobl2.ger.corp.intel.com (HELO [10.249.42.155])
 ([10.249.42.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 07:42:09 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-6-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6af770d1-367d-52df-4aec-26af9e05e5d7@linux.intel.com>
Date: Mon, 29 Jun 2020 15:42:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623142843.423594-6-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/26] drm/i915: Parse command buffer
 earlier in eb_relocate(slow)
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
> We want to introduce backoff logic, but we need to lock the
> pool object as well for command parsing. Because of this, we
> will need backoff logic for the engine pool obj, move the batch
> validation up slightly to eb_lookup_vmas, and the actual command
> parsing in a separate function which can get called from execbuf
> relocation fast and slowpath.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 66 ++++++++++---------
>   1 file changed, 36 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index f896b1a4b38a..7cb44915cfc7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -290,6 +290,8 @@ struct i915_execbuffer {
>   	struct eb_vma_array *array;
>   };
>   
> +static int eb_parse(struct i915_execbuffer *eb);
> +
>   static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
>   {
>   	return intel_engine_requires_cmd_parser(eb->engine) ||
> @@ -873,6 +875,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   
>   static int eb_lookup_vmas(struct i915_execbuffer *eb)
>   {
> +	struct drm_i915_private *i915 = eb->i915;
>   	unsigned int batch = eb_batch_index(eb);
>   	unsigned int i;
>   	int err = 0;
> @@ -886,18 +889,37 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>   		vma = eb_lookup_vma(eb, eb->exec[i].handle);
>   		if (IS_ERR(vma)) {
>   			err = PTR_ERR(vma);
> -			break;
> +			goto err;
>   		}
>   
>   		err = eb_validate_vma(eb, &eb->exec[i], vma);
>   		if (unlikely(err)) {
>   			i915_vma_put(vma);
> -			break;
> +			goto err;
>   		}
>   
>   		eb_add_vma(eb, i, batch, vma);
>   	}
>   
> +	if (unlikely(eb->batch->flags & EXEC_OBJECT_WRITE)) {
> +		drm_dbg(&i915->drm,
> +			"Attempting to use self-modifying batch buffer\n");
> +		return -EINVAL;
> +	}
> +
> +	if (range_overflows_t(u64,
> +			      eb->batch_start_offset, eb->batch_len,
> +			      eb->batch->vma->size)) {
> +		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
> +		return -EINVAL;
> +	}
> +
> +	if (eb->batch_len == 0)
> +		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;

How about you move the parsing step at least into a helper? So it is 
more obvious this step is not simply about looking up vmas, even if it 
is called from eb_lookup_vmas.

> +
> +	return 0;
> +
> +err:
>   	eb->vma[i].vma = NULL;
>   	return err;
>   }
> @@ -1809,7 +1831,7 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
>   	return 0;
>   }
>   
> -static noinline int eb_relocate_slow(struct i915_execbuffer *eb)

Something looks off - here you rename eb_relocate_slow but I don't see 
any callers changing in this patch. So I have to assume broken bisect stage.

> +static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
>   {
>   	bool have_copy = false;
>   	struct eb_vma *ev;
> @@ -1872,6 +1894,11 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
>   	if (err)
>   		goto err;
>   
> +	/* as last step, parse the command buffer */
> +	err = eb_parse(eb);
> +	if (err)
> +		goto err;
> +
>   	/*
>   	 * Leave the user relocations as are, this is the painfully slow path,
>   	 * and we want to avoid the complication of dropping the lock whilst
> @@ -1904,7 +1931,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
>   	return err;
>   }
>   
> -static int eb_relocate(struct i915_execbuffer *eb)
> +static int eb_relocate_parse(struct i915_execbuffer *eb)
>   {
>   	int err;
>   
> @@ -1932,7 +1959,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   			return eb_relocate_slow(eb);
>   	}
>   
> -	return 0;
> +	return eb_parse(eb);

And I am not a fan of relocation stage calling parse. Why couldn't every 
stage be done separately at the call sites so the stages are explicit 
and clear?

Commit message is explaining the parsing needs to go earlier, to come 
under the ww context block? But isn't it already after eb_lookup_vmas in 
current code?

Oh wait.. I am looking at drm-tip and don't have your reverts. It was 
agreed you will remove them, right? So I can wait for the next round to 
figure this re-organization.

Regards,

Tvrtko


>   }
>   
>   static int eb_move_to_gpu(struct i915_execbuffer *eb)
> @@ -2870,7 +2897,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	if (unlikely(err))
>   		goto err_context;
>   
> -	err = eb_relocate(&eb);
> +	err = eb_relocate_parse(&eb);
>   	if (err) {
>   		/*
>   		 * If the user expects the execobject.offset and
> @@ -2883,33 +2910,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   		goto err_vma;
>   	}
>   
> -	if (unlikely(eb.batch->flags & EXEC_OBJECT_WRITE)) {
> -		drm_dbg(&i915->drm,
> -			"Attempting to use self-modifying batch buffer\n");
> -		err = -EINVAL;
> -		goto err_vma;
> -	}
> -
> -	if (range_overflows_t(u64,
> -			      eb.batch_start_offset, eb.batch_len,
> -			      eb.batch->vma->size)) {
> -		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
> -		err = -EINVAL;
> -		goto err_vma;
> -	}
> -
> -	if (eb.batch_len == 0)
> -		eb.batch_len = eb.batch->vma->size - eb.batch_start_offset;
> -
> -	err = eb_parse(&eb);
> -	if (err)
> -		goto err_vma;
> -
>   	/*
>   	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
>   	 * batch" bit. Hence we need to pin secure batches into the global gtt.
>   	 * hsw should have this fixed, but bdw mucks it up again. */
> -	batch = eb.batch->vma;
>   	if (eb.batch_flags & I915_DISPATCH_SECURE) {
>   		struct i915_vma *vma;
>   
> @@ -2923,13 +2927,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   		 *   fitting due to fragmentation.
>   		 * So this is actually safe.
>   		 */
> -		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
> +		vma = i915_gem_object_ggtt_pin(eb.batch->vma->obj, NULL, 0, 0, 0);
>   		if (IS_ERR(vma)) {
>   			err = PTR_ERR(vma);
>   			goto err_parse;
>   		}
>   
>   		batch = vma;
> +	} else {
> +		batch = eb.batch->vma;
>   	}
>   
>   	/* All GPU relocation batches must be submitted prior to the user rq */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
