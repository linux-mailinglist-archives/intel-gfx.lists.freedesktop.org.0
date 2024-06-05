Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB428FC90E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F6E10E729;
	Wed,  5 Jun 2024 10:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nx0D6LFC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D609910E729
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583218; x=1749119218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rmiPsgHBcxzuUphFiEUjwo3hbHTrURSwlpbh/x++Qt4=;
 b=Nx0D6LFCNK/E5Vyc1/O5wpX17G94JN/wiyxjh+HQu9x/NTobjmoW5NcE
 WrmF6Bgr5IrGw3xOHfbGy3jmQm5Jo79+wbfl1ydtfpfXvRlTLXpeSdXky
 NYwqEOzoFL9r/V2ECg3DtWTGkENa52gon+RIcW8qxM2HV+huoYSVY+sdH
 tTXOuGPQh00NSCUAyELNoM4c/MVmTIojMGcegvtvuA/akyetpKEku+w7n
 rHHO30IgdzuwKR7zgOH+O5+UDJwznNCAcLC670cHPR9H0BKCVjGY4ebsT
 iWEp9gLtTX+WnaDzr/TiLiqxvw8u2oTC/Pzz84o2WjD+GMjfbsOM2iM0u Q==;
X-CSE-ConnectionGUID: Zz3PKgcZRu+42ItLABg3NA==
X-CSE-MsgGUID: Jho57NPfRXqjxrQPMWj0qQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136159"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136159"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:57 -0700
X-CSE-ConnectionGUID: ObAICDcvQfmbe1u7rzSwCg==
X-CSE-MsgGUID: 0vb4xXznR+2XRHZ1aemiuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686311"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 22/26] drm/i915/psr: HW will not allow PR on eDP when HDCP
 enabled
Date: Wed,  5 Jun 2024 13:25:49 +0300
Message-Id: <20240605102553.187309-23-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 01bc5b76d398..3aec56d005ef 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1497,8 +1497,13 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 
 static bool
 _panel_replay_compute_config(struct intel_dp *intel_dp,
-			     const struct intel_crtc_state *crtc_state)
+			     const struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state)
 {
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
@@ -1511,6 +1516,14 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (intel_dp_is_uhbr(crtc_state))
 		return false;
 
+	/* HW will not allow Panel Replay on eDP when HDCP enabled */
+	if (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
+	    (conn_state->content_protection ==
+	     DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
+	     DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
+		return false;
+
 	return true;
 }
 
@@ -1550,7 +1563,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-								    crtc_state);
+								    crtc_state,
+								    conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

