Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 897B8A898AD
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 11:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDD7C10E6BC;
	Tue, 15 Apr 2025 09:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAKpY0G2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD82C10E0D8;
 Tue, 15 Apr 2025 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744710786; x=1776246786;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V2ELufSE3bc5JJpKuTkPU0OiUJVRnvU3d+I3lTQfvmA=;
 b=GAKpY0G2N8FOxOpjaRsh19oWS5BeBvTXr9KbRcnh4U5wO2bXZVRvsDQ+
 l+jkT0pJlDS7u1srd0RMOkX2MkqA6n2YDQbkytF9fOPXFD4BzSA4X80sF
 XpYW0edQh5NRwqvEu9qhFoqv+G0gVig0b2ryTETWZCcH/m3DtmcyuUG6o
 4AvHhSoZPD6m7cNb77U3e1+I5HoU9UVDDrT6PMsXOvj6TSEwZLyDHPpvk
 fHzATy5I/x/DPcbBD3acZg2NNr+NHDAKXqJ7qyX24v3MpP+QulTecccxo
 HjY7qJFmtkoNFJ2vJcpdzk8K1W/Il/lY0AXBJ7XQdS1C3+FjRxQrYDK8h g==;
X-CSE-ConnectionGUID: 5XdUIzzUS+CP30z/1uARAQ==
X-CSE-MsgGUID: rFyLK9CWRK+jympshyi/sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="56849015"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="56849015"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 02:53:04 -0700
X-CSE-ConnectionGUID: Vzme2IFvQfmi2bV7aPYTLg==
X-CSE-MsgGUID: glIMmwTISDGqZqvpMhDsGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="161119174"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 15 Apr 2025 02:53:02 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 mika.kahola@intel.com
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Implement wa_14024400148
Date: Tue, 15 Apr 2025 15:16:33 +0530
Message-Id: <20250415094633.2465122-1-nemesa.garg@intel.com>
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

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 27 +++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index d22b5469672d..610d05b73b99 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -478,6 +478,22 @@ static bool intel_pmdemand_req_complete(struct intel_display *display)
 		 XELPDP_PMDEMAND_REQ_ENABLE);
 }
 
+static void intel_pmdemand_poll(struct intel_display *display)
+{
+	const unsigned int timeout_ms = 10;
+	u32 status;
+	int ret;
+
+	ret = intel_de_wait_custom(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
+				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
+				   50, timeout_ms, &status);
+
+	if (ret == -ETIMEDOUT)
+		drm_err(display->drm,
+			"timeout within %ums (status 0x%08x)\n",
+			timeout_ms, status);
+}
+
 static void intel_pmdemand_wait(struct intel_display *display)
 {
 	if (!wait_event_timeout(display->pmdemand.waitqueue,
@@ -508,7 +524,11 @@ void intel_pmdemand_program_dbuf(struct intel_display *display,
 	intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
 		     XELPDP_PMDEMAND_REQ_ENABLE);
 
-	intel_pmdemand_wait(display);
+	/* Wa_14024400148 For lnl use polling method */
+	if (DISPLAY_VER(display) == 20)
+		intel_pmdemand_poll(display);
+	else
+		intel_pmdemand_wait(display);
 
 unlock:
 	mutex_unlock(&display->pmdemand.lock);
@@ -617,7 +637,10 @@ intel_pmdemand_program_params(struct intel_display *display,
 	intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
 		     XELPDP_PMDEMAND_REQ_ENABLE);
 
-	intel_pmdemand_wait(display);
+	if (DISPLAY_VER(display) == 20)
+		intel_pmdemand_poll(display);
+	else
+		intel_pmdemand_wait(display);
 
 unlock:
 	mutex_unlock(&display->pmdemand.lock);
-- 
2.25.1

