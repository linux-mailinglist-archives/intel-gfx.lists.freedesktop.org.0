Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B949B37409
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 22:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBC810E2F1;
	Tue, 26 Aug 2025 20:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C7hv7Nu2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC8F10E2F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 20:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756241378; x=1787777378;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lqwWsm66sCZc4WA99HEmszkREKruhF+7Yb8IqPDfE/4=;
 b=C7hv7Nu2Y/dFEG4t74Xg/JG1JJ9nrOrLtNM5JG+xpdmpc40q3+MKYbVh
 kTdRBpvMavdmqqy6JAkgyFqSO2zQFKFh0tTYHsSx6Hh1s+IS8SU/AYy0X
 2wTEo1XhGP62FCVVFx1TJdIw5zLuWml9/P/J5UkOGr65OZgSbuTH58qte
 2smTwHtStWY4ZKXlHFs0wGKG/VdBkKLvfYans7442iwmCQrInvSYAC/Q0
 0fj1TEhCzzf5xq2CPf+66F7P2vbYyf1jGjpgR+gMzVYSyKf+lDL2kCcok
 0/5jXBHqanwbKiDH9UYqM2icDCBcyIBd+v/d7StNRzrBRHHYAApiu0bH9 w==;
X-CSE-ConnectionGUID: hIFhm+b2Styopeq61ghXUw==
X-CSE-MsgGUID: OIZDAxhXSg+fYpWmOH+LCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58409466"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58409466"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:49:37 -0700
X-CSE-ConnectionGUID: b7dLstxkSbmjYeLRiXIJkg==
X-CSE-MsgGUID: zNsbz2qWSS6IEKQmIy4D3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169182064"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:49:36 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Test GuC v70.49.4 for ADL-P, DG1, DG2, MTL, TGL
Date: Tue, 26 Aug 2025 13:49:23 -0700
Message-ID: <20250826204922.216812-2-julia.filipchuk@intel.com>
X-Mailer: git-send-email 2.50.1
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

UAPI compatibility version 1.24.4

This patch is for testing only. If testing is successful the binary
blobs will replace the major versioned '*_guc_70.bin' files for given
platforms.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index e848a04a80dc..466b8872175b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,15 +88,15 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
-	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_mmp(mtl,  70, 49, 3)) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 49, 3)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 49, 3)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 12, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 49, 3)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_maj(dg1,  70, 5, 1)) \
+	fw_def(DG1,          0, guc_mmp(dg1,  70, 49, 3)) \
 	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
-- 
2.50.1

