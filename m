Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2679E8CF9FA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545B010F88A;
	Mon, 27 May 2024 07:23:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ezJHp+5u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B230010E201
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794583; x=1748330583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=czmrTICOUbwIYRUuMcwjyjbeKc/mKDbAEj8+80BErjI=;
 b=ezJHp+5ubVdI98mED5x4D+Drw3mcggNYlSHVCdwT8DYaJBTrkHwkLHdK
 9CiEEQ52KlKj1jPoYmbzM/wO5+c4ubxKeIDdX5QPDS2X8ryoATHTJS8I4
 tsbWorv5m1mg8wlPzxng65pSkvbEh2H040BkBwZFLm70tbIlBPWixvAT2
 ue0B2V8a+eoV4+3NpahsMqESWPQkdnkb59T/vD0YOEG1QJ/XwC7aIM6z9
 vjuOv6co4jrbOa8eJcj/Zl2T8GKwOoPT1SHG0baG9tanstQQc08QOJ5qv
 W/B+jkgZNbG+s5eauKlg270SUaNK++9HhTCmDPhyCYMdgu0qHFw0DhGsH A==;
X-CSE-ConnectionGUID: yQUwNOHPSZ6p3gsHY1UCQA==
X-CSE-MsgGUID: Acsu+/z3TE6rrmv6pukQ8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930470"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930470"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:02 -0700
X-CSE-ConnectionGUID: wkcuwLLRR06OfA3h4+JTrQ==
X-CSE-MsgGUID: 7L8aV3jvRvWazKIyuESBMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753483"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 15/20] drm/i915/psr: 128b/132b Panel Replay is not
 supported on eDP
Date: Mon, 27 May 2024 10:22:15 +0300
Message-Id: <20240527072220.3294769-16-jouni.hogander@intel.com>
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

Take into account that 128b/132b Panel Replay is not supported on eDP.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7cc7cdddc8b3..ed2c23e8ce55 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1709,11 +1709,22 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+static bool
+_panel_replay_compute_config(struct intel_dp *intel_dp,
+			     const struct intel_crtc_state *crtc_state)
 {
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!intel_dp_is_edp(intel_dp))
+		return true;
+
+	/* Remaining checks are for eDP only */
+
+	/* 128b/132b Panel Replay is not supported on eDP */
+	if (intel_dp_is_uhbr(crtc_state))
+		return false;
+
 	return true;
 }
 
@@ -1752,7 +1763,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
+								    crtc_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

