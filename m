Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0974BFA30
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 15:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A1E10E7CA;
	Tue, 22 Feb 2022 14:05:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E6610E62F
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 14:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645538706; x=1677074706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dGZHLCZQ7dJ5hyTCWaH7uTgc4ZhmwDiDuemoZTDmkuw=;
 b=dwf1vr/OSOTmK6uYvt5DrPe/oPxR8Ffd+QCBw8RpVYiLtvnT5kYw1V3s
 KlxqN2/ZFf30xzUNZiLum4FZIznyUmSwS0E2JaMrKrgkCEKLlL7Ge0hZo
 HPTiFJy+7IOU8+JUcY6BUmMDy0IPlvinvesbonVSaELt6YH0O8MmRxerf
 Qy+bl3ut8JtMdH4PX4/QxeCQ3OcIBnTYCNaF1SfkVLR1qf48ZNtPgbMzA
 q85t29hv+fgZAGtk1qYfNLn0jQeF99tYOlwa/x9FxUzQXboncuhJcrsmE
 2+wGLEMjjAXbkcCKl59ge4NJpR+YOhSO5fKe2mEyWKyduXcbWvGscNwEC Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="338142785"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="338142785"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="532237387"
Received: from sjgillin-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.218.63])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:42 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 14:04:21 +0000
Message-Id: <20220222140422.1121163-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: Count engine instances per uabi
 class
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
Cc: Rob Clark <robdclark@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

This will be useful to have at hand in a following patch.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 11 ++++++-----
 drivers/gpu/drm/i915/i915_drv.h             |  1 +
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 9ce85a845105..5dd559253078 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -190,7 +190,6 @@ static void add_legacy_ring(struct legacy_ring *ring,
 void intel_engines_driver_register(struct drm_i915_private *i915)
 {
 	struct legacy_ring ring = {};
-	u8 uabi_instances[4] = {};
 	struct list_head *it, *next;
 	struct rb_node **p, *prev;
 	LIST_HEAD(engines);
@@ -211,8 +210,10 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 		GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
 		engine->uabi_class = uabi_classes[engine->class];
 
-		GEM_BUG_ON(engine->uabi_class >= ARRAY_SIZE(uabi_instances));
-		engine->uabi_instance = uabi_instances[engine->uabi_class]++;
+		GEM_BUG_ON(engine->uabi_class >=
+			   ARRAY_SIZE(i915->engine_uabi_class_count));
+		engine->uabi_instance =
+			i915->engine_uabi_class_count[engine->uabi_class]++;
 
 		/* Replace the internal name with the final user facing name */
 		memcpy(old, engine->name, sizeof(engine->name));
@@ -242,8 +243,8 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 		int class, inst;
 		int errors = 0;
 
-		for (class = 0; class < ARRAY_SIZE(uabi_instances); class++) {
-			for (inst = 0; inst < uabi_instances[class]; inst++) {
+		for (class = 0; class < ARRAY_SIZE(i915->engine_uabi_class_count); class++) {
+			for (inst = 0; inst < i915->engine_uabi_class_count[class]; inst++) {
 				engine = intel_engine_lookup_user(i915,
 								  class, inst);
 				if (!engine) {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b9d38276801d..68d8a751008b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -533,6 +533,7 @@ struct drm_i915_private {
 	struct pci_dev *bridge_dev;
 
 	struct rb_root uabi_engines;
+	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
 
 	struct resource mch_res;
 
-- 
2.32.0

