Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F04A21B7E6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 16:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCD66EC52;
	Fri, 10 Jul 2020 14:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC7D6EC52;
 Fri, 10 Jul 2020 14:11:06 +0000 (UTC)
IronPort-SDR: 2PMIieTfcpQTNsS3s5wfW/F7yx8/y1uNUvAVIWFeeb3I7q/CLelY+2lmRBKbs8G91/hp4BXxww
 UNGyUBKXb40w==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209730525"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="209730525"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 07:11:05 -0700
IronPort-SDR: NxqNN+LSPCFc90c+wysiTUd33cClBKM/YR3Ys+6L86oA4rrD/ycDcsqMfD5A9taQsNeE1epYK0
 wmIzMmON+bZA==
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="428573887"
Received: from unknown (HELO [10.252.44.180]) ([10.252.44.180])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 07:11:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200710093234.1438712-1-chris@chris-wilson.co.uk>
 <20200710093234.1438712-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e872c938-9029-6722-e76e-435d134b1767@linux.intel.com>
Date: Fri, 10 Jul 2020 15:11:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200710093234.1438712-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/6] i915/gem_close: Adapt
 to allow duplicate handles
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/07/2020 10:32, Chris Wilson wrote:
> With an upcoming change, we can relax the rule about handles not being
> duplicated in the execocbj[]. Duplicate handles must not otherwise
> conflict in their placements (e.g. two EXEC_OBJECT_PINNED at different
> offsets), but otherwise if they are able to be resolved to the same GPU
> address, then the operation is harmless and decreed legal.
> 
> Since this is a relaxation in the negative ABI, update the test case to
> allow the permissible duplicate handles.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/i915/gem_close.c | 51 ++++++++++++++++++++++++++++++++++++------
>   1 file changed, 44 insertions(+), 7 deletions(-)
> 
> diff --git a/tests/i915/gem_close.c b/tests/i915/gem_close.c
> index 4fdc1ad79..a9bf2d2d4 100644
> --- a/tests/i915/gem_close.c
> +++ b/tests/i915/gem_close.c
> @@ -24,21 +24,57 @@
>   #include "i915/gem.h"
>   #include "igt.h"
>   
> -static bool has_duplicate(int err)
> +static int batch_create(int fd)
> +{
> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> +	uint32_t handle;
> +
> +	handle = gem_create(fd, 4096);
> +	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
> +
> +	return handle;
> +}
> +
> +static int allows_duplicate(int fd)
> +{
> +	struct drm_i915_gem_exec_object2 obj[2] = {
> +		{ .handle = batch_create(fd), },
> +	};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(obj),
> +		.buffer_count = 1,
> +	};
> +	int err;
> +
> +	gem_execbuf(fd, &execbuf);
> +
> +	obj[1] = obj[0];
> +	execbuf.buffer_count = 2;
> +
> +	err = __gem_execbuf(fd, &execbuf);
> +	gem_close(fd, obj[0].handle);
> +
> +	return err;
> +}
> +
> +static bool is_duplicate(int err)
>   {
>   	return err == -EINVAL || err == -EALREADY;
>   }
>   
>   static void test_many_handles(int fd)
>   {
> -	uint32_t bbe = MI_BATCH_BUFFER_END;
>   	struct drm_i915_gem_execbuffer2 execbuf;
>   	struct drm_i915_gem_exec_object2 obj[2];
>   	uint32_t clones[128]; /* XXX try with 1024 */
>   	uint32_t original;
> +	int expected;
> +
> +	expected = allows_duplicate(fd);
> +	if (expected)
> +		igt_assert(is_duplicate(expected));
>   
> -	original = gem_create(fd, 4096);
> -	gem_write(fd, original, 0, &bbe, sizeof(bbe));
> +	original = batch_create(fd);
>   
>   	memset(&execbuf, 0, sizeof(execbuf));
>   	execbuf.buffers_ptr = to_user_pointer(obj);
> @@ -54,7 +90,8 @@ static void test_many_handles(int fd)
>   		gem_execbuf(fd, &execbuf);
>   	}
>   
> -	/* We do not allow the sam object to be referenced multiple times
> +	/*
> +	 * We do not allow the same object to be referenced multiple times
>   	 * within an execbuf; hence why this practice of cloning a handle
>   	 * is only found within test cases.
>   	 */
> @@ -62,11 +99,11 @@ static void test_many_handles(int fd)
>   	obj[0].handle = original;
>   	for (int i = 0; i < ARRAY_SIZE(clones); i++) {
>   		obj[1].handle = clones[i];
> -		igt_assert(has_duplicate(__gem_execbuf(fd, &execbuf)));
> +		igt_assert_eq(__gem_execbuf(fd, &execbuf), expected);
>   	}
>   	/* Any other clone pair should also be detected */
>   	obj[1].handle = clones[0];  /* (last, first) */
> -	igt_assert(has_duplicate(__gem_execbuf(fd, &execbuf)));
> +	igt_assert_eq(__gem_execbuf(fd, &execbuf), expected);
>   	execbuf.buffer_count = 1;
>   
>   	/* Now close the original having used every clone */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
