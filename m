Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F4651DE3F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 19:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE9010F2A0;
	Fri,  6 May 2022 17:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD11910F22F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 17:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651857438; x=1683393438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1P6ev43TPdsLQ1dSmZvmDHYeMDIY0iA2fLyr0PopDBM=;
 b=U3RAB4iwCWgSarQcoASo3tqvV1vkvbut6s2J4v+gb6qfKxZSfK8KSkVy
 CNjmSJsRQH/n767LPyPb4GwLLk+74d6wyjaXFLysEoUOYPciZui4TH9mm
 h84vupgog4dQBdyqlN4hFfKEnVk7eS+oUWd/JKNWdx78irEiubn3qJjmk
 37FvjVXZSjzwgn0ScTlfsj7eVLR+4i4Ue+UcC+Ied55sM1gRautxHIgsP
 Kyfv7/YB99ZRDemxZ/Kd+nmhYRAeibPk79HcSVn60liNMDmg7QmV/kvca
 hKacpGBLo4TDhx26rovqsL4e+lLjhv1FkrK6HKqxoQyZ6hLClSqk/VwrS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="329070223"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="329070223"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 10:17:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="518129804"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 10:17:08 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 10:13:28 -0700
Message-Id: <20220506171328.845107-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506171328.845107-1-anusha.srivatsa@intel.com>
References: <20220506171328.845107-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on DG2
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add Support for DC states on Dg2.

v2: Add dc9 as the max supported DC states and disable DC5.
v3: set max_dc to 0. (Imre)
v4: Add FIXME (Rodrigo)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>(v1)
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1d9bd5808849..2271f88e9a25 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -906,8 +906,15 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 
 	if (!HAS_DISPLAY(dev_priv))
 		return 0;
-
-	if (IS_DG1(dev_priv))
+	/* FIXME: change max_dc back to 3 once
+	 * we have DC5 bugs resolved. Till then,
+	 * DG2 will use only DC9. Though DC9 does
+	 * not depend on DMC, loading it in order
+	 * to unblock runtime PM
+	 */
+	if (IS_DG2(dev_priv))
+		max_dc = 0;
+	else if (IS_DG1(dev_priv))
 		max_dc = 3;
 	else if (DISPLAY_VER(dev_priv) >= 12)
 		max_dc = 4;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 257cf662f9f4..2f01aca4d981 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,6 +52,10 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
+#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
+MODULE_FIRMWARE(DG2_DMC_PATH);
+
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
 #define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
@@ -688,7 +692,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_dmc_runtime_pm_get(dev_priv);
 
-	if (IS_ALDERLAKE_P(dev_priv)) {
+	if (IS_DG2(dev_priv)) {
+		dmc->fw_path = DG2_DMC_PATH;
+		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
+		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
+	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		dmc->fw_path = ADLP_DMC_PATH;
 		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
-- 
2.25.1

