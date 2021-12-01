Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01064464BB9
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 11:35:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83356F97A;
	Wed,  1 Dec 2021 10:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF4126F5CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 10:34:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236251698"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236251698"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:34:56 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="677216972"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:34:56 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 02:33:19 -0800
Message-Id: <20211201103320.2211867-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201103320.2211867-1-anusha.srivatsa@intel.com>
References: <20211201103320.2211867-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 2/3] drm/i915/rpl-s: Add PCH Support for Raptor
 Lake S
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

Add the PCH ID for RPL-S.

v2: Self contained commit message (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 1 +
 drivers/gpu/drm/i915/intel_pch.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index d1d4b97b86f5..da8f82c2342f 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -129,6 +129,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		return PCH_JSP;
 	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
+	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
 			    !IS_ALDERLAKE_P(dev_priv));
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index 7c0d83d292dc..6bff77521094 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -57,6 +57,7 @@ enum intel_pch {
 #define INTEL_PCH_JSP2_DEVICE_ID_TYPE		0x3880
 #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
 #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
+#define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
 #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
 #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
 #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
-- 
2.25.1

