Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE3DA9B8B1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0323E10E867;
	Thu, 24 Apr 2025 20:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADlUkZS8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124DC10E86D;
 Thu, 24 Apr 2025 20:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524936; x=1777060936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Oot853SeuljxjTCqgBD5lvjijL5E5pFSVZDVLPSJS0=;
 b=ADlUkZS8cg7c8wqoHF+bwGSFE7ju6Vd8bEVKtsrfpm+wWsz9Y7L2zvkC
 FkgAnSdbneuSRSUk3Ag7KVonMnG5bMAvlxLSNMbZh2zd5KZIN5VDEJrCB
 bK8KcmEIIyr+JcEKMjNYj9mdyVJd3F8qn4BKqdehYyWU/sGxuQkMX5ohr
 zTt3pWhNTnswz0Oh1ZoygScY/liOEbXqfNKgr7YFFe3Qoz0yokFDhpwXr
 I8whUVg8DQzx688jtiMRUV1FQq8apsPmRM2Uql/M+aJalscKB1SiUbC09
 GGGyPalk38hC2Nd8ZPqsCkxnew4F2VwxHlYFLx3Ze+k4T14bk7d7gfu20 w==;
X-CSE-ConnectionGUID: KbJ6IruRSBCjPD0cTCj81g==
X-CSE-MsgGUID: IDsAbj1TTfKu49SM8LCBqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543423"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543423"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:15 -0700
X-CSE-ConnectionGUID: ewKCch64QNeDVGNz1+q8zQ==
X-CSE-MsgGUID: ky6JospPSOqrgIhlcRDTHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="137788369"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 05/10] drm/i915/hdcp: rename HDCP GSC context alloc/free
 functions
Date: Thu, 24 Apr 2025 23:01:37 +0300
Message-Id: <c6e25686ed20b5fdea9a59faf6a64a7312a075b0.1745524803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745524803.git.jani.nikula@intel.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Name the functions intel_hdcp_gsc_context_alloc() and
intel_hdcp_gsc_context_free() for consistency.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c         | 4 ++--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h         | 4 ++--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c | 4 ++--
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c              | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 3e1dc2f7310c..efcd3a4b41ed 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -90,7 +90,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	return err;
 }
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hdcp_gsc_context *gsc_context;
@@ -114,7 +114,7 @@ struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *d
 	return gsc_context;
 }
 
-void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context *gsc_context)
+void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context)
 {
 	if (!gsc_context)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index 31080df80097..227c00a837d8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -19,7 +19,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_out_len);
 bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *display);
-void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context *gsc_context);
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display);
+void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 94ca571ab481..92143226858c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -643,7 +643,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 	mutex_lock(&display->hdcp.hdcp_mutex);
 
-	gsc_context = intel_hdcp_gsc_hdcp2_init(display);
+	gsc_context = intel_hdcp_gsc_context_alloc(display);
 	if (IS_ERR(gsc_context)) {
 		ret = PTR_ERR(gsc_context);
 		kfree(arbiter);
@@ -663,7 +663,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 void intel_hdcp_gsc_fini(struct intel_display *display)
 {
-	intel_hdcp_gsc_free_message(display->hdcp.gsc_context);
+	intel_hdcp_gsc_context_free(display->hdcp.gsc_context);
 	display->hdcp.gsc_context = NULL;
 	kfree(display->hdcp.arbiter);
 	display->hdcp.arbiter = NULL;
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 68fac12ac666..16458c1ddbe6 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -99,7 +99,7 @@ static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 	return ret;
 }
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display)
 {
 	struct intel_hdcp_gsc_context *gsc_context;
 	int ret;
@@ -122,7 +122,7 @@ struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct intel_display *d
 	return gsc_context;
 }
 
-void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context *gsc_context)
+void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context)
 {
 	if (!gsc_context)
 		return;
-- 
2.39.5

