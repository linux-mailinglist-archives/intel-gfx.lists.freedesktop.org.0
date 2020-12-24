Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092AA2E25F8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 11:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543C689D5B;
	Thu, 24 Dec 2020 10:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E965389D5B;
 Thu, 24 Dec 2020 10:49:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23421685-1500050 for multiple; Thu, 24 Dec 2020 10:49:32 +0000
MIME-Version: 1.0
In-Reply-To: <20201224102905.356576-1-matthew.auld@intel.com>
References: <20201224102905.356576-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
Date: Thu, 24 Dec 2020 10:49:32 +0000
Message-ID: <160880697253.15843.13626477854969407823@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH] i915/tests: shadow peek
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-12-24 10:29:05)
> The shadow batch needs to be in the user visible ppGTT, so make sure we
> are not leaking anything, if we can guess where the shadow will be
> placed.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  tests/i915/gen9_exec_parse.c | 129 +++++++++++++++++++++++++++++++++++
>  1 file changed, 129 insertions(+)
> 
> diff --git a/tests/i915/gen9_exec_parse.c b/tests/i915/gen9_exec_parse.c
> index 087d6f35..6f54c4e1 100644
> --- a/tests/i915/gen9_exec_parse.c
> +++ b/tests/i915/gen9_exec_parse.c
> @@ -1051,6 +1051,132 @@ static void test_rejected(int i915, uint32_t handle, bool ctx_param)
>         }
>  }
>  
> +#define PAGE_SHIFT 12
> +#define PAGE_SIZE (1ULL << 12)
> +
> +static inline uint32_t fill_and_copy_shadow(uint32_t *batch, uint32_t len,
> +                                           uintptr_t src, uintptr_t dst)
> +{
> +        unsigned int i = 0;
> +
> +#define XY_COLOR_BLT_CMD        (2 << 29 | 0x50 << 22)
> +#define BLT_WRITE_ALPHA         (1<<21)
> +#define BLT_WRITE_RGB           (1<<20)
> +       batch[i++] = XY_COLOR_BLT_CMD | BLT_WRITE_ALPHA | BLT_WRITE_RGB | (7 - 2);
> +       batch[i++] = 0xf0 << 16 | 1 << 25 | 1 << 24 | PAGE_SIZE;
> +       batch[i++] = 0;
> +       batch[i++] = len >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
> +       batch[i++] = lower_32_bits(dst);
> +       batch[i++] = upper_32_bits(dst);
> +
> +       batch[i++] = 0xdeadbeaf;
> +       batch[i++] = 0;
> +
> +#define COPY_BLT_CMD            (2<<29|0x53<<22)
> +       batch[i++] = COPY_BLT_CMD | BLT_WRITE_ALPHA | BLT_WRITE_RGB | 8;
> +       batch[i++] = 0xcc << 16 | 1 << 25 | 1 << 24 | PAGE_SIZE;
> +       batch[i++] = 0;
> +       batch[i++] = len >> PAGE_SHIFT << 16 | PAGE_SIZE / 4;
> +       batch[i++] = lower_32_bits(dst);
> +       batch[i++] = upper_32_bits(dst);
> +       batch[i++] = 0;
> +       batch[i++] = PAGE_SIZE;
> +       batch[i++] = lower_32_bits(src);
> +       batch[i++] = upper_32_bits(src);
> +
> +       batch[i++] = MI_BATCH_BUFFER_END;
> +       batch[i++] = 0;
> +
> +       return i * sizeof(uint32_t);
> +}
> +
> +static inline uint64_t sign_extend(uint64_t x, int index)
> +{
> +       int shift = 63 - index;
> +       return (int64_t)(x << shift) >> shift;
> +}
> +
> +static uint64_t gen8_canonical_address(uint64_t address)
> +{
> +       return sign_extend(address, 47);
> +}
> +
> +static void test_shadow_peek(int fd)
> +{
> +       uint64_t size = PAGE_SIZE;
> +       struct drm_i915_gem_exec_object2 exec[2] = {};
> +       struct drm_i915_gem_execbuffer2 execbuf = {
> +               .buffers_ptr = to_user_pointer(exec),
> +               .buffer_count = 2,
> +       };
> +       uint32_t *vaddr;
> +       uint32_t len;
> +       int i;
> +
> +       exec[0].handle = gem_create(fd, size); /* scratch for shadow */
> +       exec[0].flags = EXEC_OBJECT_PINNED |
> +                       EXEC_OBJECT_SUPPORTS_48B_ADDRESS |
> +                       EXEC_OBJECT_PAD_TO_SIZE;
> +       exec[0].offset = 0;
> +       /*
> +        * Ensure the shadow has no place to hide, if say it were placed
> +        * randomly within the address space. We leave enough space for our
> +        * batch, which leaves exactly one perfect sized hole for the shadow to
> +        * occupy later.
> +        *
> +        * Note that pad_to_size is just the node.size for the vma, which means
> +        * we can easily occupy the entire 48b ppGTT, if we want, without
> +        * needing an insane amount of physical memory.
> +        */
> +       exec[0].pad_to_size = gem_aperture_size(fd) - 2 * size;

Hmm. We do only allocate vma->size. Ok, I thought we did vma->node.size
there, so this won't consume as much RAM as I expected.

Given that, this should force the shadow exactly where you want it.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

There's a few more tricks we could try with poisoning the vma pool to
try and see if we can get info out of the second page, but this test
alone proves that we have a problem.

Hmm, speaking of second pages, this also highlights a problem where we
try to fit in a shadow vma that is larger than available space, a false
ENOSPC.

In fact, that is a test in of itself, a batch that occupies the whole
ppgtt should not generate ENOSPC. Back to gem_softpin...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
