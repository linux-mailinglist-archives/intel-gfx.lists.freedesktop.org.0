Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0A59BFCDA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 04:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D770E10E225;
	Thu,  7 Nov 2024 03:07:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UV3HGQn3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3097210E225
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 03:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730948866; x=1762484866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UVLlrts3l7ur2yAWZGzTQLNuqs2ftmGQGWIbMbncXQE=;
 b=UV3HGQn3qnS2VwwR++HSVQkCTZOyuMj0ipfk7cd+GmHqlA4sx1D0fhFp
 aZgy5n35krPRsTIsriDHx8LSExZdzA3EoLFGg8cxXo1wDS89i5ftL8zSQ
 9zhE9Wn0h8aHn+7KYEosav0sONuwp7KgG9A4aKPo0/C0kvdGytDNSNHZS
 3r1Il2cWJPYB5NUrqK0xw9prfoPOSEXrsSVl1/zAcGfIWt4gR3iL6xDpZ
 rUnha6JxiRULym3ugJTxbInlkjCPoOED9CBnjLeoeE2UdmfxaNhKxzHon
 ucxDJp30C77x55VeFVIZS1hRp+FvL28MOk6iknkGhXkUCmSxb451wsPYw g==;
X-CSE-ConnectionGUID: Z7mdvts0QAWBYtEdEJY5mg==
X-CSE-MsgGUID: Ejm3E83zRVeHb+AecUtggA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30934293"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30934293"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 19:07:45 -0800
X-CSE-ConnectionGUID: 9KrZF1VQQSOz1b5fR0ee7w==
X-CSE-MsgGUID: ehf+kgLXQ2S/RLmL0I7cbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,264,1725346800"; d="scan'208";a="84519887"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 19:07:44 -0800
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Test new GuC v70.35.1 for ADL-P, DG1, DG2, MTL, TGL
Date: Wed,  6 Nov 2024 19:07:28 -0800
Message-ID: <20241107030729.589305-1-julia.filipchuk@intel.com>
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

UAPI compatiblity version 1.16.1

This patch is for testing only. If testing is successful the binary
blobs will replace the major versioned '*_guc_70.bin' files for given
platforms.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index ec33ad942115..bc83a1016125 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,17 +88,17 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
-	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_mmp(mtl,  70, 35, 1)) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 35, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 35, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 12, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 35, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_maj(dg1,  70, 5, 1)) \
+	fw_def(DG1,          0, guc_mmp(dg1,  70, 35, 1)) \
 	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
-	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 35, 1)) \
 	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
 	fw_def(ELKHARTLAKE,  0, guc_mmp(ehl,  70, 1, 1)) \
 	fw_def(ICELAKE,      0, guc_mmp(icl,  70, 1, 1)) \
-- 
2.47.0

