Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6508F89B719
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 07:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A51C410F799;
	Mon,  8 Apr 2024 05:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TbgmZf5V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 215A6112050
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 05:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712553270; x=1744089270;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=38rmfi60vTmWWgEOKXmuinCgj+zkmAHMpDFxMQHObks=;
 b=TbgmZf5VwEy5zJCCzOcBMXAyhoAHw37/kNInZGHCG+U3WVGxuqo/RMzb
 EOsutRI5SJV2l88XOmSl1QdkW+eSiF/ATjUtSaaIV2QeWhiqv23jQhG4D
 6iEIhHORjKavqc0jjvq/Qy4/WTsu7mwl+luKbZEunDvI1Ljs7EhnU7p/i
 xthPipjSpQIUpG19ztFUQ8js2Ei/EiKwpzcMJgTooWyopfdf62BwK1eTP
 5Bx1aTFoon57jGk/PKnd66Lym1xa9lW9O1LfMUrylVV/Q70qdsyC6PRHh
 lUqGYD0W5PQwJWvvosFamGc74mqkJwu3YydmNiXtjD5zctyn2DOsIRx+s A==;
X-CSE-ConnectionGUID: mzzGo1KISMW32Eab9jFppw==
X-CSE-MsgGUID: yeeDQED2S7e41qTGOaahzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18429011"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18429011"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:30 -0700
X-CSE-ConnectionGUID: R7uVmquJQ5yut7TUZ7E6CQ==
X-CSE-MsgGUID: y0kjym3GTPqVP/MWEfvDLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24401487"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/915/lspcon: Reduce dmesg errors during lspcon_init
 failure
Date: Mon,  8 Apr 2024 10:35:58 +0530
Message-Id: <20240408050558.865396-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
References: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
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

Just have a single error message in lspcon_init and convert all other
errors as dbg messages.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 27 +++++++++++----------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 16ee0dc179f7..3c3bc80e32f0 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -680,24 +680,30 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 		return false;
 
 	if (!lspcon_set_pcon_mode(lspcon)) {
-		drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
-		return false;
+		drm_dbg_kms(&i915->drm, "LSPCON mode change to PCON failed\n");
+		goto lspcon_init_failed;
 	}
 
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
-		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
-		return false;
+		drm_dbg_kms(&i915->drm, "LSPCON DPCD read failed\n");
+		goto lspcon_init_failed;
 	}
 
 	if (!lspcon_detect_vendor(lspcon)) {
-		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
-		return false;
+		drm_dbg_kms(&i915->drm, "LSPCON vendor detection failed\n");
+		goto lspcon_init_failed;
 	}
 
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
 	return true;
+
+lspcon_init_failed:
+	drm_err(&i915->drm, "LSPCON init failed on port %c\n",
+		port_name(dig_port->base.port));
+
+	return false;
 }
 
 u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
@@ -718,13 +724,8 @@ void lspcon_resume(struct intel_digital_port *dig_port)
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

