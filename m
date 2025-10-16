Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A32BBE3A20
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 15:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D5210E9E1;
	Thu, 16 Oct 2025 13:15:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IpBGXTRf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AECA10E9E1;
 Thu, 16 Oct 2025 13:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760620521; x=1792156521;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FJ+HgCodfUjxCe4K3ZTD3MHyjBcDhSb9KVYFY8oYxhg=;
 b=IpBGXTRfu8dLxEFsOwV1fApt/hmiXfnvJw6rOuE00qx7ntJ07Wjdsl8N
 pjSV05MCPKNP2q6S9URgZjrc1D0ylcVZdBWxuDFzwxf8F71pFeBVBQw65
 eGEK+OuDApi45Qzqh/qlYIeATn6bH2qPrdgpFCtTBvgKBNlZvjt/u7+4v
 jisaqaIHdfrI4ccFIF5QZMjcwqr6BmKQs/k+MY8PrzAcE/0O7aZeNIsUo
 GDGggDBuVdBZAUAYR9UTpeBg6cLamsN72RDmj1XA2dwFV62RHWkazRbuv
 uhC59Ye2ANao2+JwtDtsBPK5wu5RB2FlDZH6wNjWhlWv/qXxB8ggltRiK g==;
X-CSE-ConnectionGUID: CVRWKDcIR2e2Ky4XDCDDWw==
X-CSE-MsgGUID: dHPbpcIQTM+kVzxOPcixyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="50377881"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="50377881"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 06:15:21 -0700
X-CSE-ConnectionGUID: OHtnDEBxSJ6uHwHYJ4r33A==
X-CSE-MsgGUID: R7hw8DilQa6smRUcsrXDrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="186852371"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa005.fm.intel.com with ESMTP; 16 Oct 2025 06:15:20 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Load DMC for xe3lpd 3002
Date: Thu, 16 Oct 2025 18:45:17 +0530
Message-ID: <20251016131517.2032684-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
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

Load the DMC for Xe3LPD for display version 3002.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 77a0199f9ea5..f3f10f97a573 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -127,6 +127,9 @@ static bool dmc_firmware_param_disabled(struct intel_display *display)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define XE3LPD_3002_DMC_PATH		DMC_PATH(xe3lpd_3002)
+MODULE_FIRMWARE(XE3LPD_3002_DMC_PATH);
+
 #define XE3LPD_DMC_PATH			DMC_PATH(xe3lpd)
 MODULE_FIRMWARE(XE3LPD_DMC_PATH);
 
@@ -183,9 +186,10 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
 {
 	const char *fw_path = NULL;
 	u32 max_fw_size = 0;
-
-	if (DISPLAY_VERx100(display) == 3002 ||
-	    DISPLAY_VERx100(display) == 3000) {
+	if (DISPLAY_VERx100(display) == 3002) {
+		fw_path = XE3LPD_3002_DMC_PATH;
+		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VERx100(display) == 3000) {
 		fw_path = XE3LPD_DMC_PATH;
 		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VERx100(display) == 2000) {
-- 
2.51.0

