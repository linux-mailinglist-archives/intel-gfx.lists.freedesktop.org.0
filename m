Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D789AB2A7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEDAD10E6AD;
	Tue, 22 Oct 2024 15:51:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nPC9Jk9u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC1610E6AA;
 Tue, 22 Oct 2024 15:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612290; x=1761148290;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o3xs3Cvc3rh/wpyf+UIzrhINZ1PUKKHZWO6Lxy1aw/E=;
 b=nPC9Jk9uNRdGukFefrk+kI52k9nPbJwuUSYPV/5whHn37qkLqRNpVcvn
 LOTnlr6YRMGwaUyHBHdAjSFiYx2t2vNtvFxfwDOPaq+VThDLILoG67+fN
 MKJ+EKHOCMfa3P/hA1b04hz8+odj43Nx1cxu9ovWDQM/oe52vfP6xNsOb
 m9r++RX4WZ7HKboZxlyyM4lpuIyiYMg9iczigav04JLmVMx6Iq7LedjYW
 evdt5RPV/baYQK2iZYuiJpYWvnVSMR5xojPUsjzOR7MySs37bOYv5oKEp
 QY6xrJf/72aWwIcRzClq9Gzio6vYX+HXgn4tzBgLEgcGs4l8CiTTJfPhk g==;
X-CSE-ConnectionGUID: 5XfVu/JLTUWRawgkn5Gttg==
X-CSE-MsgGUID: CsgOZPcsTZW4TPebR+lOtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29318531"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29318531"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:51:30 -0700
X-CSE-ConnectionGUID: FgHnXV0ST2SCO4DK3yi2MA==
X-CSE-MsgGUID: NJ6/WnTxRm6zyHrqutBwFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="117374322"
Received: from ldmartin-desk2.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.110.166])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:51:29 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/xe3lpd: Load DMC
Date: Tue, 22 Oct 2024 12:50:51 -0300
Message-ID: <20241022155115.50989-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
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

Load the DMC for Xe3LPD.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 48bbbf8f312c..5392b68627ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -113,6 +113,9 @@ static bool dmc_firmware_param_disabled(struct intel_display *display)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define XE3LPD_DMC_PATH			DMC_PATH(xe3lpd)
+MODULE_FIRMWARE(XE3LPD_DMC_PATH);
+
 #define XE2LPD_DMC_PATH			DMC_PATH(xe2lpd)
 MODULE_FIRMWARE(XE2LPD_DMC_PATH);
 
@@ -168,7 +171,10 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
 	const char *fw_path = NULL;
 	u32 max_fw_size = 0;
 
-	if (DISPLAY_VER_FULL(display) == IP_VER(20, 0)) {
+	if (DISPLAY_VER_FULL(display) == IP_VER(30, 0)) {
+		fw_path = XE3LPD_DMC_PATH;
+		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VER_FULL(display) == IP_VER(20, 0)) {
 		fw_path = XE2LPD_DMC_PATH;
 		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VER_FULL(display) == IP_VER(14, 1)) {
-- 
2.47.0

