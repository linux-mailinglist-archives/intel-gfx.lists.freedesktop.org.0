Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5638CF9F5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE76510F805;
	Mon, 27 May 2024 07:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZLRdjgCn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5691E10EDC6
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794585; x=1748330585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+bkpg4o3KVNXgWKNuRAwTNWCYeDj0oDn6v0pTwQjRR4=;
 b=ZLRdjgCndTMTD5sSuACbnyz/Uyn8WbPEHXStmZgHRQmYLYuiMTc1McEY
 IjPeNCYFGnw6KyRj94AK6AaAKRH3Ckwk6vm28Eh+4LrWl2q18iguQdP4y
 OlA7nG8ejmAWf3cAkXYpIJLUDh5MCMu1oNq6FBO6WYg5V5EaEiG1z7ELe
 HJdwE7EpXAl1f3jNDABTgcWca4MPFKhxmXVK25eF0o9TNntFvxCAWDYRa
 6Cst+vKXJNa9C3FtmE2Vs7ZDKMqYvlnDfFGTkX/vJaikwGtGoMvjdGKFI
 l53mfyzGDLz4o0SXg7/jY3M0Svs5A/zdz4hrj4+KyFfcYiCsCtTq8iBDD Q==;
X-CSE-ConnectionGUID: bHufzvYdSwqP6DNN8Am7lw==
X-CSE-MsgGUID: dG4Dbt6sQeehVOeI4XEcYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930476"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930476"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:04 -0700
X-CSE-ConnectionGUID: 6b010+LNQR+JwoJj1ejUkg==
X-CSE-MsgGUID: SidQEJc+Qv+Nu9eN7FKIPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753496"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 16/20] drm/i915/psr: HW will not allow PR on eDP when HDCP
 enabled
Date: Mon, 27 May 2024 10:22:16 +0300
Message-Id: <20240527072220.3294769-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527072220.3294769-1-jouni.hogander@intel.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
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
index ed2c23e8ce55..455ad13d9903 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1711,8 +1711,13 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 
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
 
@@ -1725,6 +1730,14 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
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
 
@@ -1764,7 +1777,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	}
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-								    crtc_state);
+								    crtc_state,
+								    conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

