Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E578903BA1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CB9110E611;
	Tue, 11 Jun 2024 12:13:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TfbC9wHD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFFE10E610
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107998; x=1749643998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TSEKn56pTWw40/0Aiwn+/yp+w/AVj89hibyax/xM5+k=;
 b=TfbC9wHDRwBmIGuY2YQAUPMIMPDFAMT2zagpl30z8zbbKhSDMW4KnY2a
 +xkjat+qcCkhTeOPaC8DI0ZhVQVdfc7IcA2m3RzQkOvD5VT/t8gUAxIkh
 Tv1HMFdVioChIcRmC6AbVGAlAvf2LbQ6hcA77bbsYc9VIYw58uO2HRTYR
 BZOvO0BL8igLVEs6h3UDNVBY3HY6MM7Az3bhK4xe6DEpmbiUVzm2WAgeS
 5602Q0AOmd5qj72EslStv12a+DLG1VXs8PndUyLGjqE/QyB1jwtloZiap
 pn30ktu7iqKTBPgJYfbxafh+iKriRXloz3hOK44sTNpc66DaMEtigjCFa A==;
X-CSE-ConnectionGUID: jdw/9pM6QZKi+jp5Rd3PrQ==
X-CSE-MsgGUID: e6s8h0++S2+9Cv8ahNOyfw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296847"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296847"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:18 -0700
X-CSE-ConnectionGUID: sS+3OdOPSgOlpuafxFZSdQ==
X-CSE-MsgGUID: ELnGqYJrRHadGw5n78FL7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118728"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 09/18] drm/i915/psr: HW will not allow PR on eDP when HDCP
 enabled
Date: Tue, 11 Jun 2024 15:12:34 +0300
Message-Id: <20240611121243.3366990-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Take into account in Panel Replay compute config that  HW will not allow PR
on eDP when HDCP enabled.

v2: add debug message to print out why Panel Replay is not possible

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5e5b2564aac7..3eceec72334d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1499,6 +1499,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 			     const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
@@ -1515,6 +1518,17 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	/* HW will not allow Panel Replay on eDP when HDCP enabled */
+	if (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
+	    (conn_state->content_protection ==
+	     DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
+	     DRM_MODE_CONTENT_PROTECTION_UNDESIRED)) {
+		drm_dbg_kms(&i915->drm,
+			    "Panel Replay is not supported with HDCP\n");
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.34.1

