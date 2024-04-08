Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81B989C067
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 15:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC7BC11258B;
	Mon,  8 Apr 2024 13:08:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZf6cp9Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C5911258B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 13:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712581685; x=1744117685;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8euM0pXgk1EXABtcYN/m3sFssQtAlE+Rfabf50AYnro=;
 b=TZf6cp9ZMIekPAoWuWMwpnIWaYuoVJliVF3y8UJTOC82hYWfwLz1vqeX
 RJH/Q5h8dm0WbqeUBL5vbeahx5yW833sxvtL3OWiAkIEVsTsfFs3o49b6
 VIPBjXz4GuK0uEyjRiu0yYBCizknjFj3ZKZ8vsLdZNPaIdd/Swiv93HhD
 1jJJEmIuDStH4shUP8PdyIE4a/7oj9YwcOtHckfat9z3ghn5wYNpjLl90
 XuMp6ZVLBgyKQm96DiveEJuxXjw2taSr3T/w3r9Pbff83U+Mim9S50rB8
 oZ+bgAyrPjpoNFnhQ8nl0lIYPjyClWpdOIBnti+TSvANd0CW1HEXA37uL A==;
X-CSE-ConnectionGUID: LSpjPlK8Qzam03iQSMN+fg==
X-CSE-MsgGUID: AiMsRnRuRG+a8lCnwYKqZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="19001075"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19001075"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 06:08:04 -0700
X-CSE-ConnectionGUID: PPydATy/R4aJRlX5TL1Dmw==
X-CSE-MsgGUID: XD+J5Mi/Q5mHJu+g1UCD2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24584601"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 06:08:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
 20240408050558.865396-4-ankit.k.nautiyal@intel.com
Subject: [PATCH v2 3/3] drm/915/lspcon: Reduce dmesg errors during lspcon_init
 failure
Date: Mon,  8 Apr 2024 18:29:36 +0530
Message-Id: <20240408125936.1026666-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
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

Currently lspcon_resume calls lspcon_init and in case of failure we get
error messages from lspcon_init and then again from lspcon_resume.

Just have a single error message in lspcon_init.

v2: Add the relavant info with each error, and avoid mix of dbg and
error messages. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 16ee0dc179f7..84d953496098 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -680,23 +680,27 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 		return false;
 
 	if (!lspcon_set_pcon_mode(lspcon)) {
-		drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
+		drm_err(&i915->drm, "Failure: LSPCON init on port %c, mode change to PCON failed\n",
+			port_name(dig_port->base.port));
 		return false;
 	}
 
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
-		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
+		drm_err(&i915->drm, "Failure: LSPCON init on port %c, DPCD caps read failed\n",
+			port_name(dig_port->base.port));
 		return false;
 	}
 
 	if (!lspcon_detect_vendor(lspcon)) {
-		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
+		drm_err(&i915->drm, "Failure: LSPCON init on port %c, vendor detection failed\n",
+			port_name(dig_port->base.port));
 		return false;
 	}
 
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
+
 	return true;
 }
 
@@ -718,13 +722,8 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
 		return;
 
-	if (!lspcon->active) {
-		if (!lspcon_init(dig_port)) {
-			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
-				port_name(dig_port->base.port));
-			return;
-		}
-	}
+	if (!lspcon->active && !lspcon_init(dig_port))
+		return;
 
 	expected_mode = lspcon_get_expected_mode(lspcon);
 	if (expected_mode == DRM_LSPCON_MODE_PCON)
-- 
2.40.1

