Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2F3903BA2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2C410E60A;
	Tue, 11 Jun 2024 12:13:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnWdp780";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5AE10E60E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107996; x=1749643996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DceoiE3aWS+bTBFQJnvIser6h0RTa0PiUXSai0aiQD8=;
 b=OnWdp780s/NzCRJoUJF9SOUUD46Rt2NpRPGjNJL5tPmSL2PWVDxU0tsD
 yuxRK8zjqCrJNJ3G/5puBhmSGW389So0dpSS4qWZBniRcBFUqJIpLXHNm
 kj70g+xiCGN/zisikoGw5OTNf+VUPbkZxKiWIsMQe7RApOYVbHpjg0xe5
 wZbiskSZwtQKzsky8EHKmunz/d3HfF0V4038auacDj1vvVLigyghhjxsT
 /FjBu/mqIehK3xACGpDe+g2rpQaKH/jboAVNPmr/vmU+V7RRuuLYiS3OV
 oo1MNv41gh1lD0KpTUkiBm7qufycXpQ9/MpAmiR+Ek1Ud7BTDytLZkuDm Q==;
X-CSE-ConnectionGUID: Z683ictlR5mXqPh4hGEn1g==
X-CSE-MsgGUID: 45P4RCR2TBCrJJtoPAl9sQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296843"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296843"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:16 -0700
X-CSE-ConnectionGUID: +YmlEff+QQKHaCNXRlFbZQ==
X-CSE-MsgGUID: EwCUa/COT7+ttU3TaBPE+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118719"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 08/18] drm/i915/psr: 128b/132b Panel Replay is not
 supported on eDP
Date: Tue, 11 Jun 2024 15:12:33 +0300
Message-Id: <20240611121243.3366990-9-jouni.hogander@intel.com>
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

Take into account that 128b/132b Panel Replay is not supported on eDP.

Bspec: 68920

v2:
  - make crtc_state as const
  - add debug message to print out why Panel Replay is not possible

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9a076148c490..5e5b2564aac7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1493,11 +1493,28 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+static bool
+_panel_replay_compute_config(struct intel_dp *intel_dp,
+			     const struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!intel_dp_is_edp(intel_dp))
+		return true;
+
+	/* Remaining checks are for eDP only */
+
+	/* 128b/132b Panel Replay is not supported on eDP */
+	if (intel_dp_is_uhbr(crtc_state)) {
+		drm_dbg_kms(&i915->drm,
+			    "Panel Replay is not supported with 128b/132b\n");
+		return false;
+	}
+
 	return true;
 }
 
@@ -1536,7 +1553,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
+								    crtc_state,
+								    conn_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

