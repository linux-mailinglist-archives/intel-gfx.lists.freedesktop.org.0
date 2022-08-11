Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECED058FF02
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7470FB06C5;
	Thu, 11 Aug 2022 15:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD1839ADBB
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230906; x=1691766906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oMc1gaYZLfUompH4paniJraN1U5ch+cII1hYEmZm+wc=;
 b=GZcF+VmkVs2iNRmY+eYdMIG5hC4ivKkVSqFr3yKLyIJFJvVzqDV3K3uF
 wlYJTHoIncifqJt3tCTSkYIeBFIURzXw3GJ4lXSMAuCl26u5DvuILHjE5
 2geCQXNCUlnwxVzzIwI3h/VAoEnH3a1tE/2EcTQbH0OSqudHGLLT5gWct
 YJEGHIfDscZU0DwYpkCLFvbK+Azj0CkTkaaNs5cPbYXy3Ceb5NlXhTs4d
 p1IlpTI+1KMLCw+S5U+mq3/P3LJXgTijaRmwCImNMYPFqT2j5mzUxalmF
 w7NESZ6uEoFiVvYVQK3R9zddQc7E84+E38Ft7rRTnMkRQeXutwCW0evo2 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377663848"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="377663848"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="665412988"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:44 +0300
Message-Id: <a0532a68018e59df48ab7e0b5b89850a7726ec7c.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 33/39] drm/i915: move and group modeset_wq and
 flip_wq under display.wq
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 20 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  8 ++++++++
 drivers/gpu/drm/i915/i915_drv.h               |  5 -----
 3 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5bf062adf9ab..f80c7797176d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7812,12 +7812,12 @@ static int intel_atomic_commit(struct drm_device *dev,
 
 	i915_sw_fence_commit(&state->commit_ready);
 	if (nonblock && state->modeset) {
-		queue_work(dev_priv->modeset_wq, &state->base.commit_work);
+		queue_work(dev_priv->display.wq.modeset, &state->base.commit_work);
 	} else if (nonblock) {
-		queue_work(dev_priv->flip_wq, &state->base.commit_work);
+		queue_work(dev_priv->display.wq.flip, &state->base.commit_work);
 	} else {
 		if (state->modeset)
-			flush_workqueue(dev_priv->modeset_wq);
+			flush_workqueue(dev_priv->display.wq.modeset);
 		intel_atomic_commit_tail(state);
 	}
 
@@ -8681,9 +8681,9 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 
 	intel_dmc_ucode_init(i915);
 
-	i915->modeset_wq = alloc_ordered_workqueue("i915_modeset", 0);
-	i915->flip_wq = alloc_workqueue("i915_flip", WQ_HIGHPRI |
-					WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
+	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
+	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
+						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
 
 	intel_mode_config_init(i915);
 
@@ -8990,8 +8990,8 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	flush_workqueue(i915->flip_wq);
-	flush_workqueue(i915->modeset_wq);
+	flush_workqueue(i915->display.wq.flip);
+	flush_workqueue(i915->display.wq.modeset);
 
 	flush_work(&i915->atomic_helper.free_work);
 	drm_WARN_ON(&i915->drm, !llist_empty(&i915->atomic_helper.free_list));
@@ -9032,8 +9032,8 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_gmbus_teardown(i915);
 
-	destroy_workqueue(i915->flip_wq);
-	destroy_workqueue(i915->modeset_wq);
+	destroy_workqueue(i915->display.wq.flip);
+	destroy_workqueue(i915->display.wq.modeset);
 
 	intel_fbc_cleanup(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index f942d156026a..da76b3eecbf5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -378,6 +378,14 @@ struct intel_display {
 		u32 block_time_us;
 	} sagv;
 
+	struct {
+		/* ordered wq for modesets */
+		struct workqueue_struct *modeset;
+
+		/* unbound hipri wq for page flips/plane updates */
+		struct workqueue_struct *flip;
+	} wq;
+
 	/* Grouping using named structs. Keep sorted. */
 	struct intel_audio audio;
 	struct intel_dmc dmc;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 71ed89e91e88..f9170b45663f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -288,11 +288,6 @@ struct drm_i915_private {
 	 */
 	struct workqueue_struct *wq;
 
-	/* ordered wq for modesets */
-	struct workqueue_struct *modeset_wq;
-	/* unbound hipri wq for page flips/plane updates */
-	struct workqueue_struct *flip_wq;
-
 	/* PCH chipset type */
 	enum intel_pch pch_type;
 	unsigned short pch_id;
-- 
2.34.1

