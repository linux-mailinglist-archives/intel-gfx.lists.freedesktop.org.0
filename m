Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AA41726D1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77856ED34;
	Thu, 27 Feb 2020 18:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 037786ED31
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:36 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id y17so4627694wrn.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bALWTfMbpih5FGoq3cMNtvtGpKtJJMR1ins1Yr1bNpg=;
 b=YqWH6p2etRyc7bG0Ji7UuvKY08q37Uvg3xBO8eZu99Qg3K/dCHJbJjxn0YDbOvqXCr
 mLq4vytqEoJkXk9pZeRs2/vFXeg21gZC+GnSbRUHZBMYtjxgA0Cx53XtvMp7CKM4Jbn8
 YlHxFB4awZVjX5sSAZjgnOUW3G/Gs2dHfshlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bALWTfMbpih5FGoq3cMNtvtGpKtJJMR1ins1Yr1bNpg=;
 b=i6WXS4eX47afv8iOGwb9qYucZtlJ8iCv7LG7B/op7rxmN/tY83kQrtVGWzDd/AMUwk
 qVbX7WByC2JLxnPKAuU0ayPsh4QrXOA/TqfkXxF5/DVdrsl6GiKKCxoYWaLbXAhDQEeC
 ZF5KmCqblY2B13MSzssFdo0AbogiOngvlmjH9mC9rOcbvDy+ya7Cl8Wp73kHWiboCc+d
 Ov24cTj4SExYDMA7pdMQYTbYZpGxpusUDRYIpmUmCegiul9AtejIkaleXTcHH8b/jiYI
 PXfm+XpPD0HnanZOKuLPFbMRfaZszk+NmpzNRDcgV2oSVZioAQtpRruJWRIjjKLpUdaO
 ZvKA==
X-Gm-Message-State: APjAAAVrE0VYqzKA2ymcBUmGBpFwkGJrx7/EuwxEBIkQfZPTPSJm6L8H
 qTC8vYVaKt4bXMwiq3+oU6QaZQ==
X-Google-Smtp-Source: APXvYqxkdVxRm0o1rSW+SdB2PuTx1LUGFM0aRb5em0YSD8NDDrsBSIjODR5LEW7NwJO34DOnjMBrIg==
X-Received: by 2002:a5d:4750:: with SMTP id o16mr115787wrs.91.1582827394575;
 Thu, 27 Feb 2020 10:16:34 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:33 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:15:22 +0100
Message-Id: <20200227181522.2711142-52-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 51/51] drm: Add docs for managed resources
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All collected together to provide a consistent story in one patch,
instead of the somewhat bumpy refactor-evolution leading to this.

Also some thoughts on what the next steps could be:

- Create a macro called devm_drm_dev_alloc() which essentially wraps
  the kzalloc(); devm_drm_dev_init(); drmm_add_final_kfree() combo.
  Needs to be a macro since we'll have to do some typeof trickery and
  casting to make this fully generic for all drivers that embed struct
  drm_device into their own thing.

- A lot of the simple drivers now have essentially just
  drm_dev_unplug(); drm_atomic_helper_shutdown(); as their
  $bus_driver->remove hook. We could create a devm_mode_config_reset
  which sets drm_atomic_helper_shutdown as it's cleanup action, and a
  devm_drm_dev_register with drm_dev_unplug as it's cleanup action,
  and simple drivers wouldn't have a need for a ->remove function at
  all, and we could delete them.

- For more complicated drivers we need drmm_ versions of a _lot_ more
  things. All the userspace visible objects (crtc, plane, encoder,
  crtc), anything else hanging of those (maybe a drmm_get_edid, at
  least for panels and other built-in stuff).

Also some more thoughts on why we're not reusing devm_ with maybe a
fake struct device embedded into the drm_device (we can't use the
kdev, since that's in each drm_minor).

- Code review gets extremely tricky, since every time you see a devm_
  you need to carefully check whether the fake device (with the
  drm_device lifetim) or the real device (with the lifetim of the
  underlying physical device and driver binding) are used. That's not
  going to help at all, and we have enormous amounts of drivers who
  use devm_ where they really shouldn't. Having different types makes
  sure the compiler type checks this for us and ensures correctness.

- The set of functions are very much non-overlapping. E.g.
  devm_ioremap makes total sense, drmm_ioremap has the wrong lifetime,
  since hw resources need to be cleaned out at driver unbind and wont
  outlive that like a drm_device. Similar, but other way round for
  drmm_connector_init (which is the only correct version, devm_ for
  drm_connector is just buggy). Simply not having the wrong version
  again prevents bugs.

Finally I guess this opens a huge todo for all the drivers. I'm
semi-tempted to do a tree-wide s/devm_kzalloc/drmm_kzalloc/ since most
likely that'll fix an enormous amount of bugs and most likely not
cause any issues at all (aside from maybe holding onto memory slightly
too long).

v2:
- Doc improvements from Laurent.
- Also add kerneldoc for the new drmm_add_action_or_reset.

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/gpu/drm-internals.rst |  6 +++
 drivers/gpu/drm/drm_drv.c           | 18 +++++++--
 drivers/gpu/drm/drm_managed.c       | 61 +++++++++++++++++++++++++++++
 include/drm/drm_drv.h               |  4 ++
 include/drm/drm_managed.h           | 58 +++++++++++++++++++++++++++
 5 files changed, 144 insertions(+), 3 deletions(-)

diff --git a/Documentation/gpu/drm-internals.rst b/Documentation/gpu/drm-internals.rst
index a6b6145fda78..12272b168580 100644
--- a/Documentation/gpu/drm-internals.rst
+++ b/Documentation/gpu/drm-internals.rst
@@ -138,6 +138,12 @@ Managed Resources
 .. kernel-doc:: drivers/gpu/drm/drm_managed.c
    :doc: managed resources
 
+.. kernel-doc:: drivers/gpu/drm/drm_managed.c
+   :export:
+
+.. kernel-doc:: include/drm/drm_managed.h
+   :internal:
+
 Bus-specific Device Registration and PCI Support
 ------------------------------------------------
 
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index bb326b9bcde0..f86b2bae0fa0 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -260,9 +260,15 @@ void drm_minor_release(struct drm_minor *minor)
  * any other resources allocated at device initialization and drop the driver's
  * reference to &drm_device using drm_dev_put().
  *
- * Note that the lifetime rules for &drm_device instance has still a lot of
- * historical baggage. Hence use the reference counting provided by
- * drm_dev_get() and drm_dev_put() only carefully.
+ * Note that any allocation or resource which is visible to userspace must be
+ * released only when the final drm_dev_put() is called, and not when the
+ * driver is unbound from the underlying physical struct &device. Best to use
+ * &drm_device managed resources with drmm_add_action(), drmm_kmalloc() and
+ * related functions.
+ *
+ * devres managed resources like devm_kmalloc() can only be used for resources
+ * directly related to the underlying hardware device, and only used in code
+ * paths fully protected by drm_dev_enter() and drm_dev_exit().
  *
  * Display driver example
  * ~~~~~~~~~~~~~~~~~~~~~~
@@ -606,6 +612,9 @@ static void drm_dev_init_release(struct drm_device *dev, void *res)
  * arbitrary offset, you must supply a &drm_driver.release callback and control
  * the finalization explicitly.
  *
+ * Note that drivers must call drmm_add_final_kfree() after this function has
+ * completed successfully.
+ *
  * RETURNS:
  * 0 on success, or error code on failure.
  */
@@ -707,6 +716,9 @@ static void devm_drm_dev_init_release(void *data)
  * Managed drm_dev_init(). The DRM device initialized with this function is
  * automatically put on driver detach using drm_dev_put().
  *
+ * Note that drivers must call drmm_add_final_kfree() after this function has
+ * completed successfully.
+ *
  * RETURNS:
  * 0 on success, or error code on failure.
  */
diff --git a/drivers/gpu/drm/drm_managed.c b/drivers/gpu/drm/drm_managed.c
index 6376be01bbc8..f040efea174e 100644
--- a/drivers/gpu/drm/drm_managed.c
+++ b/drivers/gpu/drm/drm_managed.c
@@ -20,7 +20,19 @@
  * Inspired by struct &device managed resources, but tied to the lifetime of
  * struct &drm_device, which can outlive the underlying physical device, usually
  * when userspace has some open files and other handles to resources still open.
+ *
+ * Release actions can be added with drmm_add_action(), memory allocations can
+ * be done directly with drmm_kmalloc() and the related functions. Everything
+ * will be released on the final drm_dev_put() in reverse order of how the
+ * release actions have been added and memory has been allocated since driver
+ * loading started with drm_dev_init().
+ *
+ * Note that release actions and managed memory can also be added and removed
+ * during the lifetime of the driver, all the functions are fully concurrent
+ * safe. But it is recommended to use managed resources only for resources that
+ * change rarely, if ever, during the lifetime of the &drm_device instance.
  */
+
 struct drmres_node {
 	struct list_head		entry;
 	drmres_release_t		release;
@@ -101,6 +113,18 @@ static void add_dr(struct drm_device *dev, struct drmres *dr)
 		       dr, dr->node.name, (unsigned long) dr->node.size);
 }
 
+/**
+ * drmm_add_final_kfree - add release action for the final kfree()
+ * @dev: DRM device
+ * @parent: pointer to the kmalloc allocation containing @dev
+ *
+ * Since the allocation containing the struct &drm_device must be allocated
+ * before it can be initialized with drm_dev_init() there's no way to allocate
+ * that memory with drmm_kmalloc(). To side-step this chicken-egg problem the
+ * pointer for this final kfree() must be specified by calling this function. It
+ * will be released in the final drm_dev_put() for @dev, after all other release
+ * actions installed through drmm_add_action() have been processed.
+ */
 void drmm_add_final_kfree(struct drm_device *dev, void *parent)
 {
 	WARN_ON(dev->managed.final_kfree);
@@ -148,6 +172,14 @@ int __drmm_add_action_or_reset(struct drm_device *dev,
 }
 EXPORT_SYMBOL(__drmm_add_action_or_reset);
 
+/**
+ * drmm_add_action - remove a managed release action to a &drm_device
+ * @dev: DRM device
+ * @action: release function
+ * @data: opaque pointer, passed to @action
+ *
+ * This function removes a release action added by drmm_add_action().
+ */
 void drmm_remove_action(struct drm_device *dev,
 			drmres_release_t action,
 			void *data)
@@ -176,6 +208,16 @@ void drmm_remove_action(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drmm_remove_action);
 
+/**
+ * drmm_kmalloc - &drm_device managed kmalloc()
+ * @dev: DRM device
+ * @size: size of the memory allocation
+ * @gfp: GFP allocation flags
+ *
+ * This is a &drm_device managed version of kmalloc(). The allocated memory is
+ * automatically freed on the final drm_dev_put(). Memory can also be freed
+ * before the final drm_dev_put() by calling drmm_kfree().
+ */
 void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
 {
 	struct drmres *dr;
@@ -191,6 +233,16 @@ void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
 }
 EXPORT_SYMBOL(drmm_kmalloc);
 
+/**
+ * drmm_kstrdup - &drm_device managed kstrdup()
+ * @dev: DRM device
+ * @s: 0-terminated string to be duplicated
+ * @gfp: GFP allocation flags
+ *
+ * This is a &drm_device managed version of kstrdup(). The allocated memory is
+ * automatically freed on the final drm_dev_put() and works exactly like a
+ * memory allocation obtained by drmm_kmalloc().
+ */
 char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp)
 {
 	size_t size;
@@ -207,6 +259,15 @@ char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp)
 }
 EXPORT_SYMBOL_GPL(drmm_kstrdup);
 
+/**
+ * drmm_kfree - &drm_device managed kfree()
+ * @dev: DRM device
+ * @data: memory allocation to be freed
+ *
+ * This is a &drm_device managed version of kfree() which can be used to
+ * release memory allocated through drmm_kmalloc() or any of its related
+ * functions before the final drm_dev_put() of @dev.
+ */
 void drmm_kfree(struct drm_device *dev, void *data)
 {
 	struct drmres *dr_match = NULL, *dr;
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index edee40e31e4b..0fd7fc6f024e 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -266,6 +266,10 @@ struct drm_driver {
 	 *
 	 * Optional callback for destroying device data after the final
 	 * reference is released, i.e. the device is being destroyed.
+	 *
+	 * This is deprecated, clean up all memory allocations associated with a
+	 * &drm_device using drmm_add_action(), drmm_kmalloc() and related
+	 * managed resources functions.
 	 */
 	void (*release) (struct drm_device *);
 
diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
index 1e6291407586..af152cfb173c 100644
--- a/include/drm/drm_managed.h
+++ b/include/drm/drm_managed.h
@@ -11,6 +11,19 @@ struct drm_device;
 
 typedef void (*drmres_release_t)(struct drm_device *dev, void *res);
 
+/**
+ * drmm_add_action - add a managed release action to a &drm_device
+ * @dev: DRM device
+ * @action: function which should be called when @dev is released
+ * @data: opaque pointer, passed to @action
+ *
+ * This function adds the @release action with optional parameter @data to the
+ * list of cleanup actions for @dev. The cleanup actions will be run in reverse
+ * order in the final drm_dev_put() call for @dev.
+ *
+ * A release action can be removed before @dev is released by calling
+ * drmm_remove_action() with matching parameters for @action and @data.
+ */
 #define drmm_add_action(dev, action, data) \
 	__drmm_add_action(dev, action, data, #action)
 
@@ -18,6 +31,15 @@ int __must_check __drmm_add_action(struct drm_device *dev,
 				   drmres_release_t action,
 				   void *data, const char *name);
 
+/**
+ * drmm_add_action_or_reset - add a managed release action to a &drm_device
+ * @dev: DRM device
+ * @action: function which should be called when @dev is released
+ * @data: opaque pointer, passed to @action
+ *
+ * Similar to drmm_add_action(), with the only difference that upon failure
+ * @action is directly called for any cleanup work necessary on failures.
+ */
 #define drmm_add_action_or_reset(dev, action, data) \
 	__drmm_add_action_or_reset(dev, action, data, #action)
 
@@ -32,10 +54,33 @@ void drmm_remove_action(struct drm_device *dev,
 void drmm_add_final_kfree(struct drm_device *dev, void *parent);
 
 void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp) __malloc;
+
+/**
+ * drmm_kzalloc - &drm_device managed kzalloc()
+ * @dev: DRM device
+ * @size: size of the memory allocation
+ * @gfp: GFP allocation flags
+ *
+ * This is a &drm_device managed version of kzalloc(). The allocated memory is
+ * automatically freed on the final drm_dev_put(). Memory can also be freed
+ * before the final drm_dev_put() by calling drmm_kfree().
+ */
 static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, gfp_t gfp)
 {
 	return drmm_kmalloc(dev, size, gfp | __GFP_ZERO);
 }
+
+/**
+ * drmm_kmalloc_array - &drm_device managed kmalloc_array()
+ * @dev: DRM device
+ * @n: number of array elements to allocate
+ * @size: size of array member
+ * @flags: GFP allocation flags
+ *
+ * This is a &drm_device managed version of kmalloc_array(). The allocated
+ * memory is automatically freed on the final drm_dev_put() and works exactly
+ * like a memory allocation obtained by drmm_kmalloc().
+ */
 static inline void *drmm_kmalloc_array(struct drm_device *dev,
 				       size_t n, size_t size, gfp_t flags)
 {
@@ -46,11 +91,24 @@ static inline void *drmm_kmalloc_array(struct drm_device *dev,
 
 	return drmm_kmalloc(dev, bytes, flags);
 }
+
+/**
+ * drmm_kcalloc - &drm_device managed kcalloc()
+ * @dev: DRM device
+ * @n: number of array elements to allocate
+ * @size: size of array member
+ * @flags: GFP allocation flags
+ *
+ * This is a &drm_device managed version of kcalloc(). The allocated memory is
+ * automatically freed on the final drm_dev_put() and works exactly like a
+ * memory allocation obtained by drmm_kmalloc().
+ */
 static inline void *drmm_kcalloc(struct drm_device *dev,
 				 size_t n, size_t size, gfp_t flags)
 {
 	return drmm_kmalloc_array(dev, n, size, flags | __GFP_ZERO);
 }
+
 char *drmm_kstrdup(struct drm_device *dev, const char *s, gfp_t gfp);
 
 void drmm_kfree(struct drm_device *dev, void *data);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
