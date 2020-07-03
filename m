Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF67213B54
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 15:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E5C56E21D;
	Fri,  3 Jul 2020 13:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB766E21D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 13:49:16 +0000 (UTC)
IronPort-SDR: RH4+xvafZp79IvLxYGxq9kCFT22EArVfOM4p2k4NsBfDigCwrniQWLk/Gn+kMiXTTmDvte3Z9I
 bc5XOMltuV0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="148670513"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="148670513"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 06:49:12 -0700
IronPort-SDR: A2pmfclt2FA2Adt6YF8rW//g7TscRYx9i/eHG7wVVapMoU4mBDCgNlcJ3BhHhKSumgl0/+slS5
 tadB6eX8VC6g==
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="455905948"
Received: from rbendor-mobl1.ger.corp.intel.com (HELO [10.214.211.147])
 ([10.214.211.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 06:49:11 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-7-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <77d31489-33f1-c025-aa3c-bfe3d70a0e54@linux.intel.com>
Date: Fri, 3 Jul 2020 14:49:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200703122221.591656-7-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/23] drm/i915: Parse command buffer
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


On 03/07/2020 13:22, Maarten Lankhorst wrote:
> We want to introduce backoff logic, but we need to lock the
> pool object as well for command parsing. Because of this, we
> will need backoff logic for the engine pool obj, move the batch
> validation up slightly to eb_lookup_vmas, and the actual command
> parsing in a separate function which can get called from execbuf
> relocation fast and slowpath.

On this one I also had some feedback in the previous round which you 
maybe missed.

Regards,

Tvrtko

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 68 ++++++++++---------
>   1 file changed, 37 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index c2a4e499233b..64b75f71a6bb 100644
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
> @@ -866,6 +868,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   
>   static int eb_lookup_vmas(struct i915_execbuffer *eb)
>   {
> +	struct drm_i915_private *i915 = eb->i915;
>   	unsigned int batch = eb_batch_index(eb);
>   	unsigned int i;
>   	int err = 0;
> @@ -879,18 +882,37 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
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
> +
> +	return 0;
> +
> +err:
>   	eb->vma[i].vma = NULL;
>   	return err;
>   }
> @@ -1802,7 +1824,7 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
>   	return 0;
>   }
>   
> -static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
> +static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
>   {
>   	bool have_copy = false;
>   	struct eb_vma *ev;
> @@ -1868,6 +1890,11 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
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
> @@ -1900,7 +1927,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
>   	return err;
>   }
>   
> -static int eb_relocate(struct i915_execbuffer *eb)
> +static int eb_relocate_parse(struct i915_execbuffer *eb)
>   {
>   	int err;
>   
> @@ -1925,10 +1952,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   		}
>   
>   		if (err)
> -			return eb_relocate_slow(eb);
> +			return eb_relocate_parse_slow(eb);
>   	}
>   
> -	return 0;
> +	return eb_parse(eb);
>   }
>   
>   static int eb_move_to_gpu(struct i915_execbuffer *eb)
> @@ -2866,7 +2893,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	if (unlikely(err))
>   		goto err_context;
>   
> -	err = eb_relocate(&eb);
> +	err = eb_relocate_parse(&eb);
>   	if (err) {
>   		/*
>   		 * If the user expects the execobject.offset and
> @@ -2879,33 +2906,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
> @@ -2919,13 +2923,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
