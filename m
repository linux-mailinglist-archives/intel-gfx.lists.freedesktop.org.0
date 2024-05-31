Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 897B58D5EE4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B0B10E74A;
	Fri, 31 May 2024 09:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwZxnDav";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9383610E506
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149042; x=1748685042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=icFY9mDDiFCzJ8Vtaux6jof2YksJvytT6b+E75rABbE=;
 b=TwZxnDavJSQJ7/GDmXB1fkwOHRxPg98HRzI9BhCPLAjRSvHhl4iXN6rn
 wzIj358M2sTwEzhK5r+le6OSC7Yj1svylPbLfURcKwe1/qgjQZQEJPYDf
 BWtNpyV0CJ3G8UaKG3SLlqD+C254/Pyx42hoZ0oQbNkXO9wo6EKaIDu0Q
 v+WbSnb/qfgDraW3Bz0L+7eQmo9XqOqoF1k3X++CE6FkGZ1ORG4vv2fKU
 1VTtOrIk09iwy0OOp7lmarnfCgtv+buuJIpO/i3ZokgWH1uZB7oyOMlWI
 2KFj+6c3JICnKv8BrMhUkOumIq4KdrilWbtlJ0YxEJCwQ++PZ4f5CY47E w==;
X-CSE-ConnectionGUID: aFUEA1b4S3i/j+wOluALQQ==
X-CSE-MsgGUID: 3/32ibMAQXqfD8NcpYay2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446585"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446585"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:41 -0700
X-CSE-ConnectionGUID: 2x8RaYBeR0GEexhTZZGVjQ==
X-CSE-MsgGUID: ARIR0lxOT6CWn+vA7TlLcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189275"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 15/19] drm/i915/psr: HW will not allow PR on eDP when HDCP
 enabled
Date: Fri, 31 May 2024 12:49:49 +0300
Message-Id: <20240531094953.1797508-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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
index 6f69bd6d4461..2bb25634b65d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1474,8 +1474,13 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 
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
 
@@ -1488,6 +1493,14 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
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
 
@@ -1527,7 +1540,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-								    crtc_state);
+								    crtc_state,
+								    conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

