Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C96FE4AB007
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Feb 2022 15:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F127110EF23;
	Sun,  6 Feb 2022 14:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D836B10EFAF
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Feb 2022 14:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644158616; x=1675694616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hN4NXiSEnC/x3yb20KwEhqkLOx7yCtN7xLIKf571klc=;
 b=hSX81Tmq1mkyOrOCwauBG47fe26uox69NmiehKgR4Jm99W/0a/jm3WDA
 vtk37anxbfeyRGfRES9RAAGvIhy10jvufJgqKdlsZJuhZBhKdkuRHF0jJ
 UnBsJsEzQTIhkrRbFLG4Qc1chcKjLTRFPn2dksoHd8MFBN4JmQTixm2kd
 0p0N2srqT38/3fgMZYojvbHDR5ABGYMEu7nl8wrR3Zdu5hfDHMFUIT47c
 F/NdkFXkAd/cQWTWXqnLF56jYHDSNYdsrqksDfKuS0Lrdt737Khbw1ZN9
 7H2aes6WYVU8sQ0AziiszO6g3/Hl39j0AfT+9CGA1CoCuoDAp5Mq3Rk5X w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10249"; a="334987574"
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="334987574"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="700183758"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:34 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Feb 2022 20:13:11 +0530
Message-Id: <20220206144311.5053-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220206144311.5053-1-anshuman.gupta@intel.com>
References: <20220206144311.5053-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dgfx: Get VBT from rvda
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since OpRegion ver 2.1 MBOX3 RVDA field is Relative address of Raw
VBT data from OpRegion Base.
Populate the opreion->rvda accordingly.
As Intel DGFX cards supports OpRegion version 2.2 or greater,
RVDA as an absolute VBT physical address (Ver 2.0) doesn't applicable
to DGFX cards.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 5554b107900c..ea8b6ff41151 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1558,11 +1558,28 @@ static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
 
 static void *intel_dgfx_alloc_rvda(struct drm_i915_private *i915)
 {
-	return ERR_PTR(-EOPNOTSUPP);
+	struct intel_opregion *opregion = &i915->opregion;
+	void *opreg_rvda;
+
+	if (!opregion->dgfx_oprom_opreg)
+		return ERR_PTR(-EINVAL);
+
+	opreg_rvda = kzalloc(opregion->asle->rvds, GFP_KERNEL);
+	memcpy(opreg_rvda, opregion->dgfx_oprom_opreg + opregion->asle->rvda, opregion->asle->rvds);
+
+	/* We got RVDA, OPROM opregion + vbt image not nedded anymore */
+	kfree(opregion->dgfx_oprom_opreg);
+	opregion->dgfx_oprom_opreg = NULL;
+
+	return opreg_rvda;
 }
 
 static void intel_dgfx_free_rvda(struct drm_i915_private *i915)
 {
+	struct intel_opregion *opregion = &i915->opregion;
+
+	kfree(opregion->rvda);
+	opregion->rvda = NULL;
 }
 
 static void intel_dgfx_free_opregion(struct drm_i915_private *i915)
-- 
2.26.2

