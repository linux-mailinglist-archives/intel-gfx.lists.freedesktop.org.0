Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AC85365AF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 18:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A94810FA31;
	Fri, 27 May 2022 16:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC2610FA31
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 16:08:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alarumbe) with ESMTPSA id F0D5A1F46403
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1653667698;
 bh=GEs8rfL3dWnDbhelA7zgKkfU6cFViwlbmmn4WW1Jvjg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pf/L0JNUv8ZRIefqEh2GkiqN1kJfKC0bJzwSfXRv2J9ByMsdKYnd+nh7CR7XUviNe
 hjyzurQ58ixomp/fUqXJsb1Exl7lq1FCexok/VFaT+oDOUDhc7Q58Wgb+eEgw1lh7L
 +K1GRs1PmD+VDEa3iSsLZtSYf6ZWCUVBBQ2FsXTkIKmcihOFOa+RdBrQix0iNT2pDf
 +qsF5NjhHgjiz6W2iRoVOdn58n9VhbZeskOrfNo0OUvtJmiQEVplPB5ofm4F2rU856
 GT0I6dFvHC0OZ229UXP1ZIzUOJrEJX6aHmFpnA0kxo/zfIQCDXZB8JNny5JCO3deKJ
 7pR9OBiG6AYqA==
Date: Fri, 27 May 2022 17:08:16 +0100
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <20220527160816.6it3epuvppx7phw5@sobremesa>
References: <20220517204513.429930-1-adrian.larumbe@collabora.com>
 <20220517204513.429930-2-adrian.larumbe@collabora.com>
 <DM5PR11MB13247CDAD675303087053B6BC1CE9@DM5PR11MB1324.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <DM5PR11MB13247CDAD675303087053B6BC1CE9@DM5PR11MB1324.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [RFC PATCH v2 1/1] drm/i915: Replace shmem memory
 region and object backend with TTM
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 17.05.2022 21:39, Ruhl, Michael J wrote:
> >-----Original Message-----
> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> >Adrian Larumbe
> >Sent: Tuesday, May 17, 2022 4:45 PM
> >To: daniel@ffwll.ch; intel-gfx@lists.freedesktop.org
> >Cc: adrian.larumbe@collabora.com
> >Subject: [Intel-gfx] [RFC PATCH v2 1/1] drm/i915: Replace shmem memory
> >region and object backend with TTM
> >
> >Remove shmem region and object backend code as they are now
> >unnecessary.
> >In the case of objects placed in SMEM and backed by kernel shmem files, the
> >file pointer has to be retrieved from the ttm_tt structure, so change this
> >as well. This means accessing an shmem-backed BO's file pointer requires
> >getting its pages beforehand, unlike in the old shmem backend.
> >
> >Expand TTM BO creation by handling devices with no LLC so that their
> >caching and coherency properties are set accordingly.
> >
> >Adapt phys backend to put pages of original shmem object in a 'TTM way',
> >also making sure its pages are put when a TTM shmem object has no struct
> >page.
> >
> >Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> >---
> > drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
> > drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
> > drivers/gpu/drm/i915/gem/i915_gem_object.h   |   4 +-
> > drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  32 +-
> > drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 390 +------------------
> > drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 267 ++++++++++++-
> > drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
> > drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |   9 +-
> > drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
> > drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
> > 10 files changed, 398 insertions(+), 422 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >index f5062d0c6333..de04ce4210b3 100644
> >--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >@@ -12,6 +12,7 @@
> > #include <asm/smp.h>
> >
> > #include "gem/i915_gem_dmabuf.h"
> >+#include "gem/i915_gem_ttm.h"
> > #include "i915_drv.h"
> > #include "i915_gem_object.h"
> > #include "i915_scatterlist.h"
> >@@ -94,22 +95,25 @@ static int i915_gem_dmabuf_mmap(struct dma_buf
> >*dma_buf, struct vm_area_struct *
> > {
> > 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
> > 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> >+	struct file *filp = i915_gem_ttm_get_filep(obj);
> > 	int ret;
> >
> >+	GEM_BUG_ON(obj->base.import_attach != NULL);
> >+
> > 	if (obj->base.size < vma->vm_end - vma->vm_start)
> > 		return -EINVAL;
> >
> > 	if (HAS_LMEM(i915))
> > 		return drm_gem_prime_mmap(&obj->base, vma);
> 
> Since all of the devices that will have device memory will be true for HAS_LMEM,
> won't your code path always go to drm_gem_prime_mmap()?

This makes me wonder, how was mapping of a dmabuf BO working before, in the case
of DG2 and DG1, when an object is smem-bound, and therefore backed by shmem?

I guess in this case it might be more sensible to control for the case that it's
an lmem-only object on a discrete platform as follows:

static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma)
{
	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
	struct drm_i915_private *i915 = to_i915(obj->base.dev);
	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
	struct file *filp = i915_gem_ttm_get_filep(obj);
	int ret;

	if (obj->base.size < vma->vm_end - vma->vm_start)
		return -EINVAL;

	if (IS_DGFX(i915) && i915_ttm_cpu_maps_iomem(bo->resource))
		return drm_gem_prime_mmap(&obj->base, vma);

	if (IS_ERR(filp))
		return PTR_ERR(filp);

	ret = call_mmap(filp, vma);
	if (ret)
		return ret;

	vma_set_file(vma, filp);

	return 0;
}

> >-	if (!obj->base.filp)
> >+	if (!filp)
> > 		return -ENODEV;
> >
> >-	ret = call_mmap(obj->base.filp, vma);
> >+	ret = call_mmap(filp, vma);
> > 	if (ret)
> > 		return ret;
> >
> >-	vma_set_file(vma, obj->base.filp);
> >+	vma_set_file(vma, filp);
> >
> > 	return 0;
> > }
> >@@ -224,6 +228,8 @@ struct dma_buf *i915_gem_prime_export(struct
> >drm_gem_object *gem_obj, int flags)
> > 	exp_info.priv = gem_obj;
> > 	exp_info.resv = obj->base.resv;
> >
> >+	GEM_BUG_ON(obj->base.import_attach != NULL);
> >+
> > 	if (obj->ops->dmabuf_export) {
> > 		int ret = obj->ops->dmabuf_export(obj);
> > 		if (ret)
> >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> >b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> >index 0c5c43852e24..d963cf35fdc9 100644
> >--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> >+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> >@@ -64,7 +64,9 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void
> >*data,
> > 	struct drm_i915_private *i915 = to_i915(dev);
> > 	struct drm_i915_gem_mmap *args = data;
> > 	struct drm_i915_gem_object *obj;
> >+	struct file *filp;
> > 	unsigned long addr;
> >+	int ret;
> >
> > 	/*
> > 	 * mmap ioctl is disallowed for all discrete platforms,
> >@@ -83,12 +85,20 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void
> >*data,
> > 	if (!obj)
> > 		return -ENOENT;
> >
> >-	/* prime objects have no backing filp to GEM mmap
> >-	 * pages from.
> >-	 */
> >-	if (!obj->base.filp) {
> >-		addr = -ENXIO;
> >-		goto err;
> >+	if (obj->base.import_attach)
> >+		filp = obj->base.filp;
> 
> Why is this now ok?  This is the imported object. And it used to give an error.
> 
> If you are importing from a different device, (i.e. an amd device is exporting
> the object, and you are i915 here), can you even do this?
> 
> My understanding was that mmaping was only for the exported object.
> 
> Has this changed?

You're right here, I completely misunderstood how this function is meant to deal
with imported objects. This arose as a consequence of the file pointer being
moved into the ttm_tt structure from the base DRM object.

The way I now check for the case that it's an imported object and therefore this
function should throw back an error is as follows:

/* prime objects have no backing filp to GEM mmap
 * pages from.
 */
if (obj->base.import_attach) {
	GEM_WARN_ON(obj->base.filp != NULL);
	addr = -ENXIO;
	goto err;
}

I believe the import_attach member has to be set for all imported
members. However, this just made me think, what would happen in the case we want
to mat a BO that we have exported for another driver to use? The import_attach
field would be set so my code would return with an error, even though we should
be in full control of mmaping it.

Maybe by allowing the function to go forward in case the base GEM object's dma-buf
operations are the same as our driver's:

i915_gem_dmabuf.c:

const struct dma_buf_ops *i915_get_dmabuf_ops(void) {
        return &i915_dmabuf_ops;
}

i915_gem_mman.c:

/* prime objects have no backing filp to GEM mmap
 * pages from.
 */
if (obj->base.import_attach &&
    obj->base.dma_buf->ops != i915_get_dmabuf_ops()) {
	GEM_WARN_ON(obj->base.filp != NULL);
	addr = -ENXIO;
	goto err;
}

> Thanks,
> 
> Mike

Cheers,
Adrian
