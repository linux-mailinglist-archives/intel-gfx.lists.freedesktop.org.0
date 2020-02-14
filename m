Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B6015F8F6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 22:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1F46FBAA;
	Fri, 14 Feb 2020 21:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD5126FBA7;
 Fri, 14 Feb 2020 21:49:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 13:49:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,442,1574150400"; d="scan'208";a="381568905"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by orsmga004.jf.intel.com with ESMTP; 14 Feb 2020 13:49:16 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
 <20200214194016.4054376-2-chris@chris-wilson.co.uk>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <224cefba-4b48-c085-b0b5-952b62af29b3@intel.com>
Date: Fri, 14 Feb 2020 13:49:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200214194016.4054376-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] i915/gem_ctx_engine:
 Exercise for_each_context_engine() with custom engine[]
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
> Set up a custom engine map with no engines, and check that the
> for_each_context_engine() correctly iterates over nothing.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/i915/gem_ctx_engines.c | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
> index 063140e0f..6a2edd1e0 100644
> --- a/tests/i915/gem_ctx_engines.c
> +++ b/tests/i915/gem_ctx_engines.c
> @@ -549,6 +549,31 @@ static void independent(int i915)
>   	gem_context_destroy(i915, param.ctx_id);
>   }
>   
> +static void libapi(int i915)
> +{
> +	struct i915_context_param_engines engines = {};

Is there a case for invalid engines as well?

Acked-by: Antonio Argenziano <antonio.argenziano@intel.com>

> +	struct drm_i915_gem_context_param p = {
> +		.ctx_id = gem_context_create(i915),
> +		.param = I915_CONTEXT_PARAM_ENGINES,
> +		.value = to_user_pointer(&engines),
> +		.size = sizeof(engines),
> +	};
> +	const struct intel_execution_engine2 *e;
> +	unsigned int count = 0;
> +
> +	gem_context_set_param(i915, &p);
> +
> +	for_each_context_engine(i915, p.ctx_id, e)
> +		count++;
> +	igt_assert_eq(count, 0);
> +
> +	____for_each_physical_engine(i915, p.ctx_id, e)
> +		count++;
> +	igt_assert_eq(count, 0);
> +
> +	gem_context_destroy(i915, p.ctx_id);
> +}
> +
>   igt_main
>   {
>   	int i915 = -1;
> @@ -584,6 +609,9 @@ igt_main
>   	igt_subtest("independent")
>   		independent(i915);
>   
> +	igt_subtest("libapi")
> +		libapi(i915);
> +
>   	igt_fixture
>   		igt_stop_hang_detector();
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
