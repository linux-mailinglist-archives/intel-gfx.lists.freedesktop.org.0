Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DA15B3044
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 09:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CDB010EC39;
	Fri,  9 Sep 2022 07:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB96F10EC08;
 Fri,  9 Sep 2022 07:35:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id D9E0ECE2198;
 Fri,  9 Sep 2022 07:34:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB388C43470;
 Fri,  9 Sep 2022 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1662708894;
 bh=gejt86lUyGIDnA+q6y0E3JKuvo9K5OmmWNjSytOMdIE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dP9YgSywSkSOcy2EBaSJFzC7geQprjRrfUifnUtfrseBITOzNA7HqOAIq0H3icftO
 rM0fiqvjN8lkIusGrDgxKrhCOrYpUN8MgcfsRzIoD97ejQMcqq/ehbjXWG85CJ4NpM
 Kytww8s2ZWUk6EJxMRYa+npuDpIkpswdxLd01fCnfhtVObJ/ZMPf+sBq25VEcJRUJn
 2aDCSF/3fTNDrPBDHBrKZgox5ZPgkBFmomUo1OxzIs9j0RyQTumnwL9irdjDKYzO4u
 dVi7EivWEiSof1rZ4BL6XBt9TcIeaehXzg5lJ0fdC/VKXmy3VHneNKP/Jlu4Z8Jb2i
 twBqziniyPYDA==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oWYXF-007FFv-Q0;
 Fri, 09 Sep 2022 09:34:45 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Fri,  9 Sep 2022 09:34:12 +0200
Message-Id: <1aa5b1ca3a42338356fa60bf22508eb952d64ab9.1662708705.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <cover.1662708705.git.mchehab@kernel.org>
References: <cover.1662708705.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/37] drm/i915: gem: fix some Kernel-doc
 issues
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are several trivial issueson kernel-doc markups at gem:

	drivers/gpu/drm/i915/gem/i915_gem_create.c:146: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
	drivers/gpu/drm/i915/gem/i915_gem_create.c:217: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
	drivers/gpu/drm/i915/gem/i915_gem_create.c:401: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
	drivers/gpu/drm/i915/gem/i915_gem_domain.c:116: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
	drivers/gpu/drm/i915/gem/i915_gem_domain.c:177: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
	drivers/gpu/drm/i915/gem/i915_gem_domain.c:262: warning: expecting prototype for Changes the cache(). Prototype was for i915_gem_object_set_cache_level() instead
	drivers/gpu/drm/i915/gem/i915_gem_domain.c:456: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
	drivers/gpu/drm/i915/gem/i915_gem_domain.c:500: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
	drivers/gpu/drm/i915/gem/i915_gem_object.h:110: warning: Function parameter or member 'file' not described in 'i915_gem_object_lookup_rcu'
	drivers/gpu/drm/i915/gem/i915_gem_object.h:110: warning: Excess function parameter 'filp' description in 'i915_gem_object_lookup_rcu'
	drivers/gpu/drm/i915/gem/i915_gem_region.h:35: warning: Function parameter or member 'process_obj' not described in 'i915_gem_apply_to_region_ops'
	drivers/gpu/drm/i915/gem/i915_gem_wait.c:130: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst

Caused by:
	- lack of function name at the kernel-doc markup;
	- renamed parameters.

Address them.

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v3 00/37] at: https://lore.kernel.org/all/cover.1662708705.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/gem/i915_gem_create.c |  8 +++++---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 17 +++++++++++------
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c   |  2 +-
 4 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 33673fe7ee0a..8cb2eb092031 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -143,7 +143,8 @@ __i915_gem_object_create_user_ext(struct drm_i915_private *i915, u64 size,
 }
 
 /**
- * Creates a new object using the same path as DRM_I915_GEM_CREATE_EXT
+ * __i915_gem_object_create_user - Creates a new object using the same path
+ *	as DRM_I915_GEM_CREATE_EXT
  * @i915: i915 private
  * @size: size of the buffer, in bytes
  * @placements: possible placement regions, in priority order
@@ -214,7 +215,7 @@ i915_gem_dumb_create(struct drm_file *file,
 }
 
 /**
- * Creates a new mm object and returns a handle to it.
+ * i915_gem_create_ioctl - Creates a new mm object and returns a handle to it.
  * @dev: drm device pointer
  * @data: ioctl data blob
  * @file: drm file pointer
@@ -398,7 +399,8 @@ static const i915_user_extension_fn create_extensions[] = {
 };
 
 /**
- * Creates a new mm object and returns a handle to it.
+ * i915_gem_create_ext_ioctl - Creates a new mm object and returns a handle
+ *	to it.
  * @dev: drm device pointer
  * @data: ioctl data blob
  * @file: drm file pointer
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index d44a152ce680..fd4f10765208 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -113,7 +113,8 @@ void i915_gem_object_flush_if_display_locked(struct drm_i915_gem_object *obj)
 }
 
 /**
- * Moves a single object to the WC read, and possibly write domain.
+ * i915_gem_object_set_to_wc_domain - Moves a single object to the WC read,
+ *	and possibly write domain.
  * @obj: object to act on
  * @write: ask for write access or read only
  *
@@ -174,7 +175,8 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
 }
 
 /**
- * Moves a single object to the GTT read, and possibly write domain.
+ * i915_gem_object_set_to_gtt_domain - Moves a single object to the GTT read,
+ *	and possibly write domain.
  * @obj: object to act on
  * @write: ask for write access or read only
  *
@@ -243,7 +245,8 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
 }
 
 /**
- * Changes the cache-level of an object across all VMA.
+ * i915_gem_object_set_cache_level - Changes the cache-level of an object
+ *	across all VMA.
  * @obj: object to act on
  * @cache_level: new cache level to set for the object
  *
@@ -453,7 +456,8 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 }
 
 /**
- * Moves a single object to the CPU read, and possibly write domain.
+ * i915_gem_object_set_to_cpu_domain - Moves a single object to the CPU read,
+ *	and possibly write domain.
  * @obj: object to act on
  * @write: requesting write or read-only access
  *
@@ -497,8 +501,9 @@ i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write)
 }
 
 /**
- * Called when user space prepares to use an object with the CPU, either
- * through the mmap ioctl's mapping or a GTT mapping.
+ * i915_gem_set_domain_ioctl - Called when user space prepares to use an
+ *	object with the CPU, either through the mmap ioctl's mapping or a
+ *	GTT mapping.
  * @dev: drm device
  * @data: ioctl data blob
  * @file: drm file
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 7317d4102955..df4361e00eb9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -96,7 +96,7 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj);
 
 /**
  * i915_gem_object_lookup_rcu - look up a temporary GEM object from its handle
- * @filp: DRM file private date
+ * @file: DRM file private date
  * @handle: userspace handle
  *
  * Returns:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index e6e01c2a74a6..4a33ad2d122b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -161,7 +161,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 }
 
 /**
- * Waits for rendering to the object to be completed
+ * i915_gem_object_wait - Waits for rendering to the object to be completed
  * @obj: i915 gem object
  * @flags: how to wait (under a lock, for all rendering or just for writes etc)
  * @timeout: how long to wait
-- 
2.37.3

