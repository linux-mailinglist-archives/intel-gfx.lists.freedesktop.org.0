Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8892878FAF0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 11:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3627010E75A;
	Fri,  1 Sep 2023 09:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9A010E750
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 09:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693560916; x=1725096916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WMagsIeKqfrKlv37PjcHNSoEPuyJ0Bxf6lAAWnzTWVA=;
 b=Aq0KtmTC3Lv0KdW2ZZn7oSEBPHui4gQ/YaNI0C0dmeIk06tm/yz9GWXY
 sEVvh5/TuVl7Zps9S7H/NiR5ysQ7QxJaxewoSqB7xSgmqlyeuS4XPMFkh
 VMA8OCtw6tU0VOHkmIi3yQ626YykG09hyvsDeGMnlXWzOTQ8zVjOvCmFg
 F22ofMytcigYmPASCoVRr9q7cpAj8jKQuhBqx0Tk2t+/088CC3lD7z2id
 BeTkOJV5bUjNBSM6tBzdHHXi7qv8yvenraptllRuRtyHqKwp5dAwt0d3x
 8O2hISivk+7fFw74je2BRKdXuHr8guwaZiB/f81ohl4pT0ivqhmaICF6s g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="378906684"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="378906684"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="689709251"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="689709251"
Received: from haslam-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.58.201])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:35:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 12:34:59 +0300
Message-Id: <20230901093500.3463046-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901093500.3463046-1-jouni.hogander@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915: Add new frontbuffer tracking
 interface to queue flush
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

We want to wait dma fences in dirtyfb ioctl. As we don't want to make
dirtyfb ioctl as blocking call we need to use
dma_fence_add_callback. Callback used for dma_fence_add_callback is
called from atomic context. Due to this we need to add a new
frontbuffer tracking interface to queue flush.

v3:
 - Check schedule work success rather than work being pending
 - Init flush work when frontbuffer struct is initialized
v2: Check if flush work is already pending

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 28 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 +++
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 54ddb69eca66..d5540c739404 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -203,6 +203,33 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		frontbuffer_flush(i915, frontbuffer_bits, origin);
 }
 
+static void intel_frontbuffer_flush_work(struct work_struct *work)
+{
+	struct intel_frontbuffer *front =
+		container_of(work, struct intel_frontbuffer, flush_work);
+
+	i915_gem_object_flush_if_display(front->obj);
+	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
+	intel_frontbuffer_put(front);
+}
+
+/**
+ * intel_frontbuffer_queue_flush - queue flushing frontbuffer object
+ * @front: GEM object to flush
+ *
+ * This function is targeted for our dirty callback for queueing flush when
+ * dma fence is signales
+ */
+void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front)
+{
+	if (!front)
+		return;
+
+	kref_get(&front->ref);
+	if (!schedule_work(&front->flush_work))
+		intel_frontbuffer_put(front);
+}
+
 static int frontbuffer_active(struct i915_active *ref)
 {
 	struct intel_frontbuffer *front =
@@ -262,6 +289,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 			 frontbuffer_active,
 			 frontbuffer_retire,
 			 I915_ACTIVE_RETIRE_SLEEPS);
+	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
 
 	spin_lock(&i915->display.fb_tracking.lock);
 	cur = i915_gem_object_set_frontbuffer(obj, front);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 72d89be3284b..abb51e8bb920 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -46,6 +46,8 @@ struct intel_frontbuffer {
 	struct i915_active write;
 	struct drm_i915_gem_object *obj;
 	struct rcu_head rcu;
+
+	struct work_struct flush_work;
 };
 
 /*
@@ -135,6 +137,8 @@ static inline void intel_frontbuffer_flush(struct intel_frontbuffer *front,
 	__intel_fb_flush(front, origin, frontbuffer_bits);
 }
 
+void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front);
+
 void intel_frontbuffer_track(struct intel_frontbuffer *old,
 			     struct intel_frontbuffer *new,
 			     unsigned int frontbuffer_bits);
-- 
2.34.1

