Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6A592AAB0
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 22:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA53410E414;
	Mon,  8 Jul 2024 20:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RK9hSy0f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5990010E414
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 20:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720471264; x=1752007264;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3/JxvG2N/2Ujap3otvdNqBzgus6NeLMQK1FrJiC1SLQ=;
 b=RK9hSy0fvRPYbFEH0DEUnp7NYKlwqIuZ/riYpH0/xkpcL1igq9iNo2wi
 mYWFIYYpmDCqfcfUQCKMvBiloppVD8854ZObH9ecdgClrU4Yx8hvSe2hC
 Z6tdFs+QY/9s9K1p/fVlpsb46oO3sY8zP+hqcl2gedXKQ5bXCooQgpLfR
 2el/qWm509uby7i7YTxAFYszcwenUqVv8bysSijb7Jr3zTFhbzeARwjS8
 p7PHrrFC2Q8B0nUf4vEWvLm1CSuMZ86EdMpPc8EaLzlLwKZK9CYCX/KZS
 /CQ0UvLVCgTTzOoScnrQGlJHPnSBPk9GkStsvYE7DOVf2TsSnK2xPdfUK g==;
X-CSE-ConnectionGUID: ARQ1hYUWRIy4yVo4absImg==
X-CSE-MsgGUID: HP9F6mhXQoWkM+6XvzNU1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17829934"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="17829934"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 13:41:04 -0700
X-CSE-ConnectionGUID: KRG8XgKyQeqT9VkpSBXnzQ==
X-CSE-MsgGUID: zbnX/f1eS9mTIAmwC7XPBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="47538015"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 13:41:03 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/GuC: use MTL GuC from the CI folder
Date: Mon,  8 Jul 2024 13:40:45 -0700
Message-ID: <20240708204045.1951795-1-julia.filipchuk@intel.com>
X-Mailer: git-send-email 2.45.2
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

This is to test new GuC release before upstream.
Patch is for testing only. Do not merge.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d80278eb45d7..7875636c0204 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,7 +88,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_maj(../intel-ci/i915/mtl,  70, 12, 1)) \
 	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
-- 
2.45.2

