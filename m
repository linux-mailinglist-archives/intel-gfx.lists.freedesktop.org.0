Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5381C3B6F9B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 10:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F32589E39;
	Tue, 29 Jun 2021 08:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D88089E39
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 08:43:47 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 l21-20020a05600c1d15b02901e7513b02dbso1235182wms.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 01:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ZLLoyuYZYIAhkB+gaKaUSe2JuSukEfWLhBopM2IVpk4=;
 b=hRDqKpdbDPiWtd97hFTOuVJdmyPLv5QTeVPEN33reII72JrcB7kLUKY9zaxFzyXg42
 1uP2t6mulUXN6eUZUxUrfxGo2caaUsFW3LIXbNx88OAkUlxNrDNZOFB941BGIIab+bvv
 jHUoBd7oNyx7k8/pUA/lj5AQqzAVCn7GBnBLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZLLoyuYZYIAhkB+gaKaUSe2JuSukEfWLhBopM2IVpk4=;
 b=fq1b3P3Ri9yTFc0wILsUt6nleUUWGYmgT241lwkaKLZFX4b0qBzYdVGqc3EjD+VgTQ
 EzudHb2cF0nN87AgbJC4gL9UaSnMURvv8MKBYodq0Y0EXIcOWdKvilxNhKNgYgAHFPu5
 qYiHmj1sEFhaR4j4s7z5jkItTrsVKmoYgAlNWrAXe+prSoYmysG7gmsXtbhPA7ggz6Zn
 xSM8OtDKPptiuvbSn4IIEsB0q9LmsQS6mQsqN3CrFWFwJ4c+dypeVHmzinVx+M+LkGtu
 VP+5ciLDy9BCpg7Bru46DTa1veUigzLPYeg82DjDxy8Y1jl8FhYhBbOAEl3qmKRe0twK
 30og==
X-Gm-Message-State: AOAM530UQzeQT8bBLtnsSbF0WTLT+IMPBq3QQa3OMUjjKQ/0YwBiBHaH
 vpt03izMeCuGgIbig99ODUXj5g==
X-Google-Smtp-Source: ABdhPJz6Jx1+TWAIw76GD2n9rLOamIRESrUBrpZpta3RsdBKK+r6uubC5KO3to70pnYJJaMiDBSKeA==
X-Received: by 2002:a05:600c:1d23:: with SMTP id
 l35mr29936596wms.134.1624956226078; 
 Tue, 29 Jun 2021 01:43:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s5sm1926214wmh.46.2021.06.29.01.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 01:43:45 -0700 (PDT)
Date: Tue, 29 Jun 2021 10:43:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <YNrdP3+pq9GlBIIR@phenom.ffwll.local>
References: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
 <20210628144626.76126-5-thomas.hellstrom@linux.intel.com>
 <cf307e287b904ed6bdaeb3f3c9d34095@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf307e287b904ed6bdaeb3f3c9d34095@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915/gem: Fix
 same-driver-another-instance dma-buf export
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 28, 2021 at 07:45:31PM +0000, Ruhl, Michael J wrote:
> >-----Original Message-----
> >From: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> >Sent: Monday, June 28, 2021 10:46 AM
> >To: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org
> >Cc: Auld, Matthew <matthew.auld@intel.com>;
> >maarten.lankhorst@linux.intel.com; Thomas Hellstr=F6m
> ><thomas.hellstrom@linux.intel.com>; Ruhl; Ruhl, Michael J
> ><michael.j.ruhl@intel.com>
> >Subject: [PATCH v3 4/5] drm/i915/gem: Fix same-driver-another-instance
> >dma-buf export
> >
> >If our exported dma-bufs are imported by another instance of our driver,
> >that instance will typically have the imported dma-bufs locked during
> >map_attachment(). But the exporter also locks the same reservation
> >object in the map_dma_buf() callback, which leads to recursive locking.
> >
> >Add a live selftest to catch this case, and as a workaround until
> >we fully support dynamic import and export, declare the exporter dynamic
> >by providing NOP pin() and unpin() functions. This means our map_dma_buf=
()
> >callback will *always* get called locked, and by pinning unconditionally
> >in i915_gem_map_dma_buf() we make sure we don't need to use the
> >move_notify() functionality which is not yet implemented.
> =

> An interesting abuse of the interface, but it seems reasonable (for now) =
to me.

Hm I'm not sure this is the best interface abuse, since if we combine this
with amdgpu it goes boom. Also I thought the dynamic stuff is optional (or
is that only for the importer).

What I discussed a bit with Maarten on irc is to essentially emulate the
rules of what a dynamic exporter would end up with with a non-dynamic
importer: pin/unpin the buffer at attach/detach time. We could fake this
in our attach/detach callbacks.

At least I don't think it's the locking changes that saves us here, but
the caching of the sgt list in attach/detach. As long as we hand-roll that
we should be fine. So hand-rolling that feels like the best option to make
sure we're not making this worse, as long as we haven't fully validated
the true dynamic importer _and_ exporter case.

Cheers, Daniel

> Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> =

> Mike
> =

> >Reported-by: Ruhl, Michael J <michael.j.ruhl@intel.com>
> >Cc: Ruhl, Michael J <michael.j.ruhl@intel.com>
> >Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    | 31 ++++++-
> > .../drm/i915/gem/selftests/i915_gem_dmabuf.c  | 81
> >++++++++++++++++++-
> > 2 files changed, 108 insertions(+), 4 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >index 616c3a2f1baf..1d1eeb167d28 100644
> >--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> >@@ -12,6 +12,8 @@
> > #include "i915_gem_object.h"
> > #include "i915_scatterlist.h"
> >
> >+I915_SELFTEST_DECLARE(static bool force_different_devices;)
> >+
> > static struct drm_i915_gem_object *dma_buf_to_obj(struct dma_buf *buf)
> > {
> > 	return to_intel_bo(buf->priv);
> >@@ -25,7 +27,9 @@ static struct sg_table *i915_gem_map_dma_buf(struct
> >dma_buf_attachment *attachme
> > 	struct scatterlist *src, *dst;
> > 	int ret, i;
> >
> >-	ret =3D i915_gem_object_pin_pages_unlocked(obj);
> >+	assert_object_held(obj);
> >+
> >+	ret =3D i915_gem_object_pin_pages(obj);
> > 	if (ret)
> > 		goto err;
> >
> >@@ -168,6 +172,26 @@ static int i915_gem_end_cpu_access(struct dma_buf
> >*dma_buf, enum dma_data_direct
> > 	return err;
> > }
> >
> >+/*
> >+ * As a workaround until we fully support dynamic import and export,
> >+ * declare the exporter dynamic by providing NOP pin() and unpin()
> >functions.
> >+ * This means our i915_gem_map_dma_buf() callback will *always* get
> >called
> >+ * locked, and by pinning unconditionally in i915_gem_map_dma_buf() we
> >make
> >+ * sure we don't need to use the move_notify() functionality which is
> >+ * not yet implemented. Typically for the same-driver-another-instance =
case,
> >+ * i915_gem_map_dma_buf() will be called at importer attach time and the
> >+ * mapped sg_list will be cached by the dma-buf core for the
> >+ * duration of the attachment.
> >+ */
> >+static int i915_gem_dmabuf_pin(struct dma_buf_attachment *attach)
> >+{
> >+	return 0;
> >+}
> >+
> >+static void i915_gem_dmabuf_unpin(struct dma_buf_attachment *attach)
> >+{
> >+}
> >+
> > static const struct dma_buf_ops i915_dmabuf_ops =3D  {
> > 	.map_dma_buf =3D i915_gem_map_dma_buf,
> > 	.unmap_dma_buf =3D i915_gem_unmap_dma_buf,
> >@@ -177,6 +201,8 @@ static const struct dma_buf_ops i915_dmabuf_ops =3D =
 {
> > 	.vunmap =3D i915_gem_dmabuf_vunmap,
> > 	.begin_cpu_access =3D i915_gem_begin_cpu_access,
> > 	.end_cpu_access =3D i915_gem_end_cpu_access,
> >+	.pin =3D i915_gem_dmabuf_pin,
> >+	.unpin =3D i915_gem_dmabuf_unpin,
> > };
> >
> > struct dma_buf *i915_gem_prime_export(struct drm_gem_object
> >*gem_obj, int flags)
> >@@ -241,7 +267,8 @@ struct drm_gem_object
> >*i915_gem_prime_import(struct drm_device *dev,
> > 	if (dma_buf->ops =3D=3D &i915_dmabuf_ops) {
> > 		obj =3D dma_buf_to_obj(dma_buf);
> > 		/* is it from our device? */
> >-		if (obj->base.dev =3D=3D dev) {
> >+		if (obj->base.dev =3D=3D dev &&
> >+		    !I915_SELFTEST_ONLY(force_different_devices)) {
> > 			/*
> > 			 * Importing dmabuf exported from out own gem
> >increases
> > 			 * refcount on gem itself instead of f_count of
> >dmabuf.
> >diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> >b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> >index dd74bc09ec88..24735d6c12a2 100644
> >--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> >+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> >@@ -35,7 +35,7 @@ static int igt_dmabuf_export(void *arg)
> > static int igt_dmabuf_import_self(void *arg)
> > {
> > 	struct drm_i915_private *i915 =3D arg;
> >-	struct drm_i915_gem_object *obj;
> >+	struct drm_i915_gem_object *obj, *import_obj;
> > 	struct drm_gem_object *import;
> > 	struct dma_buf *dmabuf;
> > 	int err;
> >@@ -65,14 +65,90 @@ static int igt_dmabuf_import_self(void *arg)
> > 		err =3D -EINVAL;
> > 		goto out_import;
> > 	}
> >+	import_obj =3D to_intel_bo(import);
> >+
> >+	i915_gem_object_lock(import_obj, NULL);
> >+	err =3D ____i915_gem_object_get_pages(import_obj);
> >+	i915_gem_object_unlock(import_obj);
> >+	if (err) {
> >+		pr_err("Same object dma-buf get_pages failed!\n");
> >+		goto out_import;
> >+	}
> >
> > 	err =3D 0;
> > out_import:
> >-	i915_gem_object_put(to_intel_bo(import));
> >+	i915_gem_object_put(import_obj);
> >+out_dmabuf:
> >+	dma_buf_put(dmabuf);
> >+out:
> >+	i915_gem_object_put(obj);
> >+	return err;
> >+}
> >+
> >+static int igt_dmabuf_import_same_driver(void *arg)
> >+{
> >+	struct drm_i915_private *i915 =3D arg;
> >+	struct drm_i915_gem_object *obj, *import_obj;
> >+	struct drm_gem_object *import;
> >+	struct dma_buf *dmabuf;
> >+	int err;
> >+
> >+	force_different_devices =3D true;
> >+	obj =3D i915_gem_object_create_shmem(i915, PAGE_SIZE);
> >+	if (IS_ERR(obj))
> >+		goto out_ret;
> >+
> >+	dmabuf =3D i915_gem_prime_export(&obj->base, 0);
> >+	if (IS_ERR(dmabuf)) {
> >+		pr_err("i915_gem_prime_export failed with err=3D%d\n",
> >+		       (int)PTR_ERR(dmabuf));
> >+		err =3D PTR_ERR(dmabuf);
> >+		goto out;
> >+	}
> >+
> >+	import =3D i915_gem_prime_import(&i915->drm, dmabuf);
> >+	if (IS_ERR(import)) {
> >+		pr_err("i915_gem_prime_import failed with err=3D%d\n",
> >+		       (int)PTR_ERR(import));
> >+		err =3D PTR_ERR(import);
> >+		goto out_dmabuf;
> >+	}
> >+
> >+	if (import =3D=3D &obj->base) {
> >+		pr_err("i915_gem_prime_import reused gem object!\n");
> >+		err =3D -EINVAL;
> >+		goto out_import;
> >+	}
> >+
> >+	import_obj =3D to_intel_bo(import);
> >+
> >+	i915_gem_object_lock(import_obj, NULL);
> >+	err =3D ____i915_gem_object_get_pages(import_obj);
> >+	if (err) {
> >+		pr_err("Different objects dma-buf get_pages failed!\n");
> >+		i915_gem_object_unlock(import_obj);
> >+		goto out_import;
> >+	}
> >+
> >+	/*
> >+	 * If the exported object is not in system memory, something
> >+	 * weird is going on. TODO: When p2p is supported, this is no
> >+	 * longer considered weird.
> >+	 */
> >+	if (obj->mm.region !=3D i915->mm.regions[INTEL_REGION_SMEM]) {
> >+		pr_err("Exported dma-buf is not in system memory\n");
> >+		err =3D -EINVAL;
> >+	}
> >+	i915_gem_object_unlock(import_obj);
> >+
> >+out_import:
> >+	i915_gem_object_put(import_obj);
> > out_dmabuf:
> > 	dma_buf_put(dmabuf);
> > out:
> > 	i915_gem_object_put(obj);
> >+out_ret:
> >+	force_different_devices =3D false;
> > 	return err;
> > }
> >
> >@@ -286,6 +362,7 @@ int i915_gem_dmabuf_live_selftests(struct
> >drm_i915_private *i915)
> > {
> > 	static const struct i915_subtest tests[] =3D {
> > 		SUBTEST(igt_dmabuf_export),
> >+		SUBTEST(igt_dmabuf_import_same_driver),
> > 	};
> >
> > 	return i915_subtests(tests, i915);
> >--
> >2.31.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
