Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C248A636D30
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C498810E65A;
	Wed, 23 Nov 2022 22:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E64810E657
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242702; x=1700778702;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=U5lJU8Z//Sjn02x8bMXZjzskufQCokCwaRBb1EE/Lvc=;
 b=OkCHuP2BefrQqFSp3eOzwUBD7L0dWJYKYPa1X7JYU4yGO+r7tguThjjJ
 Mp8i1es3QK+LuD6RQuKITeN1jxNqlCEB9nBBNjY/dVwIFPK1sqccL5Ced
 8QFHYG82DP1bXbACPH/avTNVbuz7Z+6oo/KpO0rRCeVFnWsAkN0O3pIEq
 hHf2gyRalDfQ3aFFoKODFjBPSIXJB0YnaDzbtfi0ekNdHZZtolbxG21wR
 GdjzGTufnKnVdcFgLzulOKBwLFQOHatEtsJJBj9cJZmg1BjPasCKQ4oCy
 IcCL3dGGcjKLJf13KiDZi9neTe88E2GuB/ArHW/AnvE/tVRspvJu5tY0C w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875384"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875384"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404458"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404458"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:10 -0800
Message-Id: <20221123223410.2846296-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 7/7] drm/i915/pxp: Better hierarchy readibility -
 move backends to a backend folder
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

Move the mei and gsccs backend implementation files into a backend folder
This would provide clearer readibility of file hiearchy with regards to this
backend vs front end thus encouraging better code location selcection for
future changes.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                         |  6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c              |  4 ++--
 .../drm/i915/pxp/{ => tee_backends}/intel_pxp_gsccs.c |  6 ++++--
 .../drm/i915/pxp/{ => tee_backends}/intel_pxp_gsccs.h |  0
 .../i915/pxp/{ => tee_backends}/intel_pxp_tee_mei.c   | 11 ++++++-----
 .../i915/pxp/{ => tee_backends}/intel_pxp_tee_mei.h   |  0
 6 files changed, 15 insertions(+), 12 deletions(-)
 rename drivers/gpu/drm/i915/pxp/{ => tee_backends}/intel_pxp_gsccs.c (92%)
 rename drivers/gpu/drm/i915/pxp/{ => tee_backends}/intel_pxp_gsccs.h (100%)
 rename drivers/gpu/drm/i915/pxp/{ => tee_backends}/intel_pxp_tee_mei.c (98%)
 rename drivers/gpu/drm/i915/pxp/{ => tee_backends}/intel_pxp_tee_mei.h (100%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 05072d7a4ba4..10e252192b3f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -318,10 +318,10 @@ i915-y += i915_perf.o
 # Protected execution platform (PXP) support. Base support is required for HuC
 i915-y += \
 	pxp/intel_pxp.o \
-	pxp/intel_pxp_tee.o \
-	pxp/intel_pxp_tee_mei.o \
 	pxp/intel_pxp_huc.o \
-	pxp/intel_pxp_gsccs.o
+	pxp/intel_pxp_tee.o \
+	pxp/tee_backends/intel_pxp_tee_mei.o \
+	pxp/tee_backends/intel_pxp_gsccs.o
 
 i915-$(CONFIG_DRM_I915_PXP) += \
 	pxp/intel_pxp_cmd.o \
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index a4b7f6c7bc54..9b6e48929e6c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -5,9 +5,9 @@
 
 #include "i915_drv.h"
 #include "intel_pxp.h"
-#include "intel_pxp_gsccs.h"
 #include "intel_pxp_tee.h"
-#include "intel_pxp_tee_mei.h"
+#include "tee_backends/intel_pxp_gsccs.h"
+#include "tee_backends/intel_pxp_tee_mei.h"
 
 int intel_pxp_teelink_create_session(struct intel_pxp *pxp,
 				     int arb_session_id)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_gsccs.c
similarity index 92%
rename from drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
rename to drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_gsccs.c
index a4243272ca73..6441018f5207 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_gsccs.c
@@ -4,8 +4,10 @@
  */
 
 #include "i915_drv.h"
-#include "intel_pxp.h"
-#include "intel_pxp_gsccs.h"
+
+#include "pxp/intel_pxp.h"
+
+#include "pxp/tee_backends/intel_pxp_gsccs.h"
 
 static int gsccs_tee_send_message(struct intel_pxp *pxp,
 				  void *msg_in, size_t msg_in_size,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_gsccs.h
similarity index 100%
rename from drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
rename to drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_gsccs.h
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c b/drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_tee_mei.c
similarity index 98%
rename from drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
rename to drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_tee_mei.c
index a81e8859335e..881fc93b1cb0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
+++ b/drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_tee_mei.c
@@ -11,11 +11,12 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
-#include "intel_pxp.h"
-#include "intel_pxp_cmd_interface_42.h"
-#include "intel_pxp_huc.h"
-#include "intel_pxp_session.h"
-#include "intel_pxp_tee_mei.h"
+
+#include "pxp/intel_pxp.h"
+#include "pxp/intel_pxp_cmd_interface_42.h"
+#include "pxp/intel_pxp_huc.h"
+#include "pxp/intel_pxp_session.h"
+#include "pxp/tee_backends/intel_pxp_tee_mei.h"
 
 struct mei_teelink_priv {
 	/**
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.h b/drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_tee_mei.h
similarity index 100%
rename from drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.h
rename to drivers/gpu/drm/i915/pxp/tee_backends/intel_pxp_tee_mei.h
-- 
2.34.1

