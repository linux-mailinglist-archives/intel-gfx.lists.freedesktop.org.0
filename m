Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DE8A9B8B5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1E310E873;
	Thu, 24 Apr 2025 20:02:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n1J7Ddpl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A3910E872;
 Thu, 24 Apr 2025 20:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524951; x=1777060951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qPuvzBkK0t77eoAFZqoBRMQhKKmMwduKD2oJOP/ItF8=;
 b=n1J7DdplAUpJXLTImi0pAOJ/WTjuOHIGnHqWlz8ISpnnWDWwWZfY0f5t
 oWSVBqDYq6990QPIE325IL1GJOfwf+sKnDcjOrpDx7AEnYsp+iPLzPkM8
 pAbTEz0eKxE7pmwtdXUKuvm8yYvgAbtsimnGdzKdh71G6NCDouFH9Wj3G
 pzK1w+cYsT7WfgAWaHCXpSQLvraPb17h3sbo0sJqHpSegPEgzNvo4qpe3
 dvm1F+IEHBf21l06WOD2PcXuLUXtcU1+gzcBMYlXkg9e51ql0cUA9O5vz
 W0QHp5I7pKtin9ZxY0uO9hUcyyCrzfhI+BargdUcN48pJSEO/3T7h4/6X Q==;
X-CSE-ConnectionGUID: 1ZDndsUaS8aOwzrcw7lYaA==
X-CSE-MsgGUID: Hw/5LIsHTw6y3yeexNOErA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543445"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543445"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:31 -0700
X-CSE-ConnectionGUID: U2NxykhrR8abPRJx5tiWmQ==
X-CSE-MsgGUID: ZF6GvTqKTPC64Hv5M0fLdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="133637185"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 08/10] drm/i915/hdcp: simplify HDCP GSC firmware usage
 selection
Date: Thu, 24 Apr 2025 23:01:40 +0300
Message-Id: <a1d031bfbff7073e576dfe8d3d3d5a28d7bb2c15.1745524803.git.jani.nikula@intel.com>
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

Just localize the GSC decision inside intel_hdcp.c, and deduplicate the
conditions.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  5 -----
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  1 -
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |  5 -----
 4 files changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4857685c4020..39bcf8f3d810 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -32,6 +32,8 @@
 #include "intel_hdcp_shim.h"
 #include "intel_pcode.h"
 
+#define USE_HDCP_GSC(__display)		(DISPLAY_VER(__display) >= 14)
+
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
@@ -251,7 +253,7 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 		return false;
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
-	if (intel_hdcp_gsc_cs_required(display)) {
+	if (USE_HDCP_GSC(display)) {
 		if (!intel_hdcp_gsc_check_status(display))
 			return false;
 	}
@@ -2340,7 +2342,7 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 
 static bool is_hdcp2_supported(struct intel_display *display)
 {
-	if (intel_hdcp_gsc_cs_required(display))
+	if (USE_HDCP_GSC(display))
 		return true;
 
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
@@ -2364,7 +2366,7 @@ void intel_hdcp_component_init(struct intel_display *display)
 
 	display->hdcp.comp_added = true;
 	mutex_unlock(&display->hdcp.hdcp_mutex);
-	if (intel_hdcp_gsc_cs_required(display))
+	if (USE_HDCP_GSC(display))
 		ret = intel_hdcp_gsc_init(display);
 	else
 		ret = component_add_typed(display->drm->dev, &i915_hdcp_ops,
@@ -2639,7 +2641,7 @@ void intel_hdcp_component_fini(struct intel_display *display)
 	display->hdcp.comp_added = false;
 	mutex_unlock(&display->hdcp.hdcp_mutex);
 
-	if (intel_hdcp_gsc_cs_required(display))
+	if (USE_HDCP_GSC(display))
 		intel_hdcp_gsc_fini(display);
 	else
 		component_del(display->drm->dev, &i915_hdcp_ops);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 1ea2c7204444..4194ef77f7c3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -19,11 +19,6 @@ struct intel_hdcp_gsc_context {
 	void *hdcp_cmd_out;
 };
 
-bool intel_hdcp_gsc_cs_required(struct intel_display *display)
-{
-	return DISPLAY_VER(display) >= 14;
-}
-
 bool intel_hdcp_gsc_check_status(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index fbef56db54f2..e963c1fcc39e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -12,7 +12,6 @@
 struct intel_display;
 struct intel_hdcp_gsc_context;
 
-bool intel_hdcp_gsc_cs_required(struct intel_display *display);
 ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
 				void *msg_in, size_t msg_in_len,
 				void *msg_out, size_t msg_out_len);
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 7712d53627f0..078916072c10 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -30,11 +30,6 @@ struct intel_hdcp_gsc_context {
 
 #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
 
-bool intel_hdcp_gsc_cs_required(struct intel_display *display)
-{
-	return DISPLAY_VER(display) >= 14;
-}
-
 bool intel_hdcp_gsc_check_status(struct intel_display *display)
 {
 	struct xe_device *xe = to_xe_device(display->drm);
-- 
2.39.5

