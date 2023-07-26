Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1014B763FBE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 21:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B02210E4BB;
	Wed, 26 Jul 2023 19:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D83010E4B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 19:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690400041; x=1721936041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7s0J2kEKYHtnL1hr6iHu+77aHLzx/d8V3cUr2KVQYzI=;
 b=Pz35zTGgqZMghAMvwF3tIJDYKFDk8SNqb1eDW8qKfa4n7nrE3w0vwg0m
 AgwmzNkbGUvlCAdyuUP7/1CDO9Rn8JESTELtjqrwJ79oA8tYc6YH2k42q
 T9ESvBxRWB1fEACmau8sxHd/dkoDgwj1MyFZNlrlmnd/5wD9IoIbzXELm
 KmbgZC74lq7gY6j02UqQRZrxDfz4it8MoIahERJ6juhuVDt2UlJ1kg00e
 CEZowm/WMGc9/UAwW45GTX1WqarzUncj2nkOm2wj22s6ZxJ0xodxWZSWB
 4Vy4kiiEMsKkCqyLrmDHm3xtZcb10Q9tn1D1MKlSNxs84JpV7/Bw8iSq6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="353013266"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="353013266"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 12:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840383396"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="840383396"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2023 12:33:50 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:03:24 +0530
Message-Id: <20230726193333.2759197-6-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 05/14] drm/i915/cfl: s/CFL/COFFEELAKE for
 platform/subplatform defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace CFL with
COFFEELAKE.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 39eab9ea02dd..cd85b9fed129 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1740,9 +1740,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 			encoder->get_buf_trans = icl_get_mg_buf_trans;
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		encoder->get_buf_trans = bxt_get_buf_trans;
-	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) || IS_KABYLAKE_ULX(i915)) {
+	} else if (IS_CML_ULX(i915) || IS_COFFEELAKE_ULX(i915) || IS_KABYLAKE_ULX(i915)) {
 		encoder->get_buf_trans = kbl_y_get_buf_trans;
-	} else if (IS_CML_ULT(i915) || IS_CFL_ULT(i915) || IS_KABYLAKE_ULT(i915)) {
+	} else if (IS_CML_ULT(i915) || IS_COFFEELAKE_ULT(i915) || IS_KABYLAKE_ULT(i915)) {
 		encoder->get_buf_trans = kbl_u_get_buf_trans;
 	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i915)) {
 		encoder->get_buf_trans = kbl_get_buf_trans;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ba075bb183db..04107696e966 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -627,13 +627,13 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 				 INTEL_INFO(i915)->gt == 2)
 #define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
-#define IS_CFL_ULT(i915) \
+#define IS_COFFEELAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_CFL_ULX(i915) \
+#define IS_COFFEELAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_CFL_GT2(i915)	(IS_COFFEELAKE(i915) && \
+#define IS_COFFEELAKE_GT2(i915)	(IS_COFFEELAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
-#define IS_CFL_GT3(i915)	(IS_COFFEELAKE(i915) && \
+#define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
 
 #define IS_CML_ULT(i915) \
-- 
2.34.1

