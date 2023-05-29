Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5375B7144C0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 08:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C4910E228;
	Mon, 29 May 2023 06:27:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7881510E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 06:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685341669; x=1716877669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y8ScUX5z4K5YNiiGy5FL4QNLGmD0RjxZwehSm13sogc=;
 b=OvF2LNxdvA0OuWeYTx3FKzxo1mpYN+7oHkj6TKxPEssvkHwA0ANcr3hs
 JV5GYCRqmg/usnLfkjSUTmZliE7kOSASYB9ZiNPKDcLHM0bEo5YUF3lKr
 r58rkUNfjRjA39nuMRHLzFTqNfyHFYgNQz9IOF7YSGgJU2pgp7E3+HGnY
 0/yQDM70u6J2jkmREs66zLO6yGQ9PBdkIPXufrfizYJpJpJQGuneJIGj0
 WO7P/ZRMjJsORnwAkbtwSQXPVVuiBjs1dm2PiwhjpKyxryQ0MJZ/uHRy2
 9Q5XfsVUTluymYwduNb/+x2afaMmlWTXnztN+sSnwrpeZQW8NFZg+IQhm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418114393"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="418114393"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="739031530"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="739031530"
Received: from ilovin-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.33])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 09:27:23 +0300
Message-Id: <20230529062723.1928520-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230529062723.1928520-1-jouni.hogander@intel.com>
References: <20230529062723.1928520-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Add function to clear scanout
 flag for vmas
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

Currently frontbuffer tracking code is directly iterating over object vmas
and clearing scanout flags for them. Add function to clear scanout flag for
vmas and use it from frontbuffer tracking code.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  8 +-------
 drivers/gpu/drm/i915/i915_vma.c               | 20 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_vma.h               |  2 ++
 3 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 41ac65c98720..29ac068b8fa5 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -226,16 +226,10 @@ static void frontbuffer_release(struct kref *ref)
 	struct intel_frontbuffer *front =
 		container_of(ref, typeof(*front), ref);
 	struct drm_i915_gem_object *obj = front->obj;
-	struct i915_vma *vma;
 
 	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, atomic_read(&front->bits));
 
-	spin_lock(&obj->vma.lock);
-	for_each_ggtt_vma(vma, obj) {
-		i915_vma_clear_scanout(vma);
-		vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
-	}
-	spin_unlock(&obj->vma.lock);
+	i915_ggtt_clear_scanout(obj);
 
 	i915_gem_object_set_frontbuffer(obj, NULL);
 	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index c66ff2157f6a..863fccba9ccd 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1629,6 +1629,26 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	return err;
 }
 
+/**
+ * i915_ggtt_clear_scanout - Clear scanout flag for all objects ggtt vmas
+ *
+ * This function clears scanout flags for objects ggtt vmas. These flags are set
+ * when object is pinned for display use and this function to clear them all is
+ * targeted to be called by frontbuffer tracking code when the frontbuffer is
+ * about to be released.
+ */
+void i915_ggtt_clear_scanout(struct drm_i915_gem_object *obj)
+{
+	struct i915_vma *vma;
+
+	spin_lock(&obj->vma.lock);
+	for_each_ggtt_vma(vma, obj) {
+		i915_vma_clear_scanout(vma);
+		vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
+	}
+	spin_unlock(&obj->vma.lock);
+}
+
 static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 9a9729205d5b..eaa310864370 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -435,6 +435,8 @@ static inline void i915_vma_clear_scanout(struct i915_vma *vma)
 	clear_bit(I915_VMA_SCANOUT_BIT, __i915_vma_flags(vma));
 }
 
+void i915_ggtt_clear_scanout(struct drm_i915_gem_object *obj);
+
 #define for_each_until(cond) if (cond) break; else
 
 /**
-- 
2.34.1

