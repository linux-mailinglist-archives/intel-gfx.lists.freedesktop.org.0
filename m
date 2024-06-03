Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B37DC8D8336
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 954EA10E3A3;
	Mon,  3 Jun 2024 13:01:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VO+UQ4uS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A78110E39F
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419680; x=1748955680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eNWYqjp/7jT1bySE/PXXea5QzfuXO/KJi3RjNI/7p3M=;
 b=VO+UQ4uSd19KZYhzglTPG4RL5TTs+e5zw7wQqdsqOImrNdLB49ff4nmd
 gpfYnZvlqAcM0oxdcbwWtQrL6Linjbka+JuloTQiwlUuwXlrHhNpPwhqe
 ps97bfftotBf+0OtItIBqTa5nUidtqNg50Rytvnn8VD2AFSsctdq/f/ZY
 qL3TJppPL0xI/Zlj8d/6AbMqhj1OlNGIFri5AuBACKZ/CZHSFtW+7s4qP
 SguN0JXvWxJ6B2no6QTkhv6ErNfmRGnE0rITVUonu3iItVfT4k0O78vUR
 YtzpG/MsWXUNLsknB84wlHJubqBJW/0f75J5fcrbK6F09OJh1BoLaTL6o A==;
X-CSE-ConnectionGUID: RmDfZ19kQlmGCTdVIRV8tA==
X-CSE-MsgGUID: i7UL3M7vRuC5MSvGLRNK9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774489"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774489"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:19 -0700
X-CSE-ConnectionGUID: PvIYgyyqSP2Yab/dos5jhA==
X-CSE-MsgGUID: 9gkowqevRX+xm38MGHjPhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291905"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 13/19] drm/i915/psr: Add Panel Replay compute_config helper
Date: Mon,  3 Jun 2024 16:00:37 +0300
Message-Id: <20240603130043.2615716-14-jouni.hogander@intel.com>
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

We are about to add more checks for Panel Replay. Due to that it makes
sense to add now Panel Replay compute config helper.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 84555b21b74a..a832bca89f1e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1476,6 +1476,14 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
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
@@ -1511,8 +1519,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	if (CAN_PANEL_REPLAY(intel_dp))
-		crtc_state->has_panel_replay = true;
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

