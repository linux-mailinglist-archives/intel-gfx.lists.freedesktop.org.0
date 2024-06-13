Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9391B9068DD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2E910E9EC;
	Thu, 13 Jun 2024 09:33:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WogHz5LW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB4510E9EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271195; x=1749807195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uJvNctRhS9TXemBugTAInKM3X7vl+lIjSy3BbecwiDM=;
 b=WogHz5LW6de2pwFLm+KYK/IPutUC9bjgbliPLow++H9gv4yJLew8e/pM
 9N1i274HwpSvdOE30XaLj881GAK6sbP0GT5G6EDvseW57cdV6vqkKJX8X
 nFDTkIx/sEaLxg3EgJjtI/Jvpbu8V1IzyfNimW1fGMpbegyXsKYL/9It1
 AAiM017n/nndpntBgCt6rWhpXdd1Mt3GHeTq457yGOLAHYBbBfYFIomnN
 eHXVtUU2fSQapZ0S/tLgowWFIvYt7aqcrVnjnnxr7Y79GnC7EBhtW33Fd
 jpBcjQBcV61Sj1BUrXuv7QS0m4lhBj/Hbi0747jBx/G+ghyrO7fOpv8Lg w==;
X-CSE-ConnectionGUID: KsA30AYOSrGJ+IWMjPsdlg==
X-CSE-MsgGUID: kBETvCB/QLet5rSt3W87lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802515"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802515"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:15 -0700
X-CSE-ConnectionGUID: CcSlXIU0ROGIF249JouYug==
X-CSE-MsgGUID: D4o0Vq/eQJO/67/yk8aC8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523441"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 14/20] drm/i915/psr: 128b/132b Panel Replay is not
 supported on eDP
Date: Thu, 13 Jun 2024 12:32:33 +0300
Message-Id: <20240613093239.1293629-15-jouni.hogander@intel.com>
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

Take into account that 128b/132b Panel Replay is not supported on eDP.

Bspec: 68920

v2:
  - make crtc_state as const
  - add debug message to print out why Panel Replay is not possible

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 946db0e60966..4ea9eb4a0c2b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1514,7 +1514,10 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+static bool
+_panel_replay_compute_config(struct intel_dp *intel_dp,
+			     const struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
@@ -1526,6 +1529,18 @@ static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
 		return false;
 	}
 
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
 
@@ -1564,7 +1579,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
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

