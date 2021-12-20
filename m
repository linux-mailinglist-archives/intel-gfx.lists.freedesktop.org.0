Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8091C47B2B1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 19:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8ED1112ED3;
	Mon, 20 Dec 2021 18:14:44 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCBB112ECA;
 Mon, 20 Dec 2021 18:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640024083; x=1671560083;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+xOB76WFe3F07A/fs9kbTjzKYuH4RpfAnkSIZ37Hg7s=;
 b=B+qoAHlst+8iK8WPVlAQRRnr2SjaRugM6QwszuhGggvsjQyE95eMReGq
 DD+gCt/bKKMb8gVnAPoEsTFBdDDPA+BVI13Ql1oBt9Hc6SEZCPlXMTAt5
 TzLCWOGK/aaoyVBF9KIok/vAPKxmEvxK7DVAe5KIrLqTsam3mKb/VOrTf
 Ptam/ffTCsi6wDwLIgO5p/tMeEyV5/AUb4biLGJ3L9kF+HjLvkGmR9FrA
 51JTWeRZBawtXsatIW+HnDZrqU8wCEwI4jm7ddW8MOUeqHeOGSmfgpqbZ
 hxUgF6k7jd0bsQE4XPZcqHbI6KxRn39FNqUNxBiwj063ELlImacyHq9Ry w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10203"; a="238987716"
X-IronPort-AV: E=Sophos;i="5.88,221,1635231600"; d="scan'208";a="238987716"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 10:13:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,221,1635231600"; d="scan'208";a="520917954"
Received: from fhazubsk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.10.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 10:13:44 -0800
Date: Mon, 20 Dec 2021 19:13:42 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <YcDH1mQgoxOtWvAw@zkempczy-mobl2>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-9-John.C.Harrison@Intel.com>
 <YbruxWHUL7+Mrkze@zkempczy-mobl2>
 <dd455cdc-a667-b4c6-a354-d44aca4a74d9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd455cdc-a667-b4c6-a354-d44aca4a74d9@intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 08/11] lib/store: Refactor
 common store code into helper function
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

On Thu, Dec 16, 2021 at 02:40:21PM -0800, John Harrison wrote:
> On 12/15/2021 23:46, Zbigniew Kempczyński wrote:
> > On Mon, Dec 13, 2021 at 03:29:11PM -0800, John.C.Harrison@Intel.com wrote:
> > > From: John Harrison <John.C.Harrison@Intel.com>
> > > 
> > > A lot of tests use almost identical code for creating a batch buffer
> > > which does a single write to memory. This patch collects two such
> > > instances into a common helper function. Unfortunately, the other
> > > instances are all subtly different enough to make it not so trivial to
> > > try to use the helper. It could be done but it is unclear if it is
> > > worth the effort at this point. This patch proves the concept, if
> > > people like it enough then it can be extended.
> > > 
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > ---
> > >   lib/igt_store.c             | 114 ++++++++++++++++++++++++++++++++++++
> > >   lib/igt_store.h             |  30 ++++++++++
> > >   lib/meson.build             |   1 +
> > >   tests/i915/gem_exec_fence.c |  77 ++----------------------
> > >   tests/i915/i915_hangman.c   |  61 +------------------
> > >   5 files changed, 152 insertions(+), 131 deletions(-)
> > >   create mode 100644 lib/igt_store.c
> > >   create mode 100644 lib/igt_store.h
> > > 
> > > diff --git a/lib/igt_store.c b/lib/igt_store.c
> > > new file mode 100644
> > > index 000000000..6d9869b58
> > > --- /dev/null
> > > +++ b/lib/igt_store.c
> > > @@ -0,0 +1,114 @@
> > > +/*
> > > + * Copyright © 2020 Intel Corporation
> > > + *
> > > + * Permission is hereby granted, free of charge, to any person obtaining a
> > > + * copy of this software and associated documentation files (the "Software"),
> > > + * to deal in the Software without restriction, including without limitation
> > > + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
> > > + * and/or sell copies of the Software, and to permit persons to whom the
> > > + * Software is furnished to do so, subject to the following conditions:
> > > + *
> > > + * The above copyright notice and this permission notice (including the next
> > > + * paragraph) shall be included in all copies or substantial portions of the
> > > + * Software.
> > > + *
> > > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
> > > + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> > > + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> > > + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
> > > + * IN THE SOFTWARE.
> > > + *
> > > + */
> > Use SPDX. I like idea of extracting this.
> > 
> > > +
> > > +#include "i915/gem_create.h"
> > > +#include "igt_core.h"
> > > +#include "drmtest.h"
> > > +#include "igt_store.h"
> > > +#include "intel_chipset.h"
> > > +#include "intel_reg.h"
> > > +#include "ioctl_wrappers.h"
> > > +#include "lib/intel_allocator.h"
> > > +
> > > +/**
> > > + * SECTION:igt_store_word
> > > + * @short_description: Library for writing a value to memory
> > > + * @title: StoreWord
> > > + * @include: igt.h
> > > + *
> > > + * A lot of igt testcases need some mechanism for writing a value to memory
> > > + * as a test that a batch buffer has executed.
> > > + *
> > > + * NB: Requires master for STORE_DWORD on gen4/5.
> > > + */
> > > +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > +		    const struct intel_execution_engine2 *e,
> > > +		    int fence, uint32_t target_handle,
> > > +		    uint64_t target_offset, uint32_t target_value)
> > > +{
> > > +	const int SCRATCH = 0;
> > > +	const int BATCH = 1;
> > > +	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
> > > +	struct drm_i915_gem_exec_object2 obj[2];
> > > +	struct drm_i915_gem_relocation_entry reloc;
> > > +	struct drm_i915_gem_execbuffer2 execbuf;
> > > +	uint32_t batch[16], delta;
> > > +	uint64_t bb_offset;
> > > +	int i;
> > > +
> > > +	memset(&execbuf, 0, sizeof(execbuf));
> > > +	execbuf.buffers_ptr = to_user_pointer(obj);
> > > +	execbuf.buffer_count = ARRAY_SIZE(obj);
> > > +	execbuf.flags = e->flags;
> > > +	execbuf.rsvd1 = ctx->id;
> > > +	if (fence != -1) {
> > > +		execbuf.flags |= I915_EXEC_FENCE_IN;
> > > +		execbuf.rsvd2 = fence;
> > > +	}
> > > +	if (gen < 6)
> > > +		execbuf.flags |= I915_EXEC_SECURE;
> > > +
> > > +	memset(obj, 0, sizeof(obj));
> > > +	obj[SCRATCH].handle = target_handle;
> > > +
> > > +	obj[BATCH].handle = gem_create(fd, 4096);
> > > +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
> > > +	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
> > > +	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
> > > +	memset(&reloc, 0, sizeof(reloc));
> > > +
> > > +	i = 0;
> > > +	delta = sizeof(uint32_t) * target_value;	/* why value not offset??? */
> > I guess I know why there's problem here. target_offset is address in vm
> > passed by the caller. This is regarding to some limitations of allocator
> > infrastructure - for "reloc" pseudo-allocator you would get new offset
> > (internally it returns offset and then add size for new "allocation").
> > With this we don't need to wait for rebind offset for new execbuf.
> > With "simple" allocator put will release offset so new allocation will
> > reuse same offset. Ashutosh proposed how to join both functionalities
> > (stepping as with reloc, stateful like in simple) but I got no time to
> > code this.
> > 
> > Regarding issue here, target_offset passed from the caller is to avoid
> > rebind if get_offset() would be called for "reloc" allocator.
> > So there's not real value offset within bo. I would add separate
> > value_offset (shift) to allow caller to put place where it wants to
> > write the value.
> If you understand what is going on here and how to improve it then feel free
> to either send me an updated version or post an extra patch after this is
> merged. I don't get how any of the new reloc (or anti-reloc?) code is meant
> to work. These patches were all written as part of the GuC support a long
> time ago - before there was any such thing as an AHND (what does that stand
> for?) or intel_ctx_t. All I'm doing in this patch is moving the existing
> code to a helper and trying to make it generic enough to be used by another
> test. And right now, the two tests are passing on both GuC and execlist
> platforms for me. So the code can't be all that broken.

I've added some missing parts to your code:

https://patchwork.freedesktop.org/series/98242/

If you think something is missing please add or fix.

Previously value was used both for value and offset within bo 
used for example in gem_exec_fence@basic-await. I think adding
separate arg for offset for value within bo makes this code
more universal.

NB: ahnd is short version of allocator_handle

--
Zbigniew

> 
> 
> > 
> > 
> > > +	if (!ahnd) {
> > > +		reloc.target_handle = obj[SCRATCH].handle;
> > > +		reloc.presumed_offset = -1;
> > > +		reloc.offset = sizeof(uint32_t) * (i + 1);
> > > +		reloc.delta = delta;
> > > +		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
> > > +		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
> > > +	} else {
> > > +		obj[SCRATCH].offset = target_offset;
> > > +		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
> > > +		obj[BATCH].offset = bb_offset;
> > > +		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
> > > +	}
> > > +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
> > > +	if (gen >= 8) {
> > > +		batch[++i] = target_offset + delta;
> > > +		batch[++i] = target_offset >> 32;
> > Probably I've added this in previous code, for being safe I would
> > add (target_offset + delta) >> 32 for avoid risk passing invalid higher
> > offset part on 32b boundary.
> Pretty sure we don't have any addresses larger than 32 bits yet, but yes,
> delta should be added in.
> 
> Thanks,
> John.
> 
> > 
> > > +	} else if (gen >= 4) {
> > > +		batch[++i] = 0;
> > > +		batch[++i] = delta;
> > > +		reloc.offset += sizeof(uint32_t);
> > > +	} else {
> > > +		batch[i]--;
> > > +		batch[++i] = delta;
> > > +	}
> > > +	batch[++i] = target_value;
> > > +	batch[++i] = MI_BATCH_BUFFER_END;
> > > +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
> > > +	gem_execbuf(fd, &execbuf);
> > > +	gem_close(fd, obj[BATCH].handle);
> > > +	put_offset(ahnd, obj[BATCH].handle);
> > > +}
> > > diff --git a/lib/igt_store.h b/lib/igt_store.h
> > > new file mode 100644
> > > index 000000000..4d5979e07
> > > --- /dev/null
> > > +++ b/lib/igt_store.h
> > > @@ -0,0 +1,30 @@
> > > +/*
> > > + * Copyright © 2020 Intel Corporation
> > > + *
> > > + * Permission is hereby granted, free of charge, to any person obtaining a
> > > + * copy of this software and associated documentation files (the "Software"),
> > > + * to deal in the Software without restriction, including without limitation
> > > + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
> > > + * and/or sell copies of the Software, and to permit persons to whom the
> > > + * Software is furnished to do so, subject to the following conditions:
> > > + *
> > > + * The above copyright notice and this permission notice (including the next
> > > + * paragraph) shall be included in all copies or substantial portions of the
> > > + * Software.
> > > + *
> > > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
> > > + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> > > + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> > > + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
> > > + * IN THE SOFTWARE.
> > > + *
> > > + */
> > Use SPDX and 2021.
> > 
> > --
> > Zbigniew
> > 
> > > +
> > > +#include "igt_gt.h"
> > > +
> > > +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > +		    const struct intel_execution_engine2 *e,
> > > +		    int fence, uint32_t target_handle,
> > > +		    uint64_t target_offset, uint32_t target_value);
> > > diff --git a/lib/meson.build b/lib/meson.build
> > > index b9568a71b..3e43316d1 100644
> > > --- a/lib/meson.build
> > > +++ b/lib/meson.build
> > > @@ -72,6 +72,7 @@ lib_sources = [
> > >   	'igt_map.c',
> > >   	'igt_pm.c',
> > >   	'igt_dummyload.c',
> > > +	'igt_store.c',
> > >   	'uwildmat/uwildmat.c',
> > >   	'igt_kmod.c',
> > >   	'igt_panfrost.c',
> > > diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
> > > index 9a6336ce9..c4091a454 100644
> > > --- a/tests/i915/gem_exec_fence.c
> > > +++ b/tests/i915/gem_exec_fence.c
> > > @@ -28,6 +28,7 @@
> > >   #include "i915/gem.h"
> > >   #include "i915/gem_create.h"
> > >   #include "igt.h"
> > > +#include "igt_store.h"
> > >   #include "igt_syncobj.h"
> > >   #include "igt_sysfs.h"
> > >   #include "igt_vgem.h"
> > > @@ -57,74 +58,6 @@ struct sync_merge_data {
> > >   #define   MI_SEMAPHORE_SAD_EQ_SDD       (4 << 12)
> > >   #define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
> > > -static void store(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> > > -		  const struct intel_execution_engine2 *e,
> > > -		  int fence, uint32_t target, uint64_t target_offset,
> > > -		  unsigned offset_value)
> > > -{
> > > -	const int SCRATCH = 0;
> > > -	const int BATCH = 1;
> > > -	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
> > > -	struct drm_i915_gem_exec_object2 obj[2];
> > > -	struct drm_i915_gem_relocation_entry reloc;
> > > -	struct drm_i915_gem_execbuffer2 execbuf;
> > > -	uint32_t batch[16], delta;
> > > -	uint64_t bb_offset;
> > > -	int i;
> > > -
> > > -	memset(&execbuf, 0, sizeof(execbuf));
> > > -	execbuf.buffers_ptr = to_user_pointer(obj);
> > > -	execbuf.buffer_count = 2;
> > > -	execbuf.flags = e->flags | I915_EXEC_FENCE_IN;
> > > -	execbuf.rsvd1 = ctx->id;
> > > -	execbuf.rsvd2 = fence;
> > > -	if (gen < 6)
> > > -		execbuf.flags |= I915_EXEC_SECURE;
> > > -
> > > -	memset(obj, 0, sizeof(obj));
> > > -	obj[SCRATCH].handle = target;
> > > -
> > > -	obj[BATCH].handle = gem_create(fd, 4096);
> > > -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
> > > -	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
> > > -	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
> > > -	memset(&reloc, 0, sizeof(reloc));
> > > -
> > > -	i = 0;
> > > -	delta = sizeof(uint32_t) * offset_value;
> > > -	if (!ahnd) {
> > > -		reloc.target_handle = obj[SCRATCH].handle;
> > > -		reloc.presumed_offset = -1;
> > > -		reloc.offset = sizeof(uint32_t) * (i + 1);
> > > -		reloc.delta = delta;
> > > -		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
> > > -		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
> > > -	} else {
> > > -		obj[SCRATCH].offset = target_offset;
> > > -		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
> > > -		obj[BATCH].offset = bb_offset;
> > > -		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
> > > -	}
> > > -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
> > > -	if (gen >= 8) {
> > > -		batch[++i] = target_offset + delta;
> > > -		batch[++i] = target_offset >> 32;
> > > -	} else if (gen >= 4) {
> > > -		batch[++i] = 0;
> > > -		batch[++i] = delta;
> > > -		reloc.offset += sizeof(uint32_t);
> > > -	} else {
> > > -		batch[i]--;
> > > -		batch[++i] = delta;
> > > -	}
> > > -	batch[++i] = offset_value;
> > > -	batch[++i] = MI_BATCH_BUFFER_END;
> > > -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
> > > -	gem_execbuf(fd, &execbuf);
> > > -	gem_close(fd, obj[BATCH].handle);
> > > -	put_offset(ahnd, obj[BATCH].handle);
> > > -}
> > > -
> > >   static bool fence_busy(int fence)
> > >   {
> > >   	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
> > > @@ -400,13 +333,13 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
> > >   			continue;
> > >   		if (flags & NONBLOCK) {
> > > -			store(fd, ahnd, ctx, e2, spin->out_fence,
> > > -			      scratch, scratch_offset, i);
> > > +			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
> > > +				       scratch, scratch_offset, i);
> > >   		} else {
> > >   			igt_fork(child, 1) {
> > >   				ahnd = get_reloc_ahnd(fd, ctx->id);
> > > -				store(fd, ahnd, ctx, e2, spin->out_fence,
> > > -				      scratch, scratch_offset, i);
> > > +				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
> > > +					       scratch, scratch_offset, i);
> > >   				put_ahnd(ahnd);
> > >   			}
> > >   		}
> > > diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> > > index 20653b479..4cb9b8b85 100644
> > > --- a/tests/i915/i915_hangman.c
> > > +++ b/tests/i915/i915_hangman.c
> > > @@ -36,6 +36,7 @@
> > >   #include "i915/gem.h"
> > >   #include "i915/gem_create.h"
> > >   #include "igt.h"
> > > +#include "igt_store.h"
> > >   #include "igt_sysfs.h"
> > >   #include "igt_debugfs.h"
> > >   #include "sw_sync.h"
> > > @@ -51,64 +52,6 @@ static int sysfs = -1;
> > >   IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
> > > -/* Requires master for STORE_DWORD on gen4/5 */
> > > -static void store(int fd, const struct intel_execution_engine2 *e,
> > > -		  int fence, uint32_t target, unsigned offset_value)
> > > -{
> > > -	const int SCRATCH = 0;
> > > -	const int BATCH = 1;
> > > -	const int gen = intel_gen(intel_get_drm_devid(fd));
> > > -	struct drm_i915_gem_exec_object2 obj[2];
> > > -	struct drm_i915_gem_relocation_entry reloc;
> > > -	struct drm_i915_gem_execbuffer2 execbuf;
> > > -	uint32_t batch[16];
> > > -	int i;
> > > -
> > > -	memset(&execbuf, 0, sizeof(execbuf));
> > > -	execbuf.buffers_ptr = to_user_pointer(obj);
> > > -	execbuf.buffer_count = ARRAY_SIZE(obj);
> > > -	execbuf.flags = e->flags;
> > > -	if (fence != -1) {
> > > -		execbuf.flags |= I915_EXEC_FENCE_IN;
> > > -		execbuf.rsvd2 = fence;
> > > -	}
> > > -	if (gen < 6)
> > > -		execbuf.flags |= I915_EXEC_SECURE;
> > > -
> > > -	memset(obj, 0, sizeof(obj));
> > > -	obj[SCRATCH].handle = target;
> > > -
> > > -	obj[BATCH].handle = gem_create(fd, 4096);
> > > -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
> > > -	obj[BATCH].relocation_count = 1;
> > > -	memset(&reloc, 0, sizeof(reloc));
> > > -
> > > -	i = 0;
> > > -	reloc.target_handle = obj[SCRATCH].handle;
> > > -	reloc.presumed_offset = -1;
> > > -	reloc.offset = sizeof(uint32_t) * (i + 1);
> > > -	reloc.delta = sizeof(uint32_t) * offset_value;
> > > -	reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
> > > -	reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
> > > -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
> > > -	if (gen >= 8) {
> > > -		batch[++i] = reloc.delta;
> > > -		batch[++i] = 0;
> > > -	} else if (gen >= 4) {
> > > -		batch[++i] = 0;
> > > -		batch[++i] = reloc.delta;
> > > -		reloc.offset += sizeof(uint32_t);
> > > -	} else {
> > > -		batch[i]--;
> > > -		batch[++i] = reloc.delta;
> > > -	}
> > > -	batch[++i] = offset_value;
> > > -	batch[++i] = MI_BATCH_BUFFER_END;
> > > -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
> > > -	gem_execbuf(fd, &execbuf);
> > > -	gem_close(fd, obj[BATCH].handle);
> > > -}
> > > -
> > >   static void check_alive(void)
> > >   {
> > >   	const struct intel_execution_engine2 *engine;
> > > @@ -138,7 +81,7 @@ static void check_alive(void)
> > >   			continue;
> > >   		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
> > > -		store(fd, engine, -1, scratch, i + OFFSET_ALIVE);
> > > +		igt_store_word(fd, ahnd, ctx, engine, -1, scratch, i + OFFSET_ALIVE, i + OFFSET_ALIVE);
> > >   		i++;
> > >   	}
> > > -- 
> > > 2.25.1
> > > 
> 
