Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F5290E35A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A256310E8C5;
	Wed, 19 Jun 2024 06:22:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NJV64WmE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBC510E8B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778130; x=1750314130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c0eZXsJ9mKE50SQ0XGbxe3oHC0ze8F39jOL7aJ86AOc=;
 b=NJV64WmEiy42MRMgGja4qpVaCzDXZEpH+sL8LoUdDk6M1aq+eDo/E8vv
 1RVBCF1v+0j7yMkglhbcTAjnwxCH7X+rogxPLGK553n0OsVaH9lD/fYdV
 ssJhz42tEnwJIC3sUE5QmeH9NH31BQQfqOTce55stPUyQP6m4/pvualuh
 qnFjaEJdHadyYrLnUJCMDMcUWVHMbbuYGEN4o3Gr/eQ+Q8sjycVotPUB2
 uZMVretEpAh52QoerH+8KkiGnjD/oCuFHLucN1Fyhd3jSOu2qUc1oAUsC
 GEdDW1cjnFT0GPGUIe6G7jQrh4QiAkyEZfNVb/iyOBOZfi22ouxDnBdFG A==;
X-CSE-ConnectionGUID: qmnPy2pwS4O2xEqWgZ5Xxw==
X-CSE-MsgGUID: DTg4tIMlR8m3pjISgVwPTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377387"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377387"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:10 -0700
X-CSE-ConnectionGUID: +SJnbF8vRl+PSBUaBBWbig==
X-CSE-MsgGUID: BW0IspdPQbWjcbPYM7jnNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41906000"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 06/11] drm/i915/psr: HW will not allow PR on eDP when HDCP
 enabled
Date: Wed, 19 Jun 2024 09:21:26 +0300
Message-Id: <20240619062131.4021196-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
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
index 9ff54f08b6ab..cd9755b7b550 100644
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

