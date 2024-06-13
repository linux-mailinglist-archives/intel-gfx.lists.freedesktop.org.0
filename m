Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19F29068DE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A726810E9D3;
	Thu, 13 Jun 2024 09:33:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N0yd7bm5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A6E10E9EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271196; x=1749807196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fOlej+dx3tgNHNzr5OpxkanlI3AACU8DjkDe3nlSskU=;
 b=N0yd7bm5OlPDd7kOhSHwN2yQm298S1XCl7OrbzTPCWlwmjLQW5rfRfL1
 1ZOfxKZeKMKR1TnshggmNfguDafpR3Iaxzql2qcz88yynBh5iWf0ySyg8
 nTHVA5qhlyfLVmWricIlvbIB9SwI6m2nWDbxoR+F/4qR1FbUJDp9EJe3B
 4yUV2Vt0lMJiVHFOS7IbfzNkL1EmE6V0rWI6AB1lzHk5WEn8rzukLpI06
 4DghZKNeTA5lNJq738bNMU8HrpVMY7uzsa2i03u7S6LT90EaQB9K9jHeb
 9CSKytqBv0cHeUHvGpDQlnKwSEMs5vDqHE5Krqt/CI1rV05zm8SWiR3mT w==;
X-CSE-ConnectionGUID: F/XPITAkRX+5s/Y49gUgew==
X-CSE-MsgGUID: o8EwX6zHRpuknO5QgEy44A==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802519"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802519"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:16 -0700
X-CSE-ConnectionGUID: 5C1yDUZHQfqQQaAEBoUFIA==
X-CSE-MsgGUID: DVLaqMKZRqWTvpBCFtJdTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523462"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 15/20] drm/i915/psr: HW will not allow PR on eDP when HDCP
 enabled
Date: Thu, 13 Jun 2024 12:32:34 +0300
Message-Id: <20240613093239.1293629-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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
index 4ea9eb4a0c2b..b31f4228f4a1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1520,6 +1520,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 			     const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
@@ -1541,6 +1544,17 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
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

