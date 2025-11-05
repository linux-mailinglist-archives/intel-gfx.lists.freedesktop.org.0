Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07355C35F9A
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A4910E75A;
	Wed,  5 Nov 2025 14:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VdBc6en4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D934710E75A;
 Wed,  5 Nov 2025 14:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351727; x=1793887727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mNLZP1hCDWjZBCnkzJ0BDS977NwcVD+VFYbUmRxvhq4=;
 b=VdBc6en4DCghtzIX0PEvUWbzrqv4CA4DZPaQaymr/j4Z+OulZZ1i5us+
 7KzIyY1achc/ZP7dhzsK230u4+uIvfqALJSBojK6nk2pYFDnxVdY/0j9H
 YyZ0UkvP844zpfenH9Xs2q85vkj0LsX4/Ntn6fLWX4fOkTbgZCePhOJ2G
 Ni7qJR6H//SopUwXm7QjvOM7q63G4+LWB7HJUQM6bNkCSr16z9KYSPcNf
 kZWiZUGEn39daoogf8Pdmqfkv8R1hHuwfoV3s9KD100FM1j6Nk3mQo5y4
 dYfSgZxPhr/P3mlAxFts0wKe4XXKj/6ea5BQFfLjtK5YXke/FfwZ6XYpH Q==;
X-CSE-ConnectionGUID: vpPz3QxoSo+9Lj6XY/gWOw==
X-CSE-MsgGUID: lvYg3ml5RnSx5eTQeY/kmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348396"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348396"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:23 -0800
X-CSE-ConnectionGUID: 1Q7b+IZGSrGfMfiTf1bz5g==
X-CSE-MsgGUID: Z/nNF4VUSJSo/L4TYkRmAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562983"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:22 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 09/17] drm/i915/xe3p_lpd: Load DMC firmware
Date: Wed,  5 Nov 2025 11:06:58 -0300
Message-ID: <20251105140651.71713-28-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

Load the DMC firmware for Xe3p_LPD.

Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-9-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0bddb20a7c86..1b3a9b5608c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -127,6 +127,9 @@ static bool dmc_firmware_param_disabled(struct intel_display *display)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define XE3P_LPD_DMC_PATH		DMC_PATH(xe3p_lpd)
+MODULE_FIRMWARE(XE3P_LPD_DMC_PATH);
+
 #define XE3LPD_3002_DMC_PATH		DMC_PATH(xe3lpd_3002)
 MODULE_FIRMWARE(XE3LPD_3002_DMC_PATH);
 
@@ -186,7 +189,11 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
 {
 	const char *fw_path = NULL;
 	u32 max_fw_size = 0;
-	if (DISPLAY_VERx100(display) == 3002) {
+
+	if (DISPLAY_VERx100(display) == 3500) {
+		fw_path = XE3P_LPD_DMC_PATH;
+		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
+	} else if (DISPLAY_VERx100(display) == 3002) {
 		fw_path = XE3LPD_3002_DMC_PATH;
 		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
 	} else if (DISPLAY_VERx100(display) == 3000) {
-- 
2.51.0

