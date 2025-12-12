Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EC9CB8F22
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB46210E8B2;
	Fri, 12 Dec 2025 14:15:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nI7eRUCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FED10E7FD;
 Fri, 12 Dec 2025 14:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765548917; x=1797084917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ai6YlABT7Yv+fS08b+rzNFpT/htpvredoG9eUjcTviA=;
 b=nI7eRUCMMUylNk3fICu03wzn2yQUNsYgAliGjRNXXRJwp9t2s6bqhbSB
 jivbb+D78RuKyagpV0UCD3u06jm2hW+01QsIqIXrAGev+1cIdm7YHYVHS
 +S0FkwXN/y+fv19AN4rxuZPwnGNxrp9QNDrq+HC8uEV2+kNyq7vJKrP+h
 jMFA6S5w/7Ai1HmEZBKsZW8Wu83oCYLxaIQbt3QUkVQclB7kZ9G9Ir+fG
 MChXhY7h5uaMsEcDeWtLPADiqhBJuDLtBNUtY1JSIKEspOzibGvTs58UJ
 /OODx/r5ISpdvBUQUhB/chEJ7fkwwICIaC13p4LjISUQjNZ3ITanuTZlx Q==;
X-CSE-ConnectionGUID: +f5mL5GpSTqw/3riipbVsQ==
X-CSE-MsgGUID: 2ozoxz0USbuUDS0XImoRVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="66722111"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="66722111"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:15:16 -0800
X-CSE-ConnectionGUID: oroJoUP4TZSsFYnrY/nXXQ==
X-CSE-MsgGUID: PxDqxiKzRjSg6FM6yx/xiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196850631"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:15:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 6/6] drm/i915/display: group and sort the parent interface
 wrappers better
Date: Fri, 12 Dec 2025 16:14:09 +0200
Message-ID: <b61af1d33d0448cd904cccccb2714f0d07d85b07.1765548786.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765548786.git.jani.nikula@intel.com>
References: <cover.1765548786.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Aligning with the parent interface struct definitions, also group and
sort the parent interface wrappers to improve clarity on where to add
new stuff.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_parent.c | 45 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_parent.h | 13 +++---
 2 files changed, 33 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index d1c2194767e7..9b1a84a439e9 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -23,6 +23,7 @@
 #include "intel_display_core.h"
 #include "intel_parent.h"
 
+/* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
 				       void *msg_in, size_t msg_in_len,
@@ -47,31 +48,34 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
 	display->parent->hdcp->gsc_context_free(gsc_context);
 }
 
-struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
+/* irq */
+bool intel_parent_irq_enabled(struct intel_display *display)
 {
-	return display->parent->panic->alloc();
+	return display->parent->irq->enabled(display->drm);
 }
 
-int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb)
+void intel_parent_irq_synchronize(struct intel_display *display)
 {
-	return display->parent->panic->setup(panic, sb);
+	display->parent->irq->synchronize(display->drm);
 }
 
-void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
+/* panic */
+struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
 {
-	display->parent->panic->finish(panic);
+	return display->parent->panic->alloc();
 }
 
-bool intel_parent_irq_enabled(struct intel_display *display)
+int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb)
 {
-	return display->parent->irq->enabled(display->drm);
+	return display->parent->panic->setup(panic, sb);
 }
 
-void intel_parent_irq_synchronize(struct intel_display *display)
+void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
 {
-	display->parent->irq->synchronize(display->drm);
+	display->parent->panic->finish(panic);
 }
 
+/* rps */
 bool intel_parent_rps_available(struct intel_display *display)
 {
 	return display->parent->rps;
@@ -95,6 +99,7 @@ void intel_parent_rps_ilk_irq_handler(struct intel_display *display)
 		display->parent->rps->ilk_irq_handler(display->drm);
 }
 
+/* stolen */
 int intel_parent_stolen_insert_node_in_range(struct intel_display *display,
 					     struct intel_stolen_node *node, u64 size,
 					     unsigned int align, u64 start, u64 end)
@@ -169,24 +174,24 @@ void intel_parent_stolen_node_free(struct intel_display *display, const struct i
 	display->parent->stolen->node_free(node);
 }
 
-
-bool intel_parent_vgpu_active(struct intel_display *display)
+/* generic */
+void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence)
 {
-	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
+	if (display->parent->fence_priority_display)
+		display->parent->fence_priority_display(fence);
 }
 
-bool intel_parent_has_fenced_regions(struct intel_display *display)
+bool intel_parent_has_auxccs(struct intel_display *display)
 {
-	return display->parent->has_fenced_regions && display->parent->has_fenced_regions(display->drm);
+	return display->parent->has_auxccs && display->parent->has_auxccs(display->drm);
 }
 
-void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence)
+bool intel_parent_has_fenced_regions(struct intel_display *display)
 {
-	if (display->parent->fence_priority_display)
-		display->parent->fence_priority_display(fence);
+	return display->parent->has_fenced_regions && display->parent->has_fenced_regions(display->drm);
 }
 
-bool intel_parent_has_auxccs(struct intel_display *display)
+bool intel_parent_vgpu_active(struct intel_display *display)
 {
-	return display->parent->has_auxccs && display->parent->has_auxccs(display->drm);
+	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 8cd811d14fb1..a2a631fba118 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -13,6 +13,7 @@ struct intel_hdcp_gsc_context;
 struct intel_panic;
 struct intel_stolen_node;
 
+/* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
 				       void *msg_in, size_t msg_in_len,
@@ -22,18 +23,22 @@ struct intel_hdcp_gsc_context *intel_parent_hdcp_gsc_context_alloc(struct intel_
 void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
 					struct intel_hdcp_gsc_context *gsc_context);
 
+/* irq */
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
 
+/* panic */
 struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
 int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb);
 void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
 
+/* rps */
 bool intel_parent_rps_available(struct intel_display *display);
 void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
 void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
 void intel_parent_rps_ilk_irq_handler(struct intel_display *display);
 
+/* stolen */
 int intel_parent_stolen_insert_node_in_range(struct intel_display *display,
 					     struct intel_stolen_node *node, u64 size,
 					     unsigned int align, u64 start, u64 end);
@@ -52,12 +57,10 @@ u64 intel_parent_stolen_node_size(struct intel_display *display, const struct in
 struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_display *display);
 void intel_parent_stolen_node_free(struct intel_display *display, const struct intel_stolen_node *node);
 
-bool intel_parent_vgpu_active(struct intel_display *display);
-
+/* generic */
+bool intel_parent_has_auxccs(struct intel_display *display);
 bool intel_parent_has_fenced_regions(struct intel_display *display);
-
+bool intel_parent_vgpu_active(struct intel_display *display);
 void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence);
 
-bool intel_parent_has_auxccs(struct intel_display *display);
-
 #endif /* __INTEL_PARENT_H__ */
-- 
2.47.3

