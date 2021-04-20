Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA0B366017
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 21:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642AF6E8A7;
	Tue, 20 Apr 2021 19:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40FA66E8A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 19:12:32 +0000 (UTC)
IronPort-SDR: UPxQhaFb5xnU0b35S1gl54QNSmQw2QM/9sOH3Mdr7VNo0/JhnF5AGeleM5npnR2OKhVbkkg5PX
 khWUp8WTdtqw==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="256886033"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="256886033"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 12:12:31 -0700
IronPort-SDR: VND+n+muNdlxP5iE62KUneATIYxXaxDojvuTAQ7LPKrTkCkSUmiYZk+vqqx/XdlAvg+R1poBHd
 F26seSVZcCtg==
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="385455368"
Received: from jyick-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.212.57.228])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 12:12:31 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Apr 2021 15:12:26 -0400
Message-Id: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Let's abstract the dmc path.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Although this abstraction removes the convenience of grepping
for the file name, it:
- makes addition easier.
- makes it easier to tweak global path when experiments are needed.
- get in sync with guc/huc, without getting overly abstracted.
- allows future junction with CSR_VERSION for simplicity.
- Enforces dmc file will never change this standard.

Cc: Fei Yang <fei.yang@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_csr.c | 20 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_csr.h |  6 ++++++
 2 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 26a3c6787e9e..ad68bcc611c4 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -40,48 +40,48 @@
 
 #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
 
-#define ADLS_CSR_PATH			"i915/adls_dmc_ver2_01.bin"
+#define ADLS_CSR_PATH			DMC_PATH(adls, 2, 01)
 #define ADLS_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
 MODULE_FIRMWARE(ADLS_CSR_PATH);
 
-#define DG1_CSR_PATH			"i915/dg1_dmc_ver2_02.bin"
+#define DG1_CSR_PATH			DMC_PATH(dg1, 2, 02)
 #define DG1_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
 MODULE_FIRMWARE(DG1_CSR_PATH);
 
-#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_02.bin"
+#define RKL_CSR_PATH			DMC_PATH(rkl, 2, 02)
 #define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
 MODULE_FIRMWARE(RKL_CSR_PATH);
 
-#define TGL_CSR_PATH			"i915/tgl_dmc_ver2_08.bin"
+#define TGL_CSR_PATH			DMC_PATH(tgl, 2, 08)
 #define TGL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 8)
 MODULE_FIRMWARE(TGL_CSR_PATH);
 
-#define ICL_CSR_PATH			"i915/icl_dmc_ver1_09.bin"
+#define ICL_CSR_PATH			DMC_PATH(icl, 1, 09)
 #define ICL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 9)
 #define ICL_CSR_MAX_FW_SIZE		0x6000
 MODULE_FIRMWARE(ICL_CSR_PATH);
 
-#define CNL_CSR_PATH			"i915/cnl_dmc_ver1_07.bin"
+#define CNL_CSR_PATH			DMC_PATH(cnl, 1, 07)
 #define CNL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 7)
 #define CNL_CSR_MAX_FW_SIZE		GLK_CSR_MAX_FW_SIZE
 MODULE_FIRMWARE(CNL_CSR_PATH);
 
-#define GLK_CSR_PATH			"i915/glk_dmc_ver1_04.bin"
+#define GLK_CSR_PATH			DMC_PATH(glk, 1, 04)
 #define GLK_CSR_VERSION_REQUIRED	CSR_VERSION(1, 4)
 #define GLK_CSR_MAX_FW_SIZE		0x4000
 MODULE_FIRMWARE(GLK_CSR_PATH);
 
-#define KBL_CSR_PATH			"i915/kbl_dmc_ver1_04.bin"
+#define KBL_CSR_PATH			DMC_PATH(kbl, 1, 04)
 #define KBL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 4)
 #define KBL_CSR_MAX_FW_SIZE		BXT_CSR_MAX_FW_SIZE
 MODULE_FIRMWARE(KBL_CSR_PATH);
 
-#define SKL_CSR_PATH			"i915/skl_dmc_ver1_27.bin"
+#define SKL_CSR_PATH			DMC_PATH(skl, 1, 27)
 #define SKL_CSR_VERSION_REQUIRED	CSR_VERSION(1, 27)
 #define SKL_CSR_MAX_FW_SIZE		BXT_CSR_MAX_FW_SIZE
 MODULE_FIRMWARE(SKL_CSR_PATH);
 
-#define BXT_CSR_PATH			"i915/bxt_dmc_ver1_07.bin"
+#define BXT_CSR_PATH			DMC_PATH(bxt, 1, 07)
 #define BXT_CSR_VERSION_REQUIRED	CSR_VERSION(1, 7)
 #define BXT_CSR_MAX_FW_SIZE		0x3000
 MODULE_FIRMWARE(BXT_CSR_PATH);
diff --git a/drivers/gpu/drm/i915/display/intel_csr.h b/drivers/gpu/drm/i915/display/intel_csr.h
index 03c64f8af7ab..fbfdaa3df07e 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.h
+++ b/drivers/gpu/drm/i915/display/intel_csr.h
@@ -8,6 +8,12 @@
 
 struct drm_i915_private;
 
+#define DMC_PATH(platform, major, minor) \
+	"i915/"				 \
+	__stringify(platform) "_dmc_ver" \
+	__stringify(major) "_"		 \
+	__stringify(minor) ".bin"
+
 #define CSR_VERSION(major, minor)	((major) << 16 | (minor))
 #define CSR_VERSION_MAJOR(version)	((version) >> 16)
 #define CSR_VERSION_MINOR(version)	((version) & 0xffff)
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
