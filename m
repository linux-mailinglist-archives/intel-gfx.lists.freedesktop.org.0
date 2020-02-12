Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D315A446
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 10:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE376F49D;
	Wed, 12 Feb 2020 09:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5709C6F49B;
 Wed, 12 Feb 2020 09:09:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 01:09:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="406234132"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 01:09:00 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 12 Feb 2020 10:08:53 +0100
Message-ID: <5173421.1tdKuYG5iQ@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158142117623.2359.3844752172351507163@skylake-alporthouse-com>
References: <20200204114113.22436-1-janusz.krzysztofik@linux.intel.com>
 <158142117623.2359.3844752172351507163@skylake-alporthouse-com>
MIME-Version: 1.0
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
Cc: igt-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Tuesday, February 11, 2020 12:39:36 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-02-04 11:41:13)
> > On future hardware with missing GGTT BAR we won't be able to exercise
> > dma-buf access via that path.  An alternative to basic-gtt subtest for
> > testing dma-buf access is required, as well as basic-fence-mmap and
> > coherency-gtt subtest alternatives for testing WC coherency.
> > 
> > Access to the dma sg list feature exposed by dma-buf can be tested
> > through blitter.  Unfortunately we don't have any equivalently simple
> > tests that use blitter.  Provide them.
> > 
> > XY_SRC_COPY_BLT method implemented by igt_blitter_src_copy() IGT
> > library helper has been chosen.
> > 
> > v2: As fast copy is not supported on platforms older than Gen 9,
> >     use XY_SRC_COPY instead (Chris),
> >   - add subtest descriptions.
> > v3: Don't calculate the pitch, use scratch.pitch returned by
> >     vgem_create() (Chris),
> >   - replace constants with values from respective fields of scratch
> >     (Chris),
> >   - use _u32 variant of igt_assert_eq() for better readability of
> >     possible error messages (Chris),
> >   - sleep a bit to emphasize that the only thing stopping the blitter
> >     is the fence (Chris),
> >   - use prime_sync_start/end() as the recommended practice for
> >     inter-device sync, not gem_sync() (Chris),
> >   - update the name of used XY_SRC_COPY_BLT helper to match the name of
> >     its library version just merged.
> > 
> > Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> > Hi Chris,
> > 
> > I hope I've understood and addressed your comments correctly so your
> > R-b still applies.
> 
> Sure, just spotted one slight slip in uapi usage,
> 
> > +static void test_blt_interleaved(int vgem, int i915)
> > +{
> > +       struct vgem_bo scratch;
> > +       uint32_t prime, native;
> > +       uint32_t *foreign, *local;
> > +       int dmabuf, i;
> > +
> > +       scratch.width = 1024;
> > +       scratch.height = 1024;
> > +       scratch.bpp = 32;
> > +       vgem_create(vgem, &scratch);
> > +
> > +       dmabuf = prime_handle_to_fd(vgem, scratch.handle);
> > +       prime = prime_fd_to_handle(i915, dmabuf);
> > +
> > +       native = gem_create(i915, scratch.size);
> > +
> > +       foreign = vgem_mmap(vgem, &scratch, PROT_WRITE);
> > +       local = gem_mmap__wc(i915, native, 0, scratch.size, PROT_WRITE);
> > +
> > +       for (i = 0; i < scratch.height; i++) {
> > +               local[scratch.pitch * i / sizeof(*local)] = i;
> > +               igt_blitter_src_copy(i915, native, 0, scratch.pitch,
> > +                                    I915_TILING_NONE, 0, i, scratch.width, 1,
> > +                                    scratch.bpp, prime, 0, scratch.pitch,
> > +                                    I915_TILING_NONE, 0, i);
> > +               prime_sync_start(dmabuf, true);
> > +               prime_sync_end(dmabuf, true);
> > +               igt_assert_eq_u32(foreign[scratch.pitch * i / sizeof(*foreign)],
> > +                                 i);
> 
> sync_start()
> igt_assert...
> sync_end()

While your modification seems harmless to me, could you please explain why? 
'foreign' is not a map to dma-buf, it's a map to a vgem object.  Why 
should we surround access to an mmapped vgem object with prime_sync_start/
end()?  I think vgem driver should take care of synchronization/serialization 
as needed.

My intention was to use an empty prime_sync_start/end() instead of 
gem_sync(prime) for the sole purpose of making sure blitter copy was completed 
before we examine results from the vgem side.

Thanks,
Janusz


> > +
> > +               foreign[scratch.pitch * i / sizeof(*foreign)] = ~i;
> > +               igt_blitter_src_copy(i915, prime, 0, scratch.pitch,
> > +                                    I915_TILING_NONE, 0, i, scratch.width, 1,
> > +                                    scratch.bpp, native, 0, scratch.pitch,
> > +                                    I915_TILING_NONE, 0, i);
> > +               gem_sync(i915, native);
> > +               igt_assert_eq_u32(local[scratch.pitch * i / sizeof(*local)],
> > +                                 ~i);
> > +       }
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
