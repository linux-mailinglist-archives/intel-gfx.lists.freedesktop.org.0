Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JpKH9arHmq3IwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E64F62C320
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4DDE10EE57;
	Tue,  2 Jun 2026 10:09:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y4ywPF5E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D628C10EE56;
 Tue,  2 Jun 2026 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780394962; x=1811930962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rTqNAc2E65o6uJcszV06GMnt+N7x5FQl44itPzsIOMM=;
 b=Y4ywPF5EpQIUVQaJkSwK+yQBGn9DmuxTlmvhDco3ffqhytwQIzYz/Pw3
 jmsz+z3y24Bv9dMl1RCfpaZkGJ/H61qTNcMmrXknbvhvCLLTp5ffamnk6
 WFfPV1OxFvTUjWfxkUMCdtO9LqND3sK9imKVnF01BYKQL02EHPW+80L6e
 XKjgP15F1rCmyER4QPvFke3qwpawm4FcH7qHI0nrvGsTdBrhhp3zauDsG
 7vRRcpPIyEFvZ00VbcOnj5jWNdwKz3lMAYJQAN92GqyRtfn9WyqPpNLOB
 E72FqayEd1Fxt/NHjW5ydzpapWALytUSz+dTwaegfZLd0i4dfJLYYBHEX A==;
X-CSE-ConnectionGUID: LQxavIJhQBmru+Uhx8RzSQ==
X-CSE-MsgGUID: V43QC/miTHendN3aShXEPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="103836868"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="103836868"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:22 -0700
X-CSE-ConnectionGUID: RXRHu1/gQseH6z/sV2DLVw==
X-CSE-MsgGUID: SIfNmd4qR2mohyNKx09S9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="248149130"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:09:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH 2/6] drm/i915/panic: squash i915_panic.c into i915_gem_panic.c
Date: Tue,  2 Jun 2026 13:09:05 +0300
Message-ID: <4c294d6402e003040b934d94a0b14bd42704e21f.1780394867.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780394867.git.jani.nikula@intel.com>
References: <cover.1780394867.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 2E64F62C320
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Having two small files for panic handling is a bit too much. Merge
i915_panic.c into i915_gem_panic.c. This is just code movement, cleanups
will follow.

Cc: Jocelyn Falempe <jfalempe@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile             |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_panic.c | 33 ++++++++++++++++++---
 drivers/gpu/drm/i915/gem/i915_gem_panic.h |  9 +-----
 drivers/gpu/drm/i915/i915_driver.c        |  2 +-
 drivers/gpu/drm/i915/i915_panic.c         | 35 -----------------------
 drivers/gpu/drm/i915/i915_panic.h         |  9 ------
 6 files changed, 32 insertions(+), 59 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/i915_panic.c
 delete mode 100644 drivers/gpu/drm/i915/i915_panic.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 091b6647c383..1fd7a1a5f315 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -83,8 +83,7 @@ i915-y += \
 	i915_fb_pin.o \
 	i915_hdcp_gsc.o \
 	i915_initial_plane.o \
-	i915_overlay.o \
-	i915_panic.o
+	i915_overlay.o
 
 # "Graphics Technology" (aka we talk to the gpu)
 gt-y += \
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.c b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
index 7407c5668c71..14ea45dcdd8f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_panic.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.c
@@ -3,6 +3,7 @@
 
 #include <drm/drm_cache.h>
 #include <drm/drm_panic.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_fb.h"
 #include "display/intel_display_types.h"
@@ -83,7 +84,7 @@ static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb,
 	}
 }
 
-struct intel_panic *i915_gem_object_alloc_panic(void)
+static struct intel_panic *i915_gem_object_alloc_panic(void)
 {
 	struct intel_panic *panic;
 
@@ -97,8 +98,8 @@ struct intel_panic *i915_gem_object_alloc_panic(void)
  * Use current vaddr if it exists, or setup a list of pages.
  * pfn is not supported yet.
  */
-int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-				struct drm_gem_object *_obj, bool panic_tiling)
+static int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
+				       struct drm_gem_object *_obj, bool panic_tiling)
 {
 	enum i915_map_type has_type;
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
@@ -126,10 +127,34 @@ int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_bu
 	return -EOPNOTSUPP;
 }
 
-void i915_gem_object_panic_finish(struct intel_panic *panic)
+static void i915_gem_object_panic_finish(struct intel_panic *panic)
 {
 	i915_panic_kunmap(panic);
 	panic->page = -1;
 	kfree(panic->pages);
 	panic->pages = NULL;
 }
+
+static struct intel_panic *intel_panic_alloc(void)
+{
+	return i915_gem_object_alloc_panic();
+}
+
+static int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
+{
+	struct intel_framebuffer *fb = sb->private;
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
+
+	return i915_gem_object_panic_setup(panic, sb, obj, fb->panic_tiling);
+}
+
+static void intel_panic_finish(struct intel_panic *panic)
+{
+	return i915_gem_object_panic_finish(panic);
+}
+
+const struct intel_display_panic_interface i915_display_panic_interface = {
+	.alloc = intel_panic_alloc,
+	.setup = intel_panic_setup,
+	.finish = intel_panic_finish,
+};
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_panic.h b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
index 91ab6722d37c..82c3aca6f1f3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_panic.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_panic.h
@@ -6,13 +6,6 @@
 
 #include <linux/types.h>
 
-struct drm_gem_object;
-struct drm_scanout_buffer;
-struct intel_panic;
-
-struct intel_panic *i915_gem_object_alloc_panic(void);
-int i915_gem_object_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb,
-				struct drm_gem_object *_obj, bool panic_tiling);
-void i915_gem_object_panic_finish(struct intel_panic *panic);
+extern const struct intel_display_panic_interface i915_display_panic_interface;
 
 #endif /* __I915_GEM_PANIC_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 60d5e06675ab..8294899a52d4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -80,6 +80,7 @@
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object_frontbuffer.h"
+#include "gem/i915_gem_panic.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
@@ -112,7 +113,6 @@
 #include "i915_irq.h"
 #include "i915_memcpy.h"
 #include "i915_overlay.h"
-#include "i915_panic.h"
 #include "i915_perf.h"
 #include "i915_query.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/i915_panic.c b/drivers/gpu/drm/i915/i915_panic.c
deleted file mode 100644
index 412db72797d8..000000000000
--- a/drivers/gpu/drm/i915/i915_panic.c
+++ /dev/null
@@ -1,35 +0,0 @@
-// SPDX-License-Identifier: MIT
-/* Copyright © 2025 Intel Corporation */
-
-#include <drm/drm_panic.h>
-#include <drm/intel/display_parent_interface.h>
-
-#include "display/intel_display_types.h"
-#include "display/intel_fb.h"
-#include "gem/i915_gem_panic.h"
-
-#include "i915_panic.h"
-
-static struct intel_panic *intel_panic_alloc(void)
-{
-	return i915_gem_object_alloc_panic();
-}
-
-static int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb)
-{
-	struct intel_framebuffer *fb = sb->private;
-	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
-
-	return i915_gem_object_panic_setup(panic, sb, obj, fb->panic_tiling);
-}
-
-static void intel_panic_finish(struct intel_panic *panic)
-{
-	return i915_gem_object_panic_finish(panic);
-}
-
-const struct intel_display_panic_interface i915_display_panic_interface = {
-	.alloc = intel_panic_alloc,
-	.setup = intel_panic_setup,
-	.finish = intel_panic_finish,
-};
diff --git a/drivers/gpu/drm/i915/i915_panic.h b/drivers/gpu/drm/i915/i915_panic.h
deleted file mode 100644
index 743d8c861c42..000000000000
--- a/drivers/gpu/drm/i915/i915_panic.h
+++ /dev/null
@@ -1,9 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/* Copyright © 2025 Intel Corporation */
-
-#ifndef __I915_PANIC_H__
-#define __I915_PANIC_H__
-
-extern const struct intel_display_panic_interface i915_display_panic_interface;
-
-#endif /* __I915_PANIC_H__ */
-- 
2.47.3

