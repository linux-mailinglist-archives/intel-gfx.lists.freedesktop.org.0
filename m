Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338FC9C6471
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 23:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED4D610E074;
	Tue, 12 Nov 2024 22:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U24MHrzh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A7B10E1E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2024 22:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731451536; x=1762987536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uf15DfOPfQzyhueX0tqbeGpzDQL8ZKn8ti8d9D9bgu8=;
 b=U24MHrzhMAFs4wLJb0qIqV0O8SZrOA91JOuyIyxwkEi5jEzdl5Ra5L1g
 UbdiT3nsBqmsWAA2IHPots3ooWNZjr25q6vqQqxXuslZqbT5hxbK0UQnS
 aLeorjRNUf0+44zTnChakLh4NrXhoaZJ5AwKFBpEWAPt1dhbzHanTmmyd
 Zc66PLLT3yGhrRpnJ3MNfcyazrGkF41ANE5Efc2Jfb7T+NxCB5nYSxsIK
 xz9Bx4P7hjugFmIJ53/MyjUalteoQIoHYGW3QtPHvqI+8AZtO4unknLB4
 /1DGEAvjGsmQTWAyYMa7KKIOlkyqSZpdnjptsOUkq21IrCiNYENc2IW9r w==;
X-CSE-ConnectionGUID: stfb29SSSeyno8FKGRwa9A==
X-CSE-MsgGUID: IM+ZGzEJSz+XZhhu/t4nNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31281456"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31281456"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 14:45:35 -0800
X-CSE-ConnectionGUID: 1ZjRSPOsQU+8bK0okIvCPw==
X-CSE-MsgGUID: 5SoNEQpZSF6moVzMP3t8tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,149,1728975600"; d="scan'208";a="87646437"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 14:45:34 -0800
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Test new GuC v70.36.0 for ADL-P, DG1, DG2, MTL, TGL
Date: Tue, 12 Nov 2024 14:45:27 -0800
Message-ID: <20241112224527.745623-1-julia.filipchuk@intel.com>
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

UAPI compatiblity version 1.17.0

This patch is for testing only. If testing is successful the binary
blobs will replace the major versioned '*_guc_70.bin' files for given
platforms.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index ec33ad942115..7ef6c783f769 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,17 +88,17 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
-	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_mmp(mtl,  70, 36, 0)) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 36, 0)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 36, 0)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 12, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 36, 0)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_maj(dg1,  70, 5, 1)) \
+	fw_def(DG1,          0, guc_mmp(dg1,  70, 36, 0)) \
 	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
-	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 36, 0)) \
 	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
 	fw_def(ELKHARTLAKE,  0, guc_mmp(ehl,  70, 1, 1)) \
 	fw_def(ICELAKE,      0, guc_mmp(icl,  70, 1, 1)) \
-- 
2.47.0

