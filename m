Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30589567F09
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 08:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6916710FFEC;
	Wed,  6 Jul 2022 06:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F0910FFEC;
 Wed,  6 Jul 2022 06:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657090602; x=1688626602;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jOhdt7b/kiCMTGyfoJJ0gPFD49LHE0EfglgTIYfzPiI=;
 b=miAX87qD2d6sDd+0TXQHNl+edFCJLIPnWoJhSegEkJ8QW79DQZF2jVoj
 CV61F8lWf0weDVBjeoeQM7KYDXlQqkamwJCA54Wy2AKNqK5dtDi8cc0fg
 yqHt0Tu4Ejp7qrGUMwiwiLYOmkLRqaKkYw0dHvAQ4gRukuobd0FLUYqJA
 EreltCpVAkr5bQPOQjGBpg2tFiokjlh16oA8GcYTpiPVElv5npHL3Dbg5
 rPDkbbhPqHM/bdqPJiqq7LoaW9TNMNT+LF33+grW9M6pw9wZbLo3DxXir
 ceD+9+lW87WBDA2ZV6ZcU0Uc03LYlOVs4bQN9+SWnlqrEghs8zgv/g2+O A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="369982080"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="369982080"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 23:56:41 -0700
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="650533625"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.208.133])
 ([10.251.208.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 23:56:39 -0700
Message-ID: <1d7ed3c3-5cc9-88c0-83a5-4a8884631425@linux.intel.com>
Date: Wed, 6 Jul 2022 08:56:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220705104945.118962-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220705104945.118962-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_exec_capture: adjust the pi
 subtest
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 7/5/2022 12:49 PM, Matthew Auld wrote:
> This was broken by the kernel change: 71b1669ea9bd ("drm/i915/uapi:
> tweak error capture on recoverable contexts"). Update the test to use
> non-recoverable context if needed.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6350
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   tests/i915/gem_exec_capture.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
> index c2639082..a25f529b 100644
> --- a/tests/i915/gem_exec_capture.c
> +++ b/tests/i915/gem_exec_capture.c
> @@ -721,6 +721,15 @@ static void prioinv(int fd, int dir, const intel_ctx_t *ctx,
>   
>   		ctx2 = intel_ctx_create_all_physical(fd);
>   		igt_assert(ctx2);
> +		if (needs_recoverable_ctx(fd)) {
> +			struct drm_i915_gem_context_param param = {
> +				.ctx_id = ctx2->id,
> +				.param = I915_CONTEXT_PARAM_RECOVERABLE,
> +				.value = 0,
> +			};
> +
> +			gem_context_set_param(fd, &param);
> +		}
>   
>   		intel_allocator_init();
>   		/* Reopen the allocator in the new process. */
