Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2219B476B0A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 08:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DDFE10E981;
	Thu, 16 Dec 2021 07:24:05 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F3CD10E8F0;
 Thu, 16 Dec 2021 07:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639639444; x=1671175444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jMrntK6McUHF1unty2GcAl2S7u7gL2WcspiPRqhCXFA=;
 b=EZYRzNDOiOVBfN2a6WCMAkJVgU6/33L8T5niZjMlRPnjR6zepxxj3Myq
 ZIDu334UtW+1OG0MPt7d4lDYz7N1d2MpewtAiiIcrMCoR3RmdKVbOAoU5
 orlrtgDU1DfrTD/U7Fe5mpaweIXrjSGcPDHAbAnSxXnplXAOlnvChupSk
 CWKuxIwPtTx4bCEAtAE8TDbdGa7sXiMPpjx59iPcAJTJDHqSkpTDttEHQ
 K1BCNXVgGt8WCmMbCyO4c0ozdWZ6/3oYO+xYMbhNRahjbCYRpxneMc7C7
 RZFDc5jOIABNg1MnPFSAgx66Y5wtZpORsusbatrEH8s7bgG+rttPp03qN g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="325704726"
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600"; d="scan'208";a="325704726"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 23:24:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600"; d="scan'208";a="506167685"
Received: from dmikita-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.10.23])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 23:24:02 -0800
Date: Thu, 16 Dec 2021 08:23:59 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: John.C.Harrison@intel.com
Message-ID: <Ybrpj/tO+b8JsPPJ@zkempczy-mobl2>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-8-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211213232914.2523139-8-John.C.Harrison@Intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 07/11]
 tests/i915/i915_hangman: Add alive-ness test after error capture
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 13, 2021 at 03:29:10PM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Added a an extra step to the i915_hangman tests to check that the
> system is still alive after the hang and recovery. This submits a
> simple batch to each engine which does a write to memory and checks
> that the write occurred.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  tests/i915/i915_hangman.c | 115 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 115 insertions(+)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index b77705206..20653b479 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -47,8 +47,113 @@
>  static int device = -1;
>  static int sysfs = -1;
>  
> +#define OFFSET_ALIVE	10
> +
>  IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
>  
> +/* Requires master for STORE_DWORD on gen4/5 */
> +static void store(int fd, const struct intel_execution_engine2 *e,
> +		  int fence, uint32_t target, unsigned offset_value)
> +{
> +	const int SCRATCH = 0;
> +	const int BATCH = 1;
> +	const int gen = intel_gen(intel_get_drm_devid(fd));
> +	struct drm_i915_gem_exec_object2 obj[2];
> +	struct drm_i915_gem_relocation_entry reloc;
> +	struct drm_i915_gem_execbuffer2 execbuf;
> +	uint32_t batch[16];
> +	int i;
> +
> +	memset(&execbuf, 0, sizeof(execbuf));
> +	execbuf.buffers_ptr = to_user_pointer(obj);
> +	execbuf.buffer_count = ARRAY_SIZE(obj);
> +	execbuf.flags = e->flags;
> +	if (fence != -1) {
> +		execbuf.flags |= I915_EXEC_FENCE_IN;
> +		execbuf.rsvd2 = fence;
> +	}
> +	if (gen < 6)
> +		execbuf.flags |= I915_EXEC_SECURE;
> +
> +	memset(obj, 0, sizeof(obj));
> +	obj[SCRATCH].handle = target;
> +
> +	obj[BATCH].handle = gem_create(fd, 4096);
> +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
> +	obj[BATCH].relocation_count = 1;
> +	memset(&reloc, 0, sizeof(reloc));
> +
> +	i = 0;
> +	reloc.target_handle = obj[SCRATCH].handle;
> +	reloc.presumed_offset = -1;
> +	reloc.offset = sizeof(uint32_t) * (i + 1);
> +	reloc.delta = sizeof(uint32_t) * offset_value;
> +	reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
> +	reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
> +	if (gen >= 8) {
> +		batch[++i] = reloc.delta;
> +		batch[++i] = 0;
> +	} else if (gen >= 4) {
> +		batch[++i] = 0;
> +		batch[++i] = reloc.delta;
> +		reloc.offset += sizeof(uint32_t);
> +	} else {
> +		batch[i]--;
> +		batch[++i] = reloc.delta;
> +	}
> +	batch[++i] = offset_value;
> +	batch[++i] = MI_BATCH_BUFFER_END;
> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
> +	gem_execbuf(fd, &execbuf);
> +	gem_close(fd, obj[BATCH].handle);
> +}
> +
> +static void check_alive(void)
> +{
> +	const struct intel_execution_engine2 *engine;
> +	const intel_ctx_t *ctx;
> +	uint32_t scratch, *out;
> +	int fd, i = 0;
> +	uint64_t ahnd;
> +
> +	fd = drm_open_driver(DRIVER_INTEL);
> +	igt_require(gem_class_can_store_dword(fd, 0));
> +
> +	ctx = intel_ctx_create_all_physical(fd);
> +	ahnd = get_reloc_ahnd(fd, ctx->id);
> +	scratch = gem_create(fd, 4096);
> +	out = gem_mmap__wc(fd, scratch, 0, 4096, PROT_WRITE);
> +	gem_set_domain(fd, scratch,
> +			I915_GEM_DOMAIN_GTT, I915_GEM_DOMAIN_GTT);
> +
> +	for_each_physical_engine(fd, engine) {
> +		igt_assert_eq_u32(out[i + OFFSET_ALIVE], 0);
> +		i++;
> +	}
> +
> +	i = 0;
> +	for_each_ctx_engine(fd, ctx, engine) {
> +		if (!gem_class_can_store_dword(fd, engine->class))
> +			continue;
> +
> +		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
> +		store(fd, engine, -1, scratch, i + OFFSET_ALIVE);

You need to pass ctx + ahnd to store() to add softpin path. Relocs
won't work above Tigerlake.

--
Zbigniew


> +		i++;
> +	}
> +
> +	gem_set_domain(fd, scratch, I915_GEM_DOMAIN_GTT, 0);
> +
> +	while (i--)
> +		igt_assert_eq_u32(out[i + OFFSET_ALIVE], i + OFFSET_ALIVE);
> +
> +	munmap(out, 4096);
> +	gem_close(fd, scratch);
> +	put_ahnd(ahnd);
> +	intel_ctx_destroy(fd, ctx);
> +	close(fd);
> +}
> +
>  static bool has_error_state(int dir)
>  {
>  	bool result;
> @@ -230,6 +335,8 @@ static void test_error_state_capture(const intel_ctx_t *ctx,
>  	check_error_state(e->name, offset, batch);
>  	munmap(batch, 4096);
>  	put_ahnd(ahnd);
> +
> +	check_alive();
>  }
>  
>  static void
> @@ -288,6 +395,8 @@ test_engine_hang(const intel_ctx_t *ctx,
>  		put_ahnd(ahndN);
>  	}
>  	put_ahnd(ahnd);
> +
> +	check_alive();
>  }
>  
>  static int hang_count;
> @@ -320,6 +429,8 @@ static void test_hang_detector(const intel_ctx_t *ctx,
>  
>  	/* Did it work? */
>  	igt_assert(hang_count == 1);
> +
> +	check_alive();
>  }
>  
>  /* This test covers the case where we end up in an uninitialised area of the
> @@ -355,6 +466,8 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
>  		igt_force_gpu_reset(device);
>  		igt_assert_f(0, "unterminated batch did not trigger a hang!");
>  	}
> +
> +	check_alive();
>  }
>  
>  static void do_tests(const char *name, const char *prefix,
> @@ -432,6 +545,8 @@ igt_main
>  		igt_assert(sysfs != -1);
>  
>  		igt_require(has_error_state(sysfs));
> +
> +		gem_require_mmap_wc(device);
>  	}
>  
>  	igt_describe("Basic error capture");
> -- 
> 2.25.1
> 
