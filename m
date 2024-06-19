Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC8990E35B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681E210E8C2;
	Wed, 19 Jun 2024 06:22:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LCw3r2Yh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2471110E8A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778128; x=1750314128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BTwR6GMCSi3GJR+XUi15/kT/kkusXmK3AOgO47ZEMKE=;
 b=LCw3r2YhLKrCC33jcqHadWnv8SMsC1tgjkGqTx6gF6WzYRojmjPxcHUf
 hb26VIcMgdG9g9MUd3qPQNwVvmr8NVkc6BM8MpJhhZGPrF0UCN3ELrHfx
 OW8U24mXN++oM7hAf7IyYIEdqACFjLauyXIWaRsXZjp5bkix2lM5a82hY
 TnbBBAfVp2SDVPsEEzByjgVS/gHojQr/gTxPzHQaLGdPIVKGdjz4xkAFq
 j6fygjLPJFCM+qW2DME1hRQBxWgSqihzEJb8yq/Vdz548HukNvWwNHEHo
 GQybjigeSnHBcv3a/aWmRfKzas5HIL+YM//r3WO4jnLX8WxAhr1jz2wuf Q==;
X-CSE-ConnectionGUID: oiCRq6szTTSzdB/H06RxUg==
X-CSE-MsgGUID: Y4XB629zTDC37afxHllhZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377386"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377386"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:08 -0700
X-CSE-ConnectionGUID: vsNoLLLdTHupYmgONpXtHQ==
X-CSE-MsgGUID: /0pODq6OSdakHXunBBmBVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41905992"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 05/11] drm/i915/psr: 128b/132b Panel Replay is not
 supported on eDP
Date: Wed, 19 Jun 2024 09:21:25 +0300
Message-Id: <20240619062131.4021196-6-jouni.hogander@intel.com>
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
index 601b39204ef8..9ff54f08b6ab 100644
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

