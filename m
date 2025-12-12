Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D11B4CB8F19
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:14:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685D910E816;
	Fri, 12 Dec 2025 14:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OZqszWgg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80DBD10E816;
 Fri, 12 Dec 2025 14:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765548888; x=1797084888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=84O6EsTlm3OJdIr+11Yr+9xGMo6UMhE2oijDZ2Qm1HU=;
 b=OZqszWggIv0qaGT+oI/o3ZEhVQhXNNE7QpJgdk1n7qwhTn7AoyOUSePm
 BOzPfzaKSQoYWBHM03ejGMVVssoq5ini7aYQ4H/nER/ukm65hU1g9IhkK
 ai891/Gz1/ExdU/bW3DSTZK/ROAo73Suvo/izvk230FxyjCRa08DOTrGq
 hWToux5fd3dp2wKDYLq1L/qa2m+ytfzT0y9zHMwxEkZwSzV5kX9j5gsmU
 fmEMa6EC0cNompST6ZziHM52+0EqYqJAEdleHD+GAys8AaDSuUvo1nRqE
 v7V680jv1M8IEPeKZkWfBT8DcMsOjDW3ACLoNGYXn/M/lmTcfUBKRqnuJ A==;
X-CSE-ConnectionGUID: obhuNFjiRQOxczEJ/a+yJA==
X-CSE-MsgGUID: 0tD1e0MpQ2Cxz6ARM8y+cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71396210"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="71396210"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:48 -0800
X-CSE-ConnectionGUID: CJQZBM79RBS3k25wPBZeEQ==
X-CSE-MsgGUID: ZoQJ7kxjS5G6EmUsrIEkAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196708901"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 3/6] drm/intel: sort parent interface struct definitions and
 members
Date: Fri, 12 Dec 2025 16:14:06 +0200
Message-ID: <7f2e45d030e78928ebc8cf0a6d0fb47a3aa13c48.1765548786.git.jani.nikula@intel.com>
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

Sort the parent interface struct definitions and members to improve
clarity on where to add new stuff.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

'git show --color-moved' is easy to review
---
 include/drm/intel/display_parent_interface.h | 50 ++++++++++----------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 5d4b9dc837d9..55d4df714645 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -14,21 +14,7 @@ struct intel_panic;
 struct intel_stolen_node;
 struct ref_tracker;
 
-struct intel_display_rpm_interface {
-	struct ref_tracker *(*get)(const struct drm_device *drm);
-	struct ref_tracker *(*get_raw)(const struct drm_device *drm);
-	struct ref_tracker *(*get_if_in_use)(const struct drm_device *drm);
-	struct ref_tracker *(*get_noresume)(const struct drm_device *drm);
-
-	void (*put)(const struct drm_device *drm, struct ref_tracker *wakeref);
-	void (*put_raw)(const struct drm_device *drm, struct ref_tracker *wakeref);
-	void (*put_unchecked)(const struct drm_device *drm);
-
-	bool (*suspended)(const struct drm_device *drm);
-	void (*assert_held)(const struct drm_device *drm);
-	void (*assert_block)(const struct drm_device *drm);
-	void (*assert_unblock)(const struct drm_device *drm);
-};
+/* Keep struct definitions sorted */
 
 struct intel_display_hdcp_interface {
 	ssize_t (*gsc_msg_send)(struct intel_hdcp_gsc_context *gsc_context,
@@ -50,6 +36,22 @@ struct intel_display_panic_interface {
 	void (*finish)(struct intel_panic *panic);
 };
 
+struct intel_display_rpm_interface {
+	struct ref_tracker *(*get)(const struct drm_device *drm);
+	struct ref_tracker *(*get_raw)(const struct drm_device *drm);
+	struct ref_tracker *(*get_if_in_use)(const struct drm_device *drm);
+	struct ref_tracker *(*get_noresume)(const struct drm_device *drm);
+
+	void (*put)(const struct drm_device *drm, struct ref_tracker *wakeref);
+	void (*put_raw)(const struct drm_device *drm, struct ref_tracker *wakeref);
+	void (*put_unchecked)(const struct drm_device *drm);
+
+	bool (*suspended)(const struct drm_device *drm);
+	void (*assert_held)(const struct drm_device *drm);
+	void (*assert_block)(const struct drm_device *drm);
+	void (*assert_unblock)(const struct drm_device *drm);
+};
+
 struct intel_display_rps_interface {
 	void (*boost_if_not_started)(struct dma_fence *fence);
 	void (*mark_interactive)(struct drm_device *drm, bool interactive);
@@ -88,15 +90,15 @@ struct intel_display_parent_interface {
 	/** @hdcp: HDCP GSC interface */
 	const struct intel_display_hdcp_interface *hdcp;
 
-	/** @rpm: Runtime PM functions */
-	const struct intel_display_rpm_interface *rpm;
-
 	/** @irq: IRQ interface */
 	const struct intel_display_irq_interface *irq;
 
 	/** @panic: Panic interface */
 	const struct intel_display_panic_interface *panic;
 
+	/** @rpm: Runtime PM functions */
+	const struct intel_display_rpm_interface *rpm;
+
 	/** @rps: RPS interface. Optional. */
 	const struct intel_display_rps_interface *rps;
 
@@ -105,17 +107,17 @@ struct intel_display_parent_interface {
 
 	/* Generic independent functions */
 	struct {
-		/** @vgpu_active: Is vGPU active? Optional. */
-		bool (*vgpu_active)(struct drm_device *drm);
-
-		/** @has_fenced_regions: Support legacy fencing? Optional. */
-		bool (*has_fenced_regions)(struct drm_device *drm);
-
 		/** @fence_priority_display: Set display priority. Optional. */
 		void (*fence_priority_display)(struct dma_fence *fence);
 
 		/** @has_auxccs: Are AuxCCS formats supported by the parent. Optional. */
 		bool (*has_auxccs)(struct drm_device *drm);
+
+		/** @has_fenced_regions: Support legacy fencing? Optional. */
+		bool (*has_fenced_regions)(struct drm_device *drm);
+
+		/** @vgpu_active: Is vGPU active? Optional. */
+		bool (*vgpu_active)(struct drm_device *drm);
 	};
 };
 
-- 
2.47.3

