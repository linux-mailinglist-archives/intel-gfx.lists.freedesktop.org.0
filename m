Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC72B3460F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 17:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 721DD10E4F1;
	Mon, 25 Aug 2025 15:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VOIfQzfZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9C810E503
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Aug 2025 15:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756136464; x=1787672464;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QZa/wiz56uuVHMK9bFqxcveoK6K0Zs4O29mRqLBhT5Y=;
 b=VOIfQzfZic1hxxrqH//p56fF0piSotZ0Tsy3OIJu5AV8m/KPfB0JzOW7
 oR8uBTk4yyh4neA5Xz+e02aO9JeDhsClGF9V1LLF568HNRuh5cQAy5NLG
 3zr6LMVI5XyrsiHVW2B+qR7Ec5X0pwlM9OR11/Aow1kyMM3yxtmjEMz10
 N1R3b4MaKkFv7XdqX74tQla65ynAt+l9+puOJdzXbHAwAwNZMc4DIHxd5
 zKNNRWULbbekIjLyXjVZbQKAOr985PVHI35NSvKIIG3104hFFuK7Yr2gq
 0W0aBTKzhZcVBHrjbgqsD59yZ9xHtSnj7TovK7Rd8r0tJskBpD/zsKOYm Q==;
X-CSE-ConnectionGUID: QSxYABK9QHSVFmv+9X12Pg==
X-CSE-MsgGUID: IGnhCfUKSMm3/dfJzcJS7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="60982876"
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="60982876"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 08:41:03 -0700
X-CSE-ConnectionGUID: iMfXDTFEQneRwt4tj9jbsA==
X-CSE-MsgGUID: lZtS5dxLSEeSqaWXJC/Vhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="169507002"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 08:41:03 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Test new GuC v70.49.3 for ADL-P, DG1, DG2, MTL, TGL
Date: Mon, 25 Aug 2025 08:40:39 -0700
Message-ID: <20250825154038.163671-2-julia.filipchuk@intel.com>
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

UAPI compatiblity version 1.24.3

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

