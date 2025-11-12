Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ACBC53E99
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 19:26:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0338B10E7A0;
	Wed, 12 Nov 2025 18:26:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U/Fmaq1g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96C9A10E7A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Nov 2025 18:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762971987; x=1794507987;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=atWpdVvXO3zcLZr8MyDlwTun4U313KXlDaejMUt1bUU=;
 b=U/Fmaq1gf4niNGTIi9rRYuAOsyH4vAURmK4zd4hNfM2ApNuAd8yMiE70
 9ISOAihwTp1Cr8igphvIY4hXujtvYBtF2rxgb5SthTE4jZaHFbQlbocpL
 OwYdcJpqxqWGUfpnxOVhfIMT492d5bYwPoKb4Kv4nxwKzvfxwoDHSwmIl
 amSaLUIDbYUrkP57hx6R44vsTVVQ/6/r+jlaMXaaV3x0eAXEZ8zVICS2z
 EWaMISHgZuDR+XCKjP8bQSkWU7jYsRKdIvgkC2ptSCgBwffcqe+EOjq0f
 1numeJgxfrW27OBFKkp+OpS7Et+ij12pmmNUc1YifvKxTii7Ru52UfNw+ Q==;
X-CSE-ConnectionGUID: ebtWD2mLSpqTF3ECnoxRkw==
X-CSE-MsgGUID: eJ2mvtnHS5SvMLeo/gCnNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="76503304"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="76503304"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:26:26 -0800
X-CSE-ConnectionGUID: 5CR2tN1rRACrJjqDhxybRw==
X-CSE-MsgGUID: 4kvA/RuCRTqUckPlGP4tAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="189136787"
Received: from bfilipch-desk.jf.intel.com ([10.88.27.152])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:26:26 -0800
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [PATCH] drm/i915/guc: Recommend GuC v70.53.0 for DG2, MTL
Date: Wed, 12 Nov 2025 10:25:44 -0800
Message-ID: <20251112182606.1470733-2-julia.filipchuk@intel.com>
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

UAPI compatibility version 1.26.0

Update recommended GuC version for DG2, MTL.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index e848a04a80dc..813e58b45d5d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,8 +88,8 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 53, 0)) \
+	fw_def(DG2,          0, guc_maj(dg2,  70, 53, 0)) \
 	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-- 
2.51.0

