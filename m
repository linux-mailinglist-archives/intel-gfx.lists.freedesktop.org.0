Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D03CB3AB44
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 22:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACCE10EAB8;
	Thu, 28 Aug 2025 20:06:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eBVztVWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B3610EAB8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 20:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756411570; x=1787947570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x0gcTcohkq0r62ImEbrZFXaLUaAbaHlWUgGDanINzZI=;
 b=eBVztVWb9mvIByr4IjZSEZ8qE6oZhoIStYxfTgvIpQkKsVOvtJzdcoRh
 UGYDZipbeDGDGKCahu//8m/xl5b3iYbmr6PmhNtdX+QLBYSGGtKPsWKjF
 jwtk/UP8JmkK6jWBtKb/CBOmREIGqmk/bTH/DLJQFOQx+8yiJi3nEgwxD
 o82+jlczvtGwbtKZogMWvDzlzT67IRhV9eath+aG94WlfEU5WrqOn3jOx
 AOFzdDL0FF86bpduizmCdpzGG4ynxkTjuqHbZXKkVbok/5o3SvQrkhFzf
 04WjVBk3rpLx26tKejm07Oz//H2Ah2rCZYrgNrkDCW0t5luNwPgceKDOC A==;
X-CSE-ConnectionGUID: U0iIhzf3RNuQZdCO2zWz/Q==
X-CSE-MsgGUID: tqoz7fX8S2aMngE6oDqOHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58797609"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58797609"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 13:06:10 -0700
X-CSE-ConnectionGUID: OzGLK9uCQlS+UF5i9oqwLg==
X-CSE-MsgGUID: JsutoxIVTKegdffzYEI6Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="174375011"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 13:06:09 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI v3] drm/i915/guc: Test GuC v70.49.4 for ADL-P, DG1, DG2, MTL, TGL
Date: Thu, 28 Aug 2025 13:06:00 -0700
Message-ID: <20250828200606.359583-2-julia.filipchuk@intel.com>
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
index e848a04a80dc..ff418aeb9429 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,15 +88,15 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
-	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_mmp(mtl,  70, 49, 4)) \
+	fw_def(DG2,          0, guc_mmp(dg2,  70, 49, 4)) \
+	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 49, 4)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 12, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 49, 4)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_maj(dg1,  70, 5, 1)) \
+	fw_def(DG1,          0, guc_mmp(dg1,  70, 49, 4)) \
 	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
-- 
2.50.1

