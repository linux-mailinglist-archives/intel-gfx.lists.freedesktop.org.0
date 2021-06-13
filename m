Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC833A597E
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Jun 2021 18:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BA16E0EB;
	Sun, 13 Jun 2021 16:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F8489CAF
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Jun 2021 16:14:04 +0000 (UTC)
IronPort-SDR: qwFmoVh7muaHnvZmYMTz8N/+9cvjn9GI5tFb5tXUIe8W4wLfe5ktGVd3zXDzA+X3VACtACimQE
 2+v5KW8xTniQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="227171309"
X-IronPort-AV: E=Sophos;i="5.83,271,1616482800"; d="scan'208";a="227171309"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2021 09:14:04 -0700
IronPort-SDR: AwvbvjCEHJ3Vu/hVRg5di1HUfnKXt51GuDtqI0S9XUZ0M4a9nUijAXGLKiLP0254f5B/57aDer
 clrqOZ5nF1Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,271,1616482800"; d="scan'208";a="620826844"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005.jf.intel.com with ESMTP; 13 Jun 2021 09:14:03 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 13 Jun 2021 09:14:03 -0700
Message-Id: <20210613161403.32549-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210613161403.32549-1-anusha.srivatsa@intel.com>
References: <20210613161403.32549-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915/adl_p: Load DMC
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

Load DMC v2.10 on ADLP. The release notes mention that
this version enables few power savings features.

v2: Add DMC_PATH() for ADLP (Lucas)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 18e0d225a478..f8789d4543bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -45,6 +45,10 @@
 
 #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
 
+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 10)
+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 10)
+MODULE_FIRMWARE(ADLP_DMC_PATH);
+
 #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
 #define ADLS_DMC_VERSION_REQUIRED	DMC_VERSION(2, 1)
 MODULE_FIRMWARE(ADLS_DMC_PATH);
@@ -724,7 +728,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_dmc_runtime_pm_get(dev_priv);
 
-	if (IS_ALDERLAKE_S(dev_priv)) {
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		dmc->fw_path = ADLP_DMC_PATH;
+		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
+		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
+	} else if (IS_ALDERLAKE_S(dev_priv)) {
 		dmc->fw_path = ADLS_DMC_PATH;
 		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
