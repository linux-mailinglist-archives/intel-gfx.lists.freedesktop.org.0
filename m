Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5261A49DF90
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 11:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E252E10EF99;
	Thu, 27 Jan 2022 10:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC9D10EF6F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643279993; x=1674815993;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PY5Pl8vHyLZw1kjSmyRFIgzzz6stUtMRgxOkQ+bxJE8=;
 b=N2EHnXAcg3B0+/CXoMW2ZojV9gpXuKVJPGhw2iKe7FpPrzKwpZSRSHRw
 8WBy3TF84zZs0Pi2LH/VBLdZdMrEcaJs+Rjyqgb26B46P082bN7XK0yUM
 cQB59C7W8jktoFtV+PmsWsCpK3dwfFSToOXmy2i8Xe3OSsLiKx3tqL9lZ
 5UECGdi2M6WftL9BBWH+oTYgWilBi6Mp3o+waD000mV++HBlKLRn55WCX
 tRnzIGTcNJG5q0k3am5y8fqo6oVXgob58TCmPu3HIGID37Dtm7Jih/+qA
 lgiL19tM/ngSvTCgOr0Q8s05n6ZenGAy7P7Ub83IbREpcW8N5Rm0vkxtH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246759522"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="246759522"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 02:39:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="480244188"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga006.jf.intel.com with ESMTP; 27 Jan 2022 02:39:52 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 16:05:20 +0530
Message-Id: <20220127103520.348015-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl-n: Add PCH Support for Alder Lake N
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

Add the PCH ID for ADL-N.

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 1 +
 drivers/gpu/drm/i915/intel_pch.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index da8f82c2342f..4f7a61d5502e 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -130,6 +130,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
+	case INTEL_PCH_ADP4_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Alder Lake PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
 			    !IS_ALDERLAKE_P(dev_priv));
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index 6bff77521094..6fd20408f7bf 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -58,6 +58,7 @@ enum intel_pch {
 #define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
 #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
 #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
+#define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
 #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
 #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
 #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
-- 
2.34.1

