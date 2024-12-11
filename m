Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40419ECBAB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E2B10E089;
	Wed, 11 Dec 2024 12:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DYao4shh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03FB10E089
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733918586; x=1765454586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d09DpzZv44WAZ9JtKOgwE/BK8Y/r9M0cGJdU3hEGsZI=;
 b=DYao4shhCytrtKgMuJ7+8oFQXhg4y4+MWD8spkqN6IAvxN6WkdEvIHpq
 UCHU/EaHdZeeg91l11JI3accUXi9Ft5GN+UrLIIcKYrteSB29w3d9xEnb
 8YBnivCaNbH3bleZIR7vhjQAglFHe8WW9ZDDulyMnWmmddAsvfoKagPhs
 4HX2HqQWlbnV5qnLVuhXpXEy4vB3eiLQozja/1WXOnisK1KafaeaqlaOJ
 2lH7IB3KEc0GfhdO9loENJHkqQTO+dfX7hdV3jEIe0HwWkjgZMnmoTp3h
 +sBYPqelWGyqvbzcDfzhgJM3OV/keS3Nhe6tQm+nrvm6reO9V29Guoncx w==;
X-CSE-ConnectionGUID: hJfLVgiMQT2IgbeYFz7QQQ==
X-CSE-MsgGUID: wtK30PKiR5WdPcSLW2ytFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="33614191"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="33614191"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:01:42 -0800
X-CSE-ConnectionGUID: 0fvs1dpwSg6GF6QZ5m50vg==
X-CSE-MsgGUID: tQAx6WQbTZ6CgfjIkN+ydw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="100836971"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa003.jf.intel.com with ESMTP; 11 Dec 2024 04:01:39 -0800
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 2/4] drm/i915/dg2: Introduce DG2_D subplatform
Date: Wed, 11 Dec 2024 17:29:50 +0530
Message-Id: <20241211115952.1659287-3-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241211115952.1659287-1-raag.jadav@intel.com>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
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
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.c | 9 +++++++++
 drivers/gpu/drm/i915/intel_device_info.h | 5 ++++-
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index dcf6050e5550..b96b8de12756 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -549,6 +549,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
+#define IS_DG2_D(i915) \
+	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_D)
 #define IS_RAPTORLAKE_S(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ALDERLAKE_P_N(i915) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 856b30fa37dc..bbe3a24fe3d9 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -200,6 +200,10 @@ static const u16 subplatform_g12_ids[] = {
 	INTEL_DG2_G12_IDS(ID),
 };
 
+static const u16 subplatform_dg2_d_ids[] = {
+	INTEL_DG2_D_IDS(ID),
+};
+
 static const u16 subplatform_arl_h_ids[] = {
 	INTEL_ARL_H_IDS(ID),
 };
@@ -280,6 +284,11 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 		mask = BIT(INTEL_SUBPLATFORM_ARL_S);
 	}
 
+	/* DG2_D ids span across multiple DG2 subplatforms */
+	if (find_devid(devid, subplatform_dg2_d_ids,
+		       ARRAY_SIZE(subplatform_dg2_d_ids)))
+		mask |= BIT(INTEL_SUBPLATFORM_D);
+
 	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
 
 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index ef84eea9ba0b..9387385cb418 100644
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

