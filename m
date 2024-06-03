Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE628D833C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AF810E3A4;
	Mon,  3 Jun 2024 13:01:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mv0eYvCb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE15210E3A1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419683; x=1748955683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PXaPHnU9B+jsrx7K34OVm49EiIPI5tdIN8HTnMKnzH0=;
 b=mv0eYvCbb7Y0Z8UQiGpkgN1EdNIpu4WtTtQ5EBCfLpD0KthpKrEnSgZK
 17uAKue3xV5kWxLjgJSjSX4mDe5UM23jZcRKDEzrSOnQFW3hcOZBCOH+3
 denP7fxMC5GrAd5btwPPhKYktP3key7/E8o2vtkBb9SIq4oDOgBBL64SJ
 hfOW3p1GZcGoBlI4D8rkuCOrw7JYfITgW3lzuT3iqiLq7nUtKBSP+2KGB
 X7FbepxOCkputa1E7d4s6VGcPLWJ4DlH4XlIHiQW67p/asl0oL16uz9V6
 DPXmWPEQtzoFg/kzjW2pMvqu9CCzTiAUhCe04k4NxMkEJ1VTdBC/NdRlJ w==;
X-CSE-ConnectionGUID: KY2u0RlDRLiOX5tnGS5yMg==
X-CSE-MsgGUID: w1XHDbNJRtKseO6XQj9TSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774499"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774499"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:23 -0700
X-CSE-ConnectionGUID: xcNIK25yQvqeXCit7aru0Q==
X-CSE-MsgGUID: hES8weM8RUmgv8kYratxwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291926"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 15/19] drm/i915/psr: HW will not allow PR on eDP when HDCP
 enabled
Date: Mon,  3 Jun 2024 16:00:39 +0300
Message-Id: <20240603130043.2615716-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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
index 03e650b24050..60b0725a98c3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1478,8 +1478,13 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 
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
 
@@ -1492,6 +1497,14 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
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
 
@@ -1531,7 +1544,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-								    crtc_state);
+								    crtc_state,
+								    conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

