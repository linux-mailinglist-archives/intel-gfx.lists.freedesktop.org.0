Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E9F941F73
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 20:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E02A10E25C;
	Tue, 30 Jul 2024 18:21:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVilQ1/E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A2C10E25C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 18:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722363682; x=1753899682;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=13hlzpZ+2Y1UOGnDhvedIDp5deNr4oKAJFgtP/m1NcY=;
 b=JVilQ1/E0BuuqiGcxJcsJ8bZODhX+HSwiv/nsByMNn8gwUwXyx9MscJS
 peiy272czEWxisphGqIw+llNiOXWFptAXVDyULFuCYO51AJGaZB1xRGip
 qkyIBEb+LjyTqFMxPpLQDLuvnUCIpR1LiGtKwta80ixBXwzMlUr+tWwam
 PYRh3nP5YrD7fzAgJ0S+7+PbhCka5UNNq5F7Ik2YZZEDDatORCIBc+raH
 yb/GhxndPrJpcuKb2acPlf+lazqhv68q5/oQP9zT2MLXHWyt6Ok6GQgo4
 FTPoThgbfnnjMctzJq+xsaZ338RIdTlvSeJyqjh75bFUEJK7wSFZQIdB7 Q==;
X-CSE-ConnectionGUID: 4MoXFQKbQyiEHdd7VmcPyg==
X-CSE-MsgGUID: xJY0hPCsRCujcItuJmKusw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20362690"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20362690"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 11:21:22 -0700
X-CSE-ConnectionGUID: +DOPbAXRT5uw87MIN5Mg/w==
X-CSE-MsgGUID: BgJmHbNQTmyTikvWxsfm+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="85065702"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 11:21:21 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [CI] drm/i915/guc: Pick GuC from CI folder for ADLP,DG1,DG2,TGL,MTL
Date: Tue, 30 Jul 2024 11:21:04 -0700
Message-ID: <20240730182104.2937767-1-julia.filipchuk@intel.com>
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

This is to test the new GuC release before overwriting the existing one.
This patch is for CI only to test new firmware before upstream.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d80278eb45d7..2d2dc8a1ac66 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,15 +88,15 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 12, 1)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 12, 1)) \
-	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 12, 1)) \
+	fw_def(METEORLAKE,   0, guc_maj(../intel-ci/i915/mtl,  70, 12, 1)) \
+	fw_def(DG2,          0, guc_maj(../intel-ci/i915/dg2,  70, 12, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_maj(../intel-ci/i915/adlp, 70, 12, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 12, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_maj(../intel-ci/i915/tgl,  70, 12, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_maj(dg1,  70, 5, 1)) \
+	fw_def(DG1,          0, guc_maj(../intel-ci/i915/dg1,  70, 5, 1)) \
 	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
-- 
2.45.2

