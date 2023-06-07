Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6106172570E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 10:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B6810E460;
	Wed,  7 Jun 2023 08:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7734D10E460
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 08:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686125577; x=1717661577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lOXZj40CsKPG6CdTvjlBYtZ4Z+DNH6AN83ExxkXEQ7k=;
 b=YxP4WJFqKyVzgoR5iNtASB1IwVnzw2sKadHvGWqhW6kPtSMkpvLqDU3k
 5PKtYibJzuKXN30dbg8g7OFuC6Gy+sPNBZAZOIx0AKu0v4oA+a/A229oW
 Zb9VocSQkpBNbJYfi66czn6o3RFeRRNU5P5qIhKslFiPHhaWJhjJfEEKS
 S5SbbgaZBoX5PKKVA2vOkLILKIzldnBx2KL0A+1AmikW7kVnhB+H5UcGl
 r62ilZbcx0+X8b/x8xtuuftcTbM6J80qvr46iSXz3G45QDng9Ouplwr/i
 6AtBFZJGmPrVer7+lih2j8AqTUmg+Cwjw1L1CJSvzG6Z/tGRerITt267z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="336544435"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="336544435"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="956122233"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="956122233"
Received: from tneuman-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.210.241])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jun 2023 11:12:27 +0300
Message-Id: <20230607081227.96992-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607081227.96992-1-jouni.hogander@intel.com>
References: <20230607081227.96992-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915: Add function to clear scanout
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently frontbuffer tracking code is directly iterating over object vmas
and clearing scanout flags for them. Add function to clear scanout flag for
vmas and use it from frontbuffer tracking code.

v2: describe function parameter.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index c66ff2157f6a..c6be96206ee5 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1629,6 +1629,26 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	return err;
 }
 
+/**
+ * i915_ggtt_clear_scanout - Clear scanout flag for all objects ggtt vmas
+ * @obj: i915 GEM object
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

