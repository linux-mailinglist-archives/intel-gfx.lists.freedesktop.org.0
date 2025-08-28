Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFCEB3A940
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 20:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBE010EA8F;
	Thu, 28 Aug 2025 18:01:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLciIs4n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9631D10EA8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 18:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756404088; x=1787940088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IQtPMgnow5ZFcb25TlC5BzhgAeTIs7CVOTCqmOZxIM0=;
 b=TLciIs4n/zgMPHwMAerHXd+qsAvZVmptzGF12Tl/lTQAhAuJE3DUUCM6
 sVxhVqrLqlsRHX51ti/2iu0rUSUE8z/Whatp253jDtWYfssMpO4XOqpU6
 M8BbWZ06k0nRdx5oidddZl55HRb7IH+gnEHRLE1ZPukPiGmygjNIGqUQi
 CzDm4eqN4ojnu5CDSuITCn+VCkUYKoLTnzv/X7Q5v5xITU0E4XaZGno79
 V8+QtFMf2rpjv56GVYG4VoS+Do6XrFc4D0PWTRro628RBu1oh3d+6DhVM
 Mc8408Y3U2K32WOvwzsWF5wvugVXvgIrnkSWOVISg1Wd5Homk6NgMPUvI w==;
X-CSE-ConnectionGUID: d53EdYZ/TOaNcaRdeeoOQg==
X-CSE-MsgGUID: mtDCl/TKQne98DvSVlRqRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="57713057"
X-IronPort-AV: E=Sophos;i="6.18,220,1751266800"; d="scan'208";a="57713057"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 11:01:28 -0700
X-CSE-ConnectionGUID: lB5rfosPRfSj9sFbX8Icxg==
X-CSE-MsgGUID: 7zAR4pZWTAWjfzt/1caPHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,220,1751266800"; d="scan'208";a="174561349"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 11:01:29 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI v2] drm/i915/guc: Test GuC v70.49.4 for ADL-P, DG1, DG2, MTL, TGL
Date: Thu, 28 Aug 2025 11:01:05 -0700
Message-ID: <20250828180119.329382-2-julia.filipchuk@intel.com>
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
Resend to trigger CI with corrected firmware tree.

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

