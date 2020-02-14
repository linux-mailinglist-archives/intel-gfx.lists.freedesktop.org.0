Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8921015F8AC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 22:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7346E87E;
	Fri, 14 Feb 2020 21:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EDA6E87E;
 Fri, 14 Feb 2020 21:22:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 13:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="381563782"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by orsmga004.jf.intel.com with ESMTP; 14 Feb 2020 13:22:38 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <098b8231-8e53-7f72-cfb8-13221339e211@intel.com>
Date: Fri, 14 Feb 2020 13:22:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] i915/gem_ctx_engines:
 Exercise 0 engines[]
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



On 14/02/20 11:40, Chris Wilson wrote:
> Setup a context with no engines, and make sure we reject all execution
> attempts.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Antonio Argenziano <antonio.argenziano@intel.com>

> ---
>   tests/i915/gem_ctx_engines.c | 45 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 45 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
> index cb82f08ef..063140e0f 100644
> --- a/tests/i915/gem_ctx_engines.c
> +++ b/tests/i915/gem_ctx_engines.c
> @@ -242,6 +242,48 @@ static void idempotent(int i915)
>   	gem_context_destroy(i915, p.ctx_id);
>   }
>   
> +static uint32_t batch_create(int i915)
> +{
> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> +	uint32_t handle = gem_create(i915, 4096);
> +
> +	gem_write(i915, handle, 0, &bbe, sizeof(bbe));
> +	return handle;
> +}
> +
> +static void none(int i915)
> +{
> +	struct i915_context_param_engines engines = {};
> +	struct drm_i915_gem_context_param p = {
> +		.ctx_id = gem_context_create(i915),
> +		.param = I915_CONTEXT_PARAM_ENGINES,
> +		.value = to_user_pointer(&engines),
> +		.size = sizeof(engines),
> +	};
> +
> +	gem_context_set_param(i915, &p);
> +
> +	{
> +		struct drm_i915_gem_exec_object2 obj = {
> +			.handle = batch_create(i915),
> +		};
> +		struct drm_i915_gem_execbuffer2 execbuf = {
> +			.buffers_ptr = to_user_pointer(&obj),
> +			.buffer_count = 1,
> +			.rsvd1 = p.ctx_id,
> +		};
> +
> +		for (execbuf.flags = 0;
> +		     execbuf.flags <= I915_EXEC_RING_MASK;
> +		     execbuf.flags++)
> +			igt_assert_eq(__gem_execbuf(i915, &execbuf), -EINVAL);
> +
> +		gem_close(i915, obj.handle);
> +	}
> +
> +	gem_context_destroy(i915, p.ctx_id);
> +}
> +
>   static void execute_one(int i915)
>   {
>   	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines , I915_EXEC_RING_MASK + 1);
> @@ -527,6 +569,9 @@ igt_main
>   	igt_subtest("idempotent")
>   		idempotent(i915);
>   
> +	igt_subtest("none")
> +		none(i915);
> +
>   	igt_subtest("execute-one")
>   		execute_one(i915);
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
