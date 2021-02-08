Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC5E312FA3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541CA6E883;
	Mon,  8 Feb 2021 10:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C8D6E880
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:53:30 +0000 (UTC)
IronPort-SDR: sdeBo4J10KpslYEabnc/5YRgh82bmHP/6+KU5dZb4JwWtFRoXYQ+xM9AnKyWzRUpaTkzhHoR25
 ycrRNjDJCc6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="161443810"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="161443810"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 02:53:29 -0800
IronPort-SDR: zfexI7RxoTa0R0QjuBb/O8mRl2b+wwfkZ1dqsNoIAl7XXFi/qSnA8zEQc8NYbXC+a4HX/EnjOx
 fXaoruhYOsnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="377621793"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga008.fm.intel.com with ESMTP; 08 Feb 2021 02:53:27 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 16:13:38 +0530
Message-Id: <20210208104338.25023-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix HAS_LSPCON macro for platforms
 between GEN9 and GEN10
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

Legacy LSPCON chip from MCA and Parade is only used for platforms
between GEN9 and GEN10. Fixing the HAS_LSPCON macro to reflect the same.

v2: Fixed the prefix to append drm (Jani N).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4fc9a8691873..fd04fc434ca6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1763,7 +1763,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
-#define HAS_LSPCON(dev_priv) (INTEL_GEN(dev_priv) >= 9)
+#define HAS_LSPCON(dev_priv) (IS_GEN_RANGE(dev_priv, 9, 10))
 
 /* DPF == dynamic parity feature */
 #define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
