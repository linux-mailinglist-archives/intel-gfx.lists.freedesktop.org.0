Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A284A633C33
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B90210E3D2;
	Tue, 22 Nov 2022 12:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E08110E3D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669119269; x=1700655269;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QMAGcKdza7wExAKAWRDSKwdW3u1Ys7siC9Wj3gN2PBQ=;
 b=euUnCiH6HyM8nY2EpHta2SHTYUetLc52LRUW+9tfqQy/+m7aAFgkRPmY
 dHK/EiMtBzpqlHQHqaeV+uwZY/PBu7k8wQP71cIQQ0+5WUQrljGLTHs+U
 enOHwxPI1n7w9/tb20BtOVopIz7CVoPeAiZup4sAqQfvR0pvtqj7jEJFI
 q9fu5hlUDNZ/crXFvNuIRRjGFgS1tKLJe75KaMr85sFBj2zu2qsgApL0e
 vmrhsR9mMQypZTqI5pqBZfs7VPQmkW1y6C7rzSc7lDwOk8fbnVLN5uV8x
 O6C26DtQb6V0PWFjajxThFdlTUzxXCH2a9W0aEyPh2/vfLT9efGS7ue7/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="340669111"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="340669111"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:14:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783820546"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="783820546"
Received: from rwjensen-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.209.19.69])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:14:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 09:13:43 -0300
Message-Id: <20221122121343.18136-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to v2.08
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

Release notes:

1. Fixes for Register noclaims and few restore.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---

v2:
  - Use correct numbering for the minor version (8 instead of the
    invalid octal 08).

 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 081a4d0083b1..eff3add70611 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,8 +52,8 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
-#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
+#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
+#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
-- 
2.38.1

