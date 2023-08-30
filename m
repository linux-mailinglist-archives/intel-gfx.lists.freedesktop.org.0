Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7D178D3D3
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 10:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A530B10E4D3;
	Wed, 30 Aug 2023 08:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9356310E4D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693382672; x=1724918672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=adJv7wP/GaIqHZR4tV7erqc8xrHJ6g7eXwKOyGqRIDQ=;
 b=IK4m9u0mAP36JcY/Z/N47g3V2V2rQBU8o8XVIwIlseLCE/+Yl4fHvbwe
 GQdFJDJ/LPQaDGk5ZIzSxbJCUKR2dSl1mxGVwNRjO4+HXCAipjHbP4J8E
 xx0A6fuKovoQ1YfwBqnusgrAnL//Etb7ZcYsGiDz7Z6slxpMmecEGMNpD
 N+2iweFRTSaVfa2EI1RxLxuKvc1HHQ4B9LeW/krGSqK6ID3e+FI4otbTz
 8k5P9hpaCdirh98+alA/FpYi626B2B5yw+nB8KMDgrQC1YDkOC09T74xf
 /P+ksKH67CepicYOO0am1dBc97yyeWXcap0rF0WSugwZUqPg+b723DwkK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439526927"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="439526927"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882646733"
Received: from alorinti-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.33.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 11:02:18 +0300
Message-Id: <20230830080219.2529281-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230830080219.2529281-1-jouni.hogander@intel.com>
References: <20230830080219.2529281-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915: Add new frontbuffer tracking
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
index 22392f94b626..7a71cd082e48 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -202,6 +202,33 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
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
@@ -261,6 +288,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
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

