Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C13248D8339
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEBE10E3A8;
	Mon,  3 Jun 2024 13:01:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQUW1pLu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36B410E3A1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419681; x=1748955681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ibePYYNO2X9cgxqW06vSg+6CWGOdkVEfFBqtdydm6OU=;
 b=dQUW1pLusCM6lmkRhU33f/XSWKr1e+qfggNuyPb2Kjxr1VHEFMlhXa3O
 gGPsHPLYws8yXmISlI2TgI7jzmsjtqSV1mZIQiyyuoM5/dMQJAPLrbvpI
 4Ry/tx+bAn+9hyhe4scf48yV5shfDt6gVSQ5Ifl2NnuOR/TIqAZ/ertoJ
 0aJrm/JyZwNSYXRZE7ToqXa2wOFnhhuK2OB3+z1UXeCuCPIHbDSjn38hK
 fUp/PADoxsKKDKj/5zmFdEsEZy87KO/QBmjBlYEbeRrZGMGOuc3/uCGdu
 +65j4KvYnOxp7RznNKaqoSaZRkWMI2BaAnEdfO4OxjYloqAgVT9A0OQ9b A==;
X-CSE-ConnectionGUID: f6GTfvwoTUeKoBu9yFButg==
X-CSE-MsgGUID: b2AIYgtoQ4WqiG2QABzhQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774497"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774497"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:21 -0700
X-CSE-ConnectionGUID: +iqTBLJtQSCyXCT0NvjMZw==
X-CSE-MsgGUID: zb47MTIQSayWHmCItOijeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291916"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 14/19] drm/i915/psr: 128b/132b Panel Replay is not
 supported on eDP
Date: Mon,  3 Jun 2024 16:00:38 +0300
Message-Id: <20240603130043.2615716-15-jouni.hogander@intel.com>
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

Take into account that 128b/132b Panel Replay is not supported on eDP.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a832bca89f1e..03e650b24050 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1476,11 +1476,22 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
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
 
@@ -1519,7 +1530,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
+								    crtc_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

