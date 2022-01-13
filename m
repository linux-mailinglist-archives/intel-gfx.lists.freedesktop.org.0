Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD8748DEB0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3A310E2B3;
	Thu, 13 Jan 2022 20:15:54 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4CE10E2B3;
 Thu, 13 Jan 2022 20:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642104952; x=1673640952;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lYGW1/DmtuQin4vpqTHunND4xNKdZLbNseRDCXSzSlQ=;
 b=dFGlUfpgkZCanYJyORlKbwsNMrsA1ttFHZ+nQwPZfRgL/IwvnXW4b2j1
 ig7P4ApsTB1pfnyf14ehMUZGrtpzrGHEN0D+NF8VJZ/9ay9JaO7cmkTPy
 FLz58LOlBTbaBBbIUiPIT62o3A07u9/EL72GnMDyYtjFE2NnemjcF/fyU
 5MMtjjhFn2XZw6OnJhGrjBPvPdRqmqjrmvpQI4WjeJE2TsKQR0wZARoDn
 ItvM0ArSXDt6OKw7ey8QBY0XK8B63iA/nu3uoI5ow8EnhH9A22uxsE8T/
 TRUFsZYktpGRA+FK5Axi5j/m//eHvX1NiXiaMr/KmL79y1LVfa7nkFqsB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244059154"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244059154"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:15:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529817422"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:15:52 -0800
Date: Thu, 13 Jan 2022 12:10:02 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113201002.GA13315@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-8-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220113195947.1536897-8-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 07/15] lib/store:
 Refactor common store code into helper function
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 11:59:39AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> A lot of tests use almost identical code for creating a batch buffer
> which does a single write to memory and another is about to be added.
> Instead, move the most generic version into a common helper function.
> Unfortunately, the other instances are all subtly different enough to
> make it not so trivial to try to use the helper. It could be done but
> it is unclear if it is worth the effort at this point. This patch
> proves the concept, if people like it enough then it can be extended.
> 
> v2: Fix up object address vs store offset confusion (with help from
> Zbigniew K).
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  lib/igt_store.c             | 96 +++++++++++++++++++++++++++++++++++++
>  lib/igt_store.h             | 12 +++++
>  lib/meson.build             |  1 +
>  tests/i915/gem_exec_fence.c | 77 ++---------------------------
>  tests/i915/i915_hangman.c   |  1 +
>  5 files changed, 115 insertions(+), 72 deletions(-)
>  create mode 100644 lib/igt_store.c
>  create mode 100644 lib/igt_store.h
> 
> diff --git a/lib/igt_store.c b/lib/igt_store.c
> new file mode 100644
> index 000000000..42c888b55
> --- /dev/null
> +++ b/lib/igt_store.c
> @@ -0,0 +1,96 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#include "i915/gem_create.h"
> +#include "igt_core.h"
> +#include "drmtest.h"
> +#include "igt_store.h"
> +#include "intel_chipset.h"
> +#include "intel_reg.h"
> +#include "ioctl_wrappers.h"
> +#include "lib/intel_allocator.h"
> +
> +/**
> + * SECTION:igt_store_word
> + * @short_description: Library for writing a value to memory
> + * @title: StoreWord
> + * @include: igt.h
> + *
> + * A lot of igt testcases need some mechanism for writing a value to memory
> + * as a test that a batch buffer has executed.
> + *
> + * NB: Requires master for STORE_DWORD on gen4/5.
> + */
> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> +		    const struct intel_execution_engine2 *e,
> +		    int fence, uint32_t target_handle,
> +		    uint64_t target_gpu_addr,
> +		    uint64_t store_offset, uint32_t store_value)
> +{
> +	const int SCRATCH = 0;
> +	const int BATCH = 1;
> +	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
> +	struct drm_i915_gem_exec_object2 obj[2];
> +	struct drm_i915_gem_relocation_entry reloc;
> +	struct drm_i915_gem_execbuffer2 execbuf;
> +	uint32_t batch[16], delta;
> +	uint64_t bb_offset;
> +	int i;
> +
> +	memset(&execbuf, 0, sizeof(execbuf));
> +	execbuf.buffers_ptr = to_user_pointer(obj);
> +	execbuf.buffer_count = ARRAY_SIZE(obj);
> +	execbuf.flags = e->flags;
> +	execbuf.rsvd1 = ctx->id;
> +	if (fence != -1) {
> +		execbuf.flags |= I915_EXEC_FENCE_IN;
> +		execbuf.rsvd2 = fence;
> +	}
> +	if (gen < 6)
> +		execbuf.flags |= I915_EXEC_SECURE;
> +
> +	memset(obj, 0, sizeof(obj));
> +	obj[SCRATCH].handle = target_handle;
> +
> +	obj[BATCH].handle = gem_create(fd, 4096);
> +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
> +	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
> +	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
> +	memset(&reloc, 0, sizeof(reloc));
> +
> +	i = 0;
> +	delta = sizeof(uint32_t) * store_offset;

Can't this overflow the delta as store_offset is a u64?

> +	if (!ahnd) {
> +		reloc.target_handle = obj[SCRATCH].handle;
> +		reloc.presumed_offset = -1;
> +		reloc.offset = sizeof(uint32_t) * (i + 1);
> +		reloc.delta = delta;
> +		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
> +		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
> +	} else {
> +		obj[SCRATCH].offset = target_gpu_addr;
> +		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
> +		obj[BATCH].offset = bb_offset;
> +		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
> +	}
> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
> +	if (gen >= 8) {
> +		batch[++i] = target_gpu_addr + delta;
> +		batch[++i] = (target_gpu_addr + delta) >> 32;

This is different from the previous code, presumably this is fixing a
bug where delta + bits 31:0 of target_gpu_addr overflows into the upper
32 bits?

Matt

> +	} else if (gen >= 4) {
> +		batch[++i] = 0;
> +		batch[++i] = delta;
> +		reloc.offset += sizeof(uint32_t);
> +	} else {
> +		batch[i]--;
> +		batch[++i] = delta;
> +	}
> +	batch[++i] = store_value;
> +	batch[++i] = MI_BATCH_BUFFER_END;
> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
> +	gem_execbuf(fd, &execbuf);
> +	gem_close(fd, obj[BATCH].handle);
> +	put_offset(ahnd, obj[BATCH].handle);
> +}
> diff --git a/lib/igt_store.h b/lib/igt_store.h
> new file mode 100644
> index 000000000..5c6c8263c
> --- /dev/null
> +++ b/lib/igt_store.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#include "igt_gt.h"
> +
> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> +		    const struct intel_execution_engine2 *e,
> +		    int fence, uint32_t target_handle,
> +		    uint64_t target_gpu_addr,
> +		    uint64_t store_offset, uint32_t store_value);
> diff --git a/lib/meson.build b/lib/meson.build
> index b9568a71b..3e43316d1 100644
> --- a/lib/meson.build
> +++ b/lib/meson.build
> @@ -72,6 +72,7 @@ lib_sources = [
>  	'igt_map.c',
>  	'igt_pm.c',
>  	'igt_dummyload.c',
> +	'igt_store.c',
>  	'uwildmat/uwildmat.c',
>  	'igt_kmod.c',
>  	'igt_panfrost.c',
> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
> index 9a6336ce9..196236b27 100644
> --- a/tests/i915/gem_exec_fence.c
> +++ b/tests/i915/gem_exec_fence.c
> @@ -28,6 +28,7 @@
>  #include "i915/gem.h"
>  #include "i915/gem_create.h"
>  #include "igt.h"
> +#include "igt_store.h"
>  #include "igt_syncobj.h"
>  #include "igt_sysfs.h"
>  #include "igt_vgem.h"
> @@ -57,74 +58,6 @@ struct sync_merge_data {
>  #define   MI_SEMAPHORE_SAD_EQ_SDD       (4 << 12)
>  #define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
>  
> -static void store(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> -		  const struct intel_execution_engine2 *e,
> -		  int fence, uint32_t target, uint64_t target_offset,
> -		  unsigned offset_value)
> -{
> -	const int SCRATCH = 0;
> -	const int BATCH = 1;
> -	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
> -	struct drm_i915_gem_exec_object2 obj[2];
> -	struct drm_i915_gem_relocation_entry reloc;
> -	struct drm_i915_gem_execbuffer2 execbuf;
> -	uint32_t batch[16], delta;
> -	uint64_t bb_offset;
> -	int i;
> -
> -	memset(&execbuf, 0, sizeof(execbuf));
> -	execbuf.buffers_ptr = to_user_pointer(obj);
> -	execbuf.buffer_count = 2;
> -	execbuf.flags = e->flags | I915_EXEC_FENCE_IN;
> -	execbuf.rsvd1 = ctx->id;
> -	execbuf.rsvd2 = fence;
> -	if (gen < 6)
> -		execbuf.flags |= I915_EXEC_SECURE;
> -
> -	memset(obj, 0, sizeof(obj));
> -	obj[SCRATCH].handle = target;
> -
> -	obj[BATCH].handle = gem_create(fd, 4096);
> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
> -	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
> -	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
> -	memset(&reloc, 0, sizeof(reloc));
> -
> -	i = 0;
> -	delta = sizeof(uint32_t) * offset_value;
> -	if (!ahnd) {
> -		reloc.target_handle = obj[SCRATCH].handle;
> -		reloc.presumed_offset = -1;
> -		reloc.offset = sizeof(uint32_t) * (i + 1);
> -		reloc.delta = delta;
> -		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
> -		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
> -	} else {
> -		obj[SCRATCH].offset = target_offset;
> -		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
> -		obj[BATCH].offset = bb_offset;
> -		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
> -	}
> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
> -	if (gen >= 8) {
> -		batch[++i] = target_offset + delta;
> -		batch[++i] = target_offset >> 32;
> -	} else if (gen >= 4) {
> -		batch[++i] = 0;
> -		batch[++i] = delta;
> -		reloc.offset += sizeof(uint32_t);
> -	} else {
> -		batch[i]--;
> -		batch[++i] = delta;
> -	}
> -	batch[++i] = offset_value;
> -	batch[++i] = MI_BATCH_BUFFER_END;
> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
> -	gem_execbuf(fd, &execbuf);
> -	gem_close(fd, obj[BATCH].handle);
> -	put_offset(ahnd, obj[BATCH].handle);
> -}
> -
>  static bool fence_busy(int fence)
>  {
>  	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
> @@ -400,13 +333,13 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>  			continue;
>  
>  		if (flags & NONBLOCK) {
> -			store(fd, ahnd, ctx, e2, spin->out_fence,
> -			      scratch, scratch_offset, i);
> +			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
> +				       scratch, scratch_offset, i, i);
>  		} else {
>  			igt_fork(child, 1) {
>  				ahnd = get_reloc_ahnd(fd, ctx->id);
> -				store(fd, ahnd, ctx, e2, spin->out_fence,
> -				      scratch, scratch_offset, i);
> +				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
> +					       scratch, scratch_offset, i, i);
>  				put_ahnd(ahnd);
>  			}
>  		}
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 6656b3fcd..5a0c9497c 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -36,6 +36,7 @@
>  #include "i915/gem.h"
>  #include "i915/gem_create.h"
>  #include "igt.h"
> +#include "igt_store.h"
>  #include "igt_sysfs.h"
>  #include "igt_debugfs.h"
>  #include "sw_sync.h"
> -- 
> 2.25.1
> 
