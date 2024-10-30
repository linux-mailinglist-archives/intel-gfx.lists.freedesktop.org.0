Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B809B6601
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 15:34:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A25210E7A8;
	Wed, 30 Oct 2024 14:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U34aQuzd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A43510E7AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 14:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730298895; x=1761834895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GDAWlgzbvUn3Av1f1W3Skz88LIW5CsL7hFzJXWx7jNU=;
 b=U34aQuzdKPRhlAOpM2k+M7Xt7SvMmviHlherMhud4W3/7stB0JAqkTLm
 /r19FaLFBFwGRvlViv5Yfu32hGr6NkIfgQO6gkDMEo8mwf4bcYqBr4VNs
 QDYh99jh2okFz1E3MnDZUaC9qqqBPeDVOF0aDJYJ6V98P63vonygIX/IR
 meLfoe8tRNG5qBsXKOkrcxOtizeZTt2UF7UHh/nVAEN4re41tBmEkaBu2
 vBk9mNnJBLmD/aEnMqKTN7zlDhvDm0yp/qc5R2vN606aeB33gFlj3Gwt7
 7X0Y813drTD32WLLtCf6O7cg9ckvHZLFe70Edq95Cr2EvoM+0eg+dBctl A==;
X-CSE-ConnectionGUID: o7svraEDRNip44Y/mB/yNg==
X-CSE-MsgGUID: MSGg4bhbQTSGKC030xM4mQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="55407444"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="55407444"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 07:34:55 -0700
X-CSE-ConnectionGUID: 0pGeQUG2Q3SBTBmtm1cJJQ==
X-CSE-MsgGUID: w2FjH1PbR2CdY6SnWnmq4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="113180452"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by fmviesa001.fm.intel.com with ESMTP; 30 Oct 2024 07:34:52 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v3 2/4] drm/i915/dg2: Introduce DG2_D subplatform
Date: Wed, 30 Oct 2024 20:04:16 +0530
Message-Id: <20241030143418.410406-3-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241030143418.410406-1-raag.jadav@intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
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

Introduce DG2_D subplatform for the devices that span across multiple
DG2 subplatforms but are within same segment and will be useful for
segment specific features.

v3: Rework subplatform naming (Jani)
    Split subplatform check into separate case (Jani)

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.c | 9 +++++++++
 drivers/gpu/drm/i915/intel_device_info.h | 5 ++++-
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0f19cbd36829..fdb7158c7c1a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -546,6 +546,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
+#define IS_DG2_D(i915) \
+	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_D)
 #define IS_RAPTORLAKE_S(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ALDERLAKE_P_N(i915) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index ff9500194d15..89d1549a83ae 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -200,6 +200,10 @@ static const u16 subplatform_g12_ids[] = {
 	INTEL_DG2_G12_IDS(ID),
 };
 
+static const u16 subplatform_dg2_d_ids[] = {
+	INTEL_DG2_D_IDS(ID),
+};
+
 static const u16 subplatform_arl_ids[] = {
 	INTEL_ARL_IDS(ID),
 };
@@ -266,6 +270,11 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 		mask = BIT(INTEL_SUBPLATFORM_ARL);
 	}
 
+	/* DG2_D ids span across multiple DG2 subplatforms */
+	if (find_devid(devid, subplatform_dg2_d_ids,
+		       ARRAY_SIZE(subplatform_dg2_d_ids)))
+		mask |= BIT(INTEL_SUBPLATFORM_D);
+
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
 
 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 4f4aa4ff9963..7f1f84b1d0e3 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -95,9 +95,11 @@ enum intel_platform {
 /*
  * Subplatform bits share the same namespace per parent platform. In other words
  * it is fine for the same bit to be used on multiple parent platforms.
+ * Devices can belong to multiple subplatforms if needed, so it's possible to set
+ * multiple bits for same device.
  */
 
-#define INTEL_SUBPLATFORM_BITS (3)
+#define INTEL_SUBPLATFORM_BITS (4)
 #define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
 
 /* HSW/BDW/SKL/KBL/CFL */
@@ -114,6 +116,7 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_G10	0
 #define INTEL_SUBPLATFORM_G11	1
 #define INTEL_SUBPLATFORM_G12	2
+#define INTEL_SUBPLATFORM_D	3
 
 /* ADL */
 #define INTEL_SUBPLATFORM_RPL	0
-- 
2.34.1

