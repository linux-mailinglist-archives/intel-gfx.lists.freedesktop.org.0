Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AB1A907A4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 17:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879D010E0B4;
	Wed, 16 Apr 2025 15:25:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCKrSspa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D1F10E263;
 Wed, 16 Apr 2025 15:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744817145; x=1776353145;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lliIcOjFaA66AN4v++DJERdmP+aBNUzpbtsIiKJUKdg=;
 b=fCKrSspacdeZsDQ+ur73IPASLNDx+u/NAl96sMIljaXVyFr1b69i4bJ0
 11dPHPnx6puEIilvmDFkDe2417+s392ixlyS2PMQDfGe3Ob7vJmFtlkb8
 cV/p+P/1KyuxhFF7jnjr/yjQBDw+KBNJeI4jMybPaiTsvLgvIH0N3+Pkw
 ZACV2EJyOPbGp5Xbwrm9E+2w/PkJKNTM/LIyWOY45syaHyVB6JXrmzcBN
 rov+ySdjYIxqQ1eQWslf0Q2s/NvLmmzLMUSfe6ktT5nkAKh7PWiJW/mXs
 l2lvJBbanJa1NhHj6Lba7bAwRJsYpwRswtjxklk9VOpwJZH1BoIkVs1Q+ w==;
X-CSE-ConnectionGUID: /rcRplV0QCudNLJOpFPvOg==
X-CSE-MsgGUID: 5YPBjPPXQdu1hdlmJS1Ofg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="33991804"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="33991804"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 08:25:44 -0700
X-CSE-ConnectionGUID: RSD0jJQOTJ+6p1S8iF59fg==
X-CSE-MsgGUID: CDlWtjN/T/CfTbMLaec68A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="134623286"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa003.fm.intel.com with ESMTP; 16 Apr 2025 08:25:42 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 mika.kahola@intel.com
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2] drm/i915/display: Implement wa_14024400148
Date: Wed, 16 Apr 2025 20:50:44 +0530
Message-Id: <20250416152044.2668249-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

Workaround recommend use polling method
for pm_demand to finish as to avoid timeout.

v2: Add polling method within pmdemand_wait.
    Update error message[Jani]	

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 31 ++++++++++++++++---
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index d22b5469672d..1253376c7654 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -478,13 +478,34 @@ static bool intel_pmdemand_req_complete(struct intel_display *display)
 		 XELPDP_PMDEMAND_REQ_ENABLE);
 }
 
-static void intel_pmdemand_wait(struct intel_display *display)
+static void intel_pmdemand_poll(struct intel_display *display)
 {
-	if (!wait_event_timeout(display->pmdemand.waitqueue,
-				intel_pmdemand_req_complete(display),
-				msecs_to_jiffies_timeout(10)))
+	const unsigned int timeout_ms = 10;
+	u32 status;
+	int ret;
+
+	ret = intel_de_wait_custom(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
+				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
+				   50, timeout_ms, &status);
+
+	if (ret == -ETIMEDOUT)
 		drm_err(display->drm,
-			"timed out waiting for Punit PM Demand Response\n");
+			"timed out waiting for Punit PM Demand Response within %ums (status 0x%08x)\n",
+			timeout_ms, status);
+}
+
+static void intel_pmdemand_wait(struct intel_display *display)
+{
+	/* Wa_14024400148 For lnl use polling method */
+	if (DISPLAY_VER(display) == 20) {
+		intel_pmdemand_poll(display);
+	} else {
+		if (!wait_event_timeout(display->pmdemand.waitqueue,
+					intel_pmdemand_req_complete(display),
+					msecs_to_jiffies_timeout(10)))
+			drm_err(display->drm,
+				"timed out waiting for Punit PM Demand Response\n");
+	}
 }
 
 /* Required to be programmed during Display Init Sequences. */
-- 
2.25.1

