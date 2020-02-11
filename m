Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 167D2158DA1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 12:40:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6469E8991E;
	Tue, 11 Feb 2020 11:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34978991C;
 Tue, 11 Feb 2020 11:39:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20185768-1500050 for multiple; Tue, 11 Feb 2020 11:39:38 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200204114113.22436-1-janusz.krzysztofik@linux.intel.com>
References: <20200204114113.22436-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <158142117623.2359.3844752172351507163@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Feb 2020 11:39:36 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t v3] tests/prime_vgem: Examine blitter
 access path
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-02-04 11:41:13)
> On future hardware with missing GGTT BAR we won't be able to exercise
> dma-buf access via that path.  An alternative to basic-gtt subtest for
> testing dma-buf access is required, as well as basic-fence-mmap and
> coherency-gtt subtest alternatives for testing WC coherency.
> 
> Access to the dma sg list feature exposed by dma-buf can be tested
> through blitter.  Unfortunately we don't have any equivalently simple
> tests that use blitter.  Provide them.
> 
> XY_SRC_COPY_BLT method implemented by igt_blitter_src_copy() IGT
> library helper has been chosen.
> 
> v2: As fast copy is not supported on platforms older than Gen 9,
>     use XY_SRC_COPY instead (Chris),
>   - add subtest descriptions.
> v3: Don't calculate the pitch, use scratch.pitch returned by
>     vgem_create() (Chris),
>   - replace constants with values from respective fields of scratch
>     (Chris),
>   - use _u32 variant of igt_assert_eq() for better readability of
>     possible error messages (Chris),
>   - sleep a bit to emphasize that the only thing stopping the blitter
>     is the fence (Chris),
>   - use prime_sync_start/end() as the recommended practice for
>     inter-device sync, not gem_sync() (Chris),
>   - update the name of used XY_SRC_COPY_BLT helper to match the name of
>     its library version just merged.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
> Hi Chris,
> 
> I hope I've understood and addressed your comments correctly so your
> R-b still applies.

Sure, just spotted one slight slip in uapi usage,

> +static void test_blt_interleaved(int vgem, int i915)
> +{
> +       struct vgem_bo scratch;
> +       uint32_t prime, native;
> +       uint32_t *foreign, *local;
> +       int dmabuf, i;
> +
> +       scratch.width = 1024;
> +       scratch.height = 1024;
> +       scratch.bpp = 32;
> +       vgem_create(vgem, &scratch);
> +
> +       dmabuf = prime_handle_to_fd(vgem, scratch.handle);
> +       prime = prime_fd_to_handle(i915, dmabuf);
> +
> +       native = gem_create(i915, scratch.size);
> +
> +       foreign = vgem_mmap(vgem, &scratch, PROT_WRITE);
> +       local = gem_mmap__wc(i915, native, 0, scratch.size, PROT_WRITE);
> +
> +       for (i = 0; i < scratch.height; i++) {
> +               local[scratch.pitch * i / sizeof(*local)] = i;
> +               igt_blitter_src_copy(i915, native, 0, scratch.pitch,
> +                                    I915_TILING_NONE, 0, i, scratch.width, 1,
> +                                    scratch.bpp, prime, 0, scratch.pitch,
> +                                    I915_TILING_NONE, 0, i);
> +               prime_sync_start(dmabuf, true);
> +               prime_sync_end(dmabuf, true);
> +               igt_assert_eq_u32(foreign[scratch.pitch * i / sizeof(*foreign)],
> +                                 i);

sync_start()
igt_assert...
sync_end()

> +
> +               foreign[scratch.pitch * i / sizeof(*foreign)] = ~i;
> +               igt_blitter_src_copy(i915, prime, 0, scratch.pitch,
> +                                    I915_TILING_NONE, 0, i, scratch.width, 1,
> +                                    scratch.bpp, native, 0, scratch.pitch,
> +                                    I915_TILING_NONE, 0, i);
> +               gem_sync(i915, native);
> +               igt_assert_eq_u32(local[scratch.pitch * i / sizeof(*local)],
> +                                 ~i);
> +       }

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
