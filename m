Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8563920B3D0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:41:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB9566ECAD;
	Fri, 26 Jun 2020 14:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F806ECAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 14:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 1FED33F912;
 Fri, 26 Jun 2020 16:41:32 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=NfDgNBs2; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N_rh3nMuBCGN; Fri, 26 Jun 2020 16:41:31 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id E885C3F5F9;
 Fri, 26 Jun 2020 16:41:29 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 52B93362131;
 Fri, 26 Jun 2020 16:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1593182489; bh=bMX1UDueWXKdvxU6P0YzCZTKWa+7TwQgDUI1q4i96iY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=NfDgNBs2fzkJ/ukZCSK01k4kIAJ8qhrYrTUI1zuSkg+Or5UmYTQtq4hmP4SIsYu6z
 oKe7DMbsjghRC9TJW1fwK2Qc/pZhjSpvQoUW3aBjTka26h4yDzC2gyN2YDYDaMVllj
 RxwSBKZXQ2iBgz8XwUsuKHCFSl9m5O4xGnoVdSZc=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-6-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <6f313791-d0f7-465a-e4ab-63826ef70bf8@shipmail.org>
Date: Fri, 26 Jun 2020 16:41:20 +0200
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


On 6/23/20 4:28 PM, Maarten Lankhorst wrote:
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

Hmm, it's late friday afternoon so that might be the cause, but I fail 
to see what the above hunk is trying to achieve?


>   	/* All GPU relocation batches must be submitted prior to the user rq */
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
