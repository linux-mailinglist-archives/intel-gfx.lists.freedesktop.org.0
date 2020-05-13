Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFF61D1C8D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0481889327;
	Wed, 13 May 2020 17:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEC189327
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 17:48:05 +0000 (UTC)
IronPort-SDR: gASMTTWNXgDSXPqf/BYXL+UY/fDk8jyVYFA/DTkwmu2q7DxeTQP0JM+jrCeAZWxICVWGBqRfEC
 fDmkpg31kuSQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 10:48:04 -0700
IronPort-SDR: FyNavLkcqs40BfRW59ROoI3eohhsBRtQjlGEsVyuEepeAylRCUvLCyXhsEwqWmNshLfYwuzPx8
 taZCMj+rDIvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,388,1583222400"; d="scan'208";a="265958813"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 13 May 2020 10:48:03 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4318F5C1DF0; Wed, 13 May 2020 20:45:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200513165937.9508-1-chris@chris-wilson.co.uk>
References: <20200513165937.9508-1-chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 20:45:51 +0300
Message-ID: <877dxfvicw.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/gem: Remove redundant
 exec_fence
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since there can only be one of in_fence/exec_fence, just use the single
> in_fence local.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 24 ++++++++-----------
>  1 file changed, 10 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d54a4933cc05..824a2b76947a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2622,7 +2622,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  	struct drm_i915_private *i915 = to_i915(dev);
>  	struct i915_execbuffer eb;
>  	struct dma_fence *in_fence = NULL;
> -	struct dma_fence *exec_fence = NULL;
>  	struct sync_file *out_fence = NULL;
>  	struct i915_vma *batch;
>  	int out_fence_fd = -1;
> @@ -2677,8 +2676,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  			goto err_in_fence;
>  		}
>  
> -		exec_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
> -		if (!exec_fence) {
> +		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
> +		if (!in_fence) {

This looks wrong. Seems you can return straight from here.
-Mika


>  			err = -EINVAL;
>  			goto err_in_fence;
>  		}
> @@ -2688,7 +2687,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  		out_fence_fd = get_unused_fd_flags(O_CLOEXEC);
>  		if (out_fence_fd < 0) {
>  			err = out_fence_fd;
> -			goto err_exec_fence;
> +			goto err_in_fence;
>  		}
>  	}
>  
> @@ -2779,14 +2778,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  	}
>  
>  	if (in_fence) {
> -		err = i915_request_await_dma_fence(eb.request, in_fence);
> -		if (err < 0)
> -			goto err_request;
> -	}
> -
> -	if (exec_fence) {
> -		err = i915_request_await_execution(eb.request, exec_fence,
> -						   eb.engine->bond_execute);
> +		if (args->flags & I915_EXEC_FENCE_SUBMIT)
> +			err = i915_request_await_execution(eb.request,
> +							   in_fence,
> +							   eb.engine->bond_execute);
> +		else
> +			err = i915_request_await_dma_fence(eb.request,
> +							   in_fence);
>  		if (err < 0)
>  			goto err_request;
>  	}
> @@ -2855,8 +2853,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  err_out_fence:
>  	if (out_fence_fd != -1)
>  		put_unused_fd(out_fence_fd);
> -err_exec_fence:
> -	dma_fence_put(exec_fence);
>  err_in_fence:
>  	dma_fence_put(in_fence);
>  	return err;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
