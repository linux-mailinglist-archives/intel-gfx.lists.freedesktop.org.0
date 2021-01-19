Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF272FB65F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 14:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82656E2EF;
	Tue, 19 Jan 2021 13:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2498B6E2EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 13:31:19 +0000 (UTC)
IronPort-SDR: z0SaWe3S2dcThxS8p6CdXPgn+CEoD+QMXBBBLaqvUtvNowbLqq1AjWb3D+whj5sqjwH7OPtyY3
 5WtCmGZ29qAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="166589696"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="166589696"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 05:31:19 -0800
IronPort-SDR: bXvwdEEz3245NwCpdSwhZPVrmIhfFCmzLs2BzFJAU1Nz+k97g0RqneGWogrAkv05BZ5bNIuBsW
 aG0b0ZXGwbAA==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="383934368"
Received: from aboji-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.18.244])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 05:31:18 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 13:31:05 +0000
Message-Id: <20210119133106.66294-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210119133106.66294-1-matthew.auld@intel.com>
References: <20210119133106.66294-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: move i915_map_type into
 i915_gem_object_types.h
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks like it belongs there anyway, otherwise we have to include the
entirety of i915_gem_object.h just to get at the enum.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h       | 8 --------
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 8 ++++++++
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index be14486f63a7..a21714db2e4c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -384,14 +384,6 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
 void i915_gem_object_truncate(struct drm_i915_gem_object *obj);
 void i915_gem_object_writeback(struct drm_i915_gem_object *obj);
 
-enum i915_map_type {
-	I915_MAP_WB = 0,
-	I915_MAP_WC,
-#define I915_MAP_OVERRIDE BIT(31)
-	I915_MAP_FORCE_WB = I915_MAP_WB | I915_MAP_OVERRIDE,
-	I915_MAP_FORCE_WC = I915_MAP_WC | I915_MAP_OVERRIDE,
-};
-
 /**
  * i915_gem_object_pin_map - return a contiguous mapping of the entire object
  * @obj: the object to map into kernel address space
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index e2d9b7e1e152..ab55b7bb9ca6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -67,6 +67,14 @@ struct drm_i915_gem_object_ops {
 	const char *name; /* friendly name for debug, e.g. lockdep classes */
 };
 
+enum i915_map_type {
+	I915_MAP_WB = 0,
+	I915_MAP_WC,
+#define I915_MAP_OVERRIDE BIT(31)
+	I915_MAP_FORCE_WB = I915_MAP_WB | I915_MAP_OVERRIDE,
+	I915_MAP_FORCE_WC = I915_MAP_WC | I915_MAP_OVERRIDE,
+};
+
 enum i915_mmap_type {
 	I915_MMAP_TYPE_GTT = 0,
 	I915_MMAP_TYPE_WC,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
