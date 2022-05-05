Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A6751C59A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 19:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F2D10EE36;
	Thu,  5 May 2022 17:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A9C10EE36
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 17:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651770049; x=1683306049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v0PRiGUYIeIk6nrLZkypcVeCLRoKbSZ3Su2qPc+UkQE=;
 b=V7+4Bcy1P464rnRtIz9qxI2q/eJdjBLNsm3Un+e67ZsuQsKAgDV/avae
 SELbtdjUIgmM0CTgZ494lfCkC70yjq85PbDz/iHkVJCSmYzEXWqzyXDXg
 ohQyd/vfnYHQ6gZzNpYPfk2ly/JqYg+tKd1zs2Euh7Nwfnn4UyA2YXTPQ
 y0AQn4/7fe8ebDHTIgfZxYIAkS1slPextFTOSX/NX90bNl5OZb7yHRt8A
 UHU2db84+thXGfTuwy/89QfIiY7j24InHMsEVsy5j97ZyACUUsbomkYg2
 IiogCa00pQ9gNxq5nY8NNbY6EZbGyTi3FujO0fOsVHQS4HhKJUVoxQjw0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="328723798"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="328723798"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:00:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="632523221"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:00:48 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 09:57:06 -0700
Message-Id: <20220505165707.813926-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220505165707.813926-1-anusha.srivatsa@intel.com>
References: <20220505165707.813926-1-anusha.srivatsa@intel.com>
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

Cc: Imre Deak <imre.deak@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>(v1)
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  4 +++-
 drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1d9bd5808849..15b15f434fcf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -907,7 +907,9 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	if (!HAS_DISPLAY(dev_priv))
 		return 0;
 
-	if (IS_DG1(dev_priv))
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

