Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A102CECC2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 12:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9E589A98;
	Fri,  4 Dec 2020 11:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AFF489A98
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 11:09:53 +0000 (UTC)
IronPort-SDR: BUMLXFH+6uNJqo2vA6Z+fSluF83y2l11p8jbHUbkvURuV8XIEusQayCoGtqSM1gW0lZMo8o9c7
 R8Ry8AuU2jYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="173516860"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="173516860"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 03:09:51 -0800
IronPort-SDR: ZjwEm6o/J2uWVg/DZtrEwPqVKTtcOgQfWir1+idpURExU4w3jKruUMNfYqn+MffliTzbJ/oFnv
 KR9K3cHQpSFw==
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="550912246"
Received: from sgefen-mobl1.ger.corp.intel.com (HELO [10.214.200.164])
 ([10.214.200.164])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 03:09:50 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201203103432.31526-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <eefe8e52-3d6e-6c91-5733-e9f3474aff9e@linux.intel.com>
Date: Fri, 4 Dec 2020 11:09:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201203103432.31526-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Propagate error from
 cancelled submit due to context closure
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


On 03/12/2020 10:34, Chris Wilson wrote:
> In the course of discovering and closing many races with context closure
> and execbuf submission, since commit 61231f6bd056 ("drm/i915/gem: Check
> that the context wasn't closed during setup") we started checking that
> the context was not closed by another userspace thread during the execbuf
> ioctl. In doing so we cancelled the inflight request (by telling it to be
> skipped), but kept reporting success since we do submit a request, albeit
> one that doesn't execute. As the error is known before we return from the
> ioctl, we can report the error we detect immediately, rather than leave
> it on the fence status. With the immediate propagation of the error, it
> is easier for userspace to handle.
> 
> Fixes: 61231f6bd056 ("drm/i915/gem: Check that the context wasn't closed during setup")
> Testcase: igt/gem_ctx_exec/basic-close-race
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: <stable@vger.kernel.org> # v5.7+
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 1904e6e5ea64..b07dc1156a0e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -3097,7 +3097,7 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
>   			break;
>   }
>   
> -static void eb_request_add(struct i915_execbuffer *eb)
> +static int eb_request_add(struct i915_execbuffer *eb, int err)
>   {
>   	struct i915_request *rq = eb->request;
>   	struct intel_timeline * const tl = i915_request_timeline(rq);
> @@ -3118,6 +3118,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>   		/* Serialise with context_close via the add_to_timeline */
>   		i915_request_set_error_once(rq, -ENOENT);
>   		__i915_request_skip(rq);
> +		err = -ENOENT; /* override any transient errors */
>   	}
>   
>   	__i915_request_queue(rq, &attr);
> @@ -3127,6 +3128,8 @@ static void eb_request_add(struct i915_execbuffer *eb)
>   		retire_requests(tl, prev);
>   
>   	mutex_unlock(&tl->mutex);
> +
> +	return err;
>   }
>   
>   static const i915_user_extension_fn execbuf_extensions[] = {
> @@ -3332,7 +3335,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	err = eb_submit(&eb, batch);
>   err_request:
>   	i915_request_get(eb.request);
> -	eb_request_add(&eb);
> +	err = eb_request_add(&eb, err);
>   
>   	if (eb.fences)
>   		signal_fence_array(&eb);
> 

Simple enough and it explains why gem_busy assert in the IGT can fail 
after execbuf succeeded - skipped request executes before the check 
since the payload was zapped. Fast timing but obviously possible.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
