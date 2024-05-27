Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F498CF9EF
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7FEC10E201;
	Mon, 27 May 2024 07:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AwB2krKy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55BF10F332
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794581; x=1748330581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gk/qT+jZypFXibN4EEgzODRvnBTaOjbDHIoZYnmiAM8=;
 b=AwB2krKySVOj6/uFMy6d6ipcKInwyarA/3IV7JT6jI1jTeaVYjTv12va
 SQlF6Sy4qQdcy0MtHEaDPuWS6B5t7ry3XJgA9iN16v/5KziKQGM7rq99o
 b4vKe5/EeZn4hwLnjvtbAkMQlahp2gD/jLsSAIbTmge2kNmD5YBMD11/i
 XPa5M6hBUKRWqzKnSSKc0eGJ4GzVPTyWq4K88lPraxOdfu6nxp79YEsj2
 W4fhyG9MZBKRY7Y2ETJwk50GKWp0NiflmyIK18dpVfop1S0th3Gpsej4J
 5ZBAj3HH3L/4ysgT37iP4dB2fv+1fBI4Z8mDbyn9kvPb+Aiwg/EvwVnCe g==;
X-CSE-ConnectionGUID: Pwh8DzEJRt2YOZQypqS8dQ==
X-CSE-MsgGUID: idLrowQQRTeQcWUIFi0rtQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930468"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930468"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:00 -0700
X-CSE-ConnectionGUID: vh9yYD1HR7WQcNhEZW8FAg==
X-CSE-MsgGUID: dOWxJZvQSfq0GeJ2+5sepA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753467"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 14/20] drm/i915/psr: Add Panel Replay compute_config helper
Date: Mon, 27 May 2024 10:22:14 +0300
Message-Id: <20240527072220.3294769-15-jouni.hogander@intel.com>
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

We are about to add more checks for Panel Replay. Due to that it makes
sense to add now Panel Replay compute config helper.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7c92a63188bc..7cc7cdddc8b3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1709,6 +1709,14 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+{
+	if (!CAN_PANEL_REPLAY(intel_dp))
+		return false;
+
+	return true;
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
@@ -1744,8 +1752,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	if (CAN_PANEL_REPLAY(intel_dp))
-		crtc_state->has_panel_replay = true;
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

