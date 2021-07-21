Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B3E3D196F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 23:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547A76E840;
	Wed, 21 Jul 2021 21:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD296E201
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 21:52:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="233330285"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="233330285"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 14:52:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="501454815"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jul 2021 14:52:38 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 14:52:36 -0700
Message-Id: <20210721215238.24980-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721215238.24980-1-anusha.srivatsa@intel.com>
References: <20210721215238.24980-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/dmc: Change intel_get_stepping_info()
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

Lets use RUNTIME_INFO->step since all platforms now have their
stepping info in intel_step.c. This makes intel_get_stepping_info()
a lot simpler.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 50 ++++--------------------
 1 file changed, 8 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f8789d4543bf..1f6c32932331 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -247,50 +247,15 @@ bool intel_dmc_has_payload(struct drm_i915_private *i915)
 	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
 }
 
-static const struct stepping_info skl_stepping_info[] = {
-	{'A', '0'}, {'B', '0'}, {'C', '0'},
-	{'D', '0'}, {'E', '0'}, {'F', '0'},
-	{'G', '0'}, {'H', '0'}, {'I', '0'},
-	{'J', '0'}, {'K', '0'}
-};
-
-static const struct stepping_info bxt_stepping_info[] = {
-	{'A', '0'}, {'A', '1'}, {'A', '2'},
-	{'B', '0'}, {'B', '1'}, {'B', '2'}
-};
-
-static const struct stepping_info icl_stepping_info[] = {
-	{'A', '0'}, {'A', '1'}, {'A', '2'},
-	{'B', '0'}, {'B', '2'},
-	{'C', '0'}
-};
-
-static const struct stepping_info no_stepping_info = { '*', '*' };
-
 static const struct stepping_info *
-intel_get_stepping_info(struct drm_i915_private *dev_priv)
+intel_get_stepping_info(struct drm_i915_private *i915,
+			struct stepping_info *si)
 {
-	const struct stepping_info *si;
-	unsigned int size;
-
-	if (IS_ICELAKE(dev_priv)) {
-		size = ARRAY_SIZE(icl_stepping_info);
-		si = icl_stepping_info;
-	} else if (IS_SKYLAKE(dev_priv)) {
-		size = ARRAY_SIZE(skl_stepping_info);
-		si = skl_stepping_info;
-	} else if (IS_BROXTON(dev_priv)) {
-		size = ARRAY_SIZE(bxt_stepping_info);
-		si = bxt_stepping_info;
-	} else {
-		size = 0;
-		si = NULL;
-	}
-
-	if (INTEL_REVID(dev_priv) < size)
-		return si + INTEL_REVID(dev_priv);
+	const char *step_name = intel_step_name(RUNTIME_INFO(i915)->step.display_step);
 
-	return &no_stepping_info;
+	si->stepping = step_name[0];
+	si->substepping = step_name[1];
+	return si;
 }
 
 static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
@@ -616,7 +581,8 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	struct intel_package_header *package_header;
 	struct intel_dmc_header_base *dmc_header;
 	struct intel_dmc *dmc = &dev_priv->dmc;
-	const struct stepping_info *si = intel_get_stepping_info(dev_priv);
+	struct stepping_info display_info = { '*', '*'};
+	const struct stepping_info *si = intel_get_stepping_info(dev_priv, &display_info);
 	u32 readcount = 0;
 	u32 r, offset;
 	int id;
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
