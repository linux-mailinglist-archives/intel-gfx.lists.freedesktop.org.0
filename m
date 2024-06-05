Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1018FC901
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318ED10E5C1;
	Wed,  5 Jun 2024 10:26:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jrdofU1N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6DD10E738
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583194; x=1749119194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=azDS0aujQ3wRVAgzaDxd9gpPpi6TJybPIWXPCn0AEJs=;
 b=jrdofU1Nkxu89yvBuyl2SpK5e8qO2Xq0q4q8MPoXN9rTColaFIIxisaY
 dHby7zLXQi9BAuIcs+w1AFuTazrxhH5aj3djmk0xXiImdQ/w4M4Fk+b4h
 Me3jcOIo5lNFKhKggB32vg1I8rvnYzv5ZtYA7cDBznHJyaB9xcWOqAm7j
 dj5OC4f+S2G8iTSneJrDwGKIcRYi1DKxWpQpSDLlpIMTkzvBZfMcvNvBw
 7ktFlSO8A32dJCscL1A99EewzxDwTeANHBE7iSI8mkVQtBFSoMRgtd1yK
 f40gtlvaE8MeC0OTfcZHbaryKkcMI+oeC47Lt1JGpAxVEyilMx7yA/1IA Q==;
X-CSE-ConnectionGUID: 6DY6o0TfQ/iJEGMjjPlPPw==
X-CSE-MsgGUID: 6lg75vOxQpO+cfdEKxnJ7Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136110"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136110"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:33 -0700
X-CSE-ConnectionGUID: yQBlLOlsQzKD94mK0REXhg==
X-CSE-MsgGUID: FFAIdenjTMyCcP71f2+JLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686160"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 08/26] drm/i915/psr: Use intel_alpm_aux_wake_supported
 instead of local variable
Date: Wed,  5 Jun 2024 13:25:35 +0300
Message-Id: <20240605102553.187309-9-jouni.hogander@intel.com>
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

We have now intel_alpm_aux_wake_supported. Use that instead of local
variable.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3cc38ba2f954..a3ad4488fcee 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -446,16 +446,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	}
 }
 
-static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
-{
-	u8 alpm_caps = 0;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
-			      &alpm_caps) != 1)
-		return false;
-	return alpm_caps & DP_ALPM_CAP;
-}
-
 static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -600,7 +590,6 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
-		bool alpm = intel_dp_get_alpm_status(intel_dp);
 
 		/*
 		 * All panels that supports PSR version 03h (PSR2 +
@@ -613,7 +602,8 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		 * Y-coordinate requirement panels we would need to enable
 		 * GTC first.
 		 */
-		intel_dp->psr.sink_psr2_support = y_req && alpm;
+		intel_dp->psr.sink_psr2_support = y_req &&
+			intel_alpm_aux_wake_supported(intel_dp);
 		drm_dbg_kms(&i915->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
 	}
-- 
2.34.1

