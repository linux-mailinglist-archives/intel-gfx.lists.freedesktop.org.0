Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5842C27CEF1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 15:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECB089DA9;
	Tue, 29 Sep 2020 13:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A6D89CF4;
 Tue, 29 Sep 2020 13:20:54 +0000 (UTC)
IronPort-SDR: cr9kEtrOpuCT5pt0dem1JjGnEFEX6FcqBY2l7VFU1hswi/7JcceswKPVe+Azt0o+Co0MPIvcat
 +hO8UrS4VVqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="223776191"
X-IronPort-AV: E=Sophos;i="5.77,318,1596524400"; d="scan'208";a="223776191"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 06:20:52 -0700
IronPort-SDR: eIibMCdvCQQBZ1fqLQ3lFPoSslfhv7mA2LgiaPY18thAS0jZtbM3r0DzGHnvGF/BkhkSOjGonc
 RnALD7I2p4Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,318,1596524400"; d="scan'208";a="293662018"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 29 Sep 2020 06:20:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 658A35C203D; Tue, 29 Sep 2020 16:19:30 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200929091459.509146-1-chris@chris-wilson.co.uk>
References: <20200928220027.417167-1-chris@chris-wilson.co.uk>
 <20200929091459.509146-1-chris@chris-wilson.co.uk>
Date: Tue, 29 Sep 2020 16:19:30 +0300
Message-ID: <87tuvgyb31.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] i915/gen9_exec_parse: Check
 parsing of large objects
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Simply check that we support parsing of batches as large as the uAPI
> allows.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
> Try a few intermediate object sizes since CI machines do not have enough
> memory to reach the upper bounds of the uAPI.
> ---
>  tests/i915/gen9_exec_parse.c | 47 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/tests/i915/gen9_exec_parse.c b/tests/i915/gen9_exec_parse.c
> index 8cd82f568..f735e7e1c 100644
> --- a/tests/i915/gen9_exec_parse.c
> +++ b/tests/i915/gen9_exec_parse.c
> @@ -566,6 +566,50 @@ static void test_bb_start(const int i915, const uint32_t handle, int test)
>  	gem_close(i915, target_bo);
>  }
>  
> +static void test_bb_large(int i915)
> +{
> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> +	static const uint32_t sizes[] = {
> +		(1ull << 30) - 4096,
> +		(1ull << 30) + 4096,
> +		(2ull << 30) - 4096,
> +		(2ull << 30) + 4096,
> +		(3ull << 30) - 4096,
> +		(3ull << 30) + 4096,
> +		(4ull << 30) - 4096,
> +	};
> +	struct drm_i915_gem_exec_object2 obj = {};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&obj),
> +		.buffer_count = 1,
> +		.flags = I915_EXEC_BLT,
> +	};
> +	uint64_t required, total;
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(sizes); i++) {
> +		if (!__intel_check_memory(2, sizes[i], CHECK_RAM,
> +					  &required, &total))
> +			break;
> +
> +		igt_debug("Using object size %#x\n", sizes[i]);
> +		obj.handle = gem_create(i915, sizes[i]),
> +		gem_write(i915, obj.handle, sizes[i] - 64, &bbe, sizeof(bbe));
> +
> +		execbuf.batch_start_offset = 0;
> +		igt_assert_eq(__checked_execbuf(i915, &execbuf), 0);
> +
> +		execbuf.batch_start_offset = sizes[i] - 64;
> +		igt_assert_eq(__checked_execbuf(i915, &execbuf), 0);
> +
> +		gem_close(i915, obj.handle);
> +	}
> +
> +	igt_require_f(i > 0 && sizes[i - 1] > 1ull << 31,
> +		      "Insufficient free memory, require at least %'"PRIu64"MiB but only have %'"PRIu64"MiB available",
> +		      required >> 20, total >> 20);
> +}
> +
>  static void test_bb_chained(const int i915, const uint32_t handle)
>  {
>  	const uint32_t batch[] = {
> @@ -1053,6 +1097,9 @@ igt_main
>  	igt_subtest("bb-start-far")
>  		test_bb_start(i915, handle, BB_START_FAR);
>  
> +	igt_subtest("bb-large")
> +		test_bb_large(i915);
> +
>  	igt_fixture {
>  		igt_stop_hang_detector();
>  		gem_close(i915, handle);
> -- 
> 2.28.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
