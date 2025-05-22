Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9BDAC01AB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 03:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356E8112B6C;
	Thu, 22 May 2025 01:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FfvHCPJP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56685112B4E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 01:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747876312; x=1779412312;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dr7bsc5+YVIXL/K5HZxEWDb+vvfnBT5n1GXym3XmokM=;
 b=FfvHCPJPTF+9eTR2lMRNVc5OUV+DFz4DvQViltUtWsHXGcMO0ARf9bjU
 VbdbvfpXJC+Zuf98j1xUWaAoszjrQp0BYa31xUBPW5ay0u7b71R/p7r7N
 fH+tQXtYV/OT7t+N9AJ/OUNA2mPByt4lfULr9Lw7GXghPQPqNJSewD6K7
 Rm2QmnGdyULMM+6voPSM23IkyGu5Nd/EQgr9Hf6lhLFd02oeCSYbPle5S
 Q0t/UIQFGmS+y6tTPfJksPtveI/gDiX2W27MOLF3JjvDF7XCvg3NDCSXM
 rJsU4ACjHFvM/ZZw31wroFDY6MPa5/+O7GJ86QBTkmZwsplKS9ESxCxlk w==;
X-CSE-ConnectionGUID: JULoB5sQQyqGe6S6Lm5+JA==
X-CSE-MsgGUID: R0Wu/2cnT7K/6+nDo1JtQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="60121722"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="60121722"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 18:11:51 -0700
X-CSE-ConnectionGUID: pujnQKALQTuLY+a1Wzu1SQ==
X-CSE-MsgGUID: Z2TfkmOcRmmF/egbxTNFAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="163604175"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 18:11:50 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Test new GuC v70.45.2 for DG2
Date: Wed, 21 May 2025 18:11:29 -0700
Message-ID: <20250522011129.323297-1-julia.filipchuk@intel.com>
X-Mailer: git-send-email 2.49.0
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

UAPI compatiblity version 1.21.2

This patch is for testing only. If testing is successful the binary
blobs will replace the major versioned *_guc_70.bin files for given
platforms.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index ec33ad942115..0f22edf7543c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -89,7 +89,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
 	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 45, 2)) \
 	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-- 
2.49.0

