Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB83E8FC908
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15EAA10E690;
	Wed,  5 Jun 2024 10:26:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JqJhBGFt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8969F10E628
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583205; x=1749119205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uzl4xVKRZlO4LvieRY88b4LtpRhTv3r6d3ldncFtJis=;
 b=JqJhBGFtJ2V+WNYBUqKsA+mPTW7llgATP5qXo3O11MsTLevwaYWbyFKI
 EIXZunQSS2GTfC6ufaKMdwBdJ8Qt/JKTBrpGchgrXQrYAPEbLvWrpZBTu
 t2oCNAZ3z1T3vApARJMrHmsjU/sSgroGJnup1ph+OOFP+KiCo5OBsekDk
 caBKTWYIbqfEXdULmz4JJx7CgVFhkazW/r9/Qd5VX7BWOyyg4ibGufzjr
 IbCftmzRc3EPqjaBdowGNSavi6zg7xsYVcgg+TQHTThavZzLSBVMlSOrt
 Yo9Tk/U0UL1tFog5WusVrv8bAZ/EImG3VkpExj5KodpzLQM+xGRZyLQPs A==;
X-CSE-ConnectionGUID: QaaFoVa3QcyRyCUE+Dp6Ag==
X-CSE-MsgGUID: ZmtyOVmeQOevjjlSzacRQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136130"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136130"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:45 -0700
X-CSE-ConnectionGUID: qlMePZddS3az8S5ic4PNDw==
X-CSE-MsgGUID: QAt0xMBbSQKgGck9XTAc0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686245"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 15/26] drm/i915/psr: Check panel ALPM capability for eDP
 Panel Replay
Date: Wed,  5 Jun 2024 13:25:42 +0300
Message-Id: <20240605102553.187309-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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

Our HW doesn't support Panel Replay without AUX_LESS ALPM on eDP. Check
panel support for this and prevent eDP panel replay if it doesn't exits.

Bspec: 68920

v2: use intel_alpm_aux_less_wake_supported

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccb7c022e364..839171635b97 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -551,6 +551,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
+	if (intel_dp_is_edp(intel_dp) &&
+	    (!intel_alpm_aux_less_wake_supported(intel_dp))) {
+		drm_dbg_kms(&i915->drm,
+			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
+		return;
+	}
+
 	intel_dp->psr.sink_panel_replay_support = true;
 
 	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
-- 
2.34.1

