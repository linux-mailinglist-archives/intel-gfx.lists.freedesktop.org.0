Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DBC3B8495
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 16:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1136489DD5;
	Wed, 30 Jun 2021 14:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AECD589DD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 14:01:42 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id t15so435425wry.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 07:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=I33y3vXd0EYfV4gR2dXfpeXWwS4fnRZQsVBSWiEdcQM=;
 b=U+piM9HvuRFiWHCD0T5SOiHQ+eN6HS24PFj/scgm4f8QuD9qNjpFjviLLN/pYEi6iA
 UvuEGZYbowIicnh1GEJrQfogB84J59T0USuxn0R3BnJw4ZvUtUsbA1KjuK9CsIHA08M8
 sqISWRrIjtp7P/+zzhg1FXysx8VbeWJu7o2OY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=I33y3vXd0EYfV4gR2dXfpeXWwS4fnRZQsVBSWiEdcQM=;
 b=dQjez0x0lwyTmigUPGD4BDHo1dagTBkvVGWjT9xpF0mTiA6B1JqTWvMhJoHdkcI5p/
 G3N/wofPSVaA38j4csAdLpDEmaj3WNejcLGyr43qzpLTpoCO91bBUw41Bc1WuE5v5Cta
 LI0aH0vX4NPqx0+ce5/Gdi7+W2IjOzkcejrIp7FiJnAK0TPOSHmFie2w3uy7IEC1l1W8
 9W1BUQJ4Siv37IX4IsObRaxwsIfuXx4/F/iBDg39fmU6bmQE5gvYrY6jT+VXGMVMQ/9y
 ZH+7nAoHfN3ZM1RAa3Dz2AYa3629ejzgA1p3I3ZpyV2qMmrhwBgxCJ0gr8hyxE5TP9Lu
 RQZA==
X-Gm-Message-State: AOAM533uJ8wfxYyVDzlfSAdhZkndaIlIDjBeWOESGFP9MqUAww06CvNQ
 +eGVcI4JJ7g5+myMApotbC+xgQ==
X-Google-Smtp-Source: ABdhPJyzNK4u0x2JcvphkN5BJxzLL8siBxL0qhaGXn5BNOLMbeu8esKAhHdmPSvPP4P/VknvFoMKTQ==
X-Received: by 2002:adf:ec10:: with SMTP id x16mr18274983wrn.271.1625061701312; 
 Wed, 30 Jun 2021 07:01:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m6sm26275964wrw.9.2021.06.30.07.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Jun 2021 07:01:40 -0700 (PDT)
Date: Wed, 30 Jun 2021 16:01:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YNx5QuPR4VdXB2u3@phenom.ffwll.local>
References: <20210630130701.349458-1-thomas.hellstrom@linux.intel.com>
 <20210630130701.349458-2-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210630130701.349458-2-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Make our dma-buf exporter
 dynamic
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 matthew.auld@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 30, 2021 at 03:07:00PM +0200, Thomas Hellstr=F6m wrote:
> If our exported dma-bufs are imported by another instance of our driver,
> that instance will typically have the imported dma-bufs locked during
> dma_buf_map_attachment(). But the exporter also locks the same reservation
> object in the map_dma_buf() callback, which leads to recursive locking.
> =

> Add a live selftest to exercise both dynamic and non-dynamic exports,
> and as a workaround until we fully support dynamic import and export,
> declare the exporter dynamic by providing pin() and unpin() implementatio=
ns.
> For dynamic importers, make sure we keep the pinning also in map_dma_buf(=
),
> to ensure we never need to call dma_buf_move_notify().
> Calling dma_buf_move_notify() is at the discretion of the exporter.
> =

> v2:
> - Extend the selftest with a fake dynamic importer.
> - Provide real pin and unpin callbacks to not abuse the interface.
> =

> Reported-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>

I'm not happy with this, because i915 is currently violating the dma-resv
fencing rules for dynamic dma-buf.

Yes since this is just the exporter we can probably get away with yolo'ing
things, but Christian and me just spend a lot of angry typing figuring out
what the rules actually are, so I really don't like bending them even more
just because it's less typing.

All we need for a quick interim fix is to not take the dma_resv_lock from
our map/unamp callbacks. Pinning our backing storage from attach/detach
callbacks (which are also called under dma_resv_lock) would also achieve
that, without mudding any waters. So essentially just moving the
pin/unpin_pages_unlocked and we should be good, which is almost as little
typing.

Michael, since Thomas is on vacations now, care to type that up? The
selftest is imo solid.

This is also consistent with what all other ttm based drivers do (aside
from amdgpu, which is fully dynamic), see drm_gem_map_attach in
drm_prime.c

Adding Christian as fyi.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  31 ++++-
>  .../drm/i915/gem/selftests/i915_gem_dmabuf.c  | 116 +++++++++++++++++-
>  2 files changed, 143 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm=
/i915/gem/i915_gem_dmabuf.c
> index 616c3a2f1baf..918c19df7b66 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -12,6 +12,8 @@
>  #include "i915_gem_object.h"
>  #include "i915_scatterlist.h"
>  =

> +I915_SELFTEST_DECLARE(static bool force_different_devices;)
> +
>  static struct drm_i915_gem_object *dma_buf_to_obj(struct dma_buf *buf)
>  {
>  	return to_intel_bo(buf->priv);
> @@ -25,7 +27,14 @@ static struct sg_table *i915_gem_map_dma_buf(struct dm=
a_buf_attachment *attachme
>  	struct scatterlist *src, *dst;
>  	int ret, i;
>  =

> -	ret =3D i915_gem_object_pin_pages_unlocked(obj);
> +	assert_object_held(obj);
> +
> +	/*
> +	 * Note. In the dynamic importer case, the object is not yet pinned.
> +	 * Let's pin it here to avoid having to call the move_notify
> +	 * callback, The call of which is not yet implemented.
> +	 */
> +	ret =3D i915_gem_object_pin_pages(obj);
>  	if (ret)
>  		goto err;
>  =

> @@ -168,6 +177,21 @@ static int i915_gem_end_cpu_access(struct dma_buf *d=
ma_buf, enum dma_data_direct
>  	return err;
>  }
>  =

> +static int i915_gem_dmabuf_pin(struct dma_buf_attachment *attach)
> +{
> +	struct drm_i915_gem_object *obj =3D dma_buf_to_obj(attach->dmabuf);
> +
> +	assert_object_held(obj);
> +	return i915_gem_object_pin_pages(obj);
> +}
> +
> +static void i915_gem_dmabuf_unpin(struct dma_buf_attachment *attach)
> +{
> +	struct drm_i915_gem_object *obj =3D dma_buf_to_obj(attach->dmabuf);
> +
> +	i915_gem_object_unpin_pages(obj);
> +}
> +
>  static const struct dma_buf_ops i915_dmabuf_ops =3D  {
>  	.map_dma_buf =3D i915_gem_map_dma_buf,
>  	.unmap_dma_buf =3D i915_gem_unmap_dma_buf,
> @@ -177,6 +201,8 @@ static const struct dma_buf_ops i915_dmabuf_ops =3D  {
>  	.vunmap =3D i915_gem_dmabuf_vunmap,
>  	.begin_cpu_access =3D i915_gem_begin_cpu_access,
>  	.end_cpu_access =3D i915_gem_end_cpu_access,
> +	.pin =3D i915_gem_dmabuf_pin,
> +	.unpin =3D i915_gem_dmabuf_unpin,
>  };
>  =

>  struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, in=
t flags)
> @@ -241,7 +267,8 @@ struct drm_gem_object *i915_gem_prime_import(struct d=
rm_device *dev,
>  	if (dma_buf->ops =3D=3D &i915_dmabuf_ops) {
>  		obj =3D dma_buf_to_obj(dma_buf);
>  		/* is it from our device? */
> -		if (obj->base.dev =3D=3D dev) {
> +		if (obj->base.dev =3D=3D dev &&
> +		    !I915_SELFTEST_ONLY(force_different_devices)) {
>  			/*
>  			 * Importing dmabuf exported from out own gem increases
>  			 * refcount on gem itself instead of f_count of dmabuf.
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drive=
rs/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> index dd74bc09ec88..868b3469ecbd 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> @@ -35,7 +35,7 @@ static int igt_dmabuf_export(void *arg)
>  static int igt_dmabuf_import_self(void *arg)
>  {
>  	struct drm_i915_private *i915 =3D arg;
> -	struct drm_i915_gem_object *obj;
> +	struct drm_i915_gem_object *obj, *import_obj;
>  	struct drm_gem_object *import;
>  	struct dma_buf *dmabuf;
>  	int err;
> @@ -65,14 +65,125 @@ static int igt_dmabuf_import_self(void *arg)
>  		err =3D -EINVAL;
>  		goto out_import;
>  	}
> +	import_obj =3D to_intel_bo(import);
> +
> +	i915_gem_object_lock(import_obj, NULL);
> +	err =3D ____i915_gem_object_get_pages(import_obj);
> +	i915_gem_object_unlock(import_obj);
> +	if (err) {
> +		pr_err("Same object dma-buf get_pages failed!\n");
> +		goto out_import;
> +	}
>  =

>  	err =3D 0;
>  out_import:
> -	i915_gem_object_put(to_intel_bo(import));
> +	i915_gem_object_put(import_obj);
> +out_dmabuf:
> +	dma_buf_put(dmabuf);
> +out:
> +	i915_gem_object_put(obj);
> +	return err;
> +}
> +
> +static void igt_dmabuf_move_notify(struct dma_buf_attachment *attach)
> +{
> +	GEM_WARN_ON(1);
> +}
> +
> +static const struct dma_buf_attach_ops igt_dmabuf_attach_ops =3D {
> +	.move_notify =3D igt_dmabuf_move_notify,
> +};
> +
> +static int igt_dmabuf_import_same_driver(void *arg)
> +{
> +	struct drm_i915_private *i915 =3D arg;
> +	struct drm_i915_gem_object *obj, *import_obj;
> +	struct drm_gem_object *import;
> +	struct dma_buf *dmabuf;
> +	struct dma_buf_attachment *import_attach;
> +	struct sg_table *st;
> +	long timeout;
> +	int err;
> +
> +	force_different_devices =3D true;
> +	obj =3D i915_gem_object_create_shmem(i915, PAGE_SIZE);
> +	if (IS_ERR(obj))
> +		goto out_ret;
> +
> +	dmabuf =3D i915_gem_prime_export(&obj->base, 0);
> +	if (IS_ERR(dmabuf)) {
> +		pr_err("i915_gem_prime_export failed with err=3D%d\n",
> +		       (int)PTR_ERR(dmabuf));
> +		err =3D PTR_ERR(dmabuf);
> +		goto out;
> +	}
> +
> +	import =3D i915_gem_prime_import(&i915->drm, dmabuf);
> +	if (IS_ERR(import)) {
> +		pr_err("i915_gem_prime_import failed with err=3D%d\n",
> +		       (int)PTR_ERR(import));
> +		err =3D PTR_ERR(import);
> +		goto out_dmabuf;
> +	}
> +
> +	if (import =3D=3D &obj->base) {
> +		pr_err("i915_gem_prime_import reused gem object!\n");
> +		err =3D -EINVAL;
> +		goto out_import;
> +	}
> +
> +	import_obj =3D to_intel_bo(import);
> +
> +	i915_gem_object_lock(import_obj, NULL);
> +	err =3D ____i915_gem_object_get_pages(import_obj);
> +	if (err) {
> +		pr_err("Different objects dma-buf get_pages failed!\n");
> +		i915_gem_object_unlock(import_obj);
> +		goto out_import;
> +	}
> +
> +	/*
> +	 * If the exported object is not in system memory, something
> +	 * weird is going on. TODO: When p2p is supported, this is no
> +	 * longer considered weird.
> +	 */
> +	if (obj->mm.region !=3D i915->mm.regions[INTEL_REGION_SMEM]) {
> +		pr_err("Exported dma-buf is not in system memory\n");
> +		err =3D -EINVAL;
> +	}
> +
> +	i915_gem_object_unlock(import_obj);
> +
> +	/* Now try a fake dynamic importer */
> +	import_attach =3D dma_buf_dynamic_attach(dmabuf, obj->base.dev->dev,
> +					       &igt_dmabuf_attach_ops,
> +					       NULL);
> +	if (IS_ERR(import_attach))
> +		goto out_import;
> +
> +	dma_resv_lock(dmabuf->resv, NULL);
> +	st =3D dma_buf_map_attachment(import_attach, DMA_BIDIRECTIONAL);
> +	dma_resv_unlock(dmabuf->resv);
> +	if (IS_ERR(st))
> +		goto out_detach;
> +
> +	timeout =3D dma_resv_wait_timeout(dmabuf->resv, false, true, 5 * HZ);
> +	if (!timeout) {
> +		pr_err("dmabuf wait for exclusive fence timed out.\n");
> +		timeout =3D -ETIME;
> +	}
> +	err =3D timeout > 0 ? 0 : timeout;
> +	dma_buf_unmap_attachment(import_attach, st, DMA_BIDIRECTIONAL);
> +out_detach:
> +	dma_buf_detach(dmabuf, import_attach);
> +out_import:
> +	i915_gem_object_put(import_obj);
>  out_dmabuf:
>  	dma_buf_put(dmabuf);
>  out:
>  	i915_gem_object_put(obj);
> +out_ret:
> +	force_different_devices =3D false;
>  	return err;
>  }
>  =

> @@ -286,6 +397,7 @@ int i915_gem_dmabuf_live_selftests(struct drm_i915_pr=
ivate *i915)
>  {
>  	static const struct i915_subtest tests[] =3D {
>  		SUBTEST(igt_dmabuf_export),
> +		SUBTEST(igt_dmabuf_import_same_driver),
>  	};
>  =

>  	return i915_subtests(tests, i915);
> -- =

> 2.31.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
