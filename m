Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22911763FBC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 21:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7BC110E4B6;
	Wed, 26 Jul 2023 19:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF0C10E4B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 19:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690400041; x=1721936041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fg8Oz3ITCIL8vi4apGEbzjeWKFONOZemTwtIZGiYVrM=;
 b=jY+vrTHSc96yzID+dNHQWu7G5MkmzbZH0+wY/IbRze5W3rWVbZBm+zQc
 I7pkfuN7hRzygQc1VlqKdjT0PnKtWquwUdx3DSX0I832NY1scbYlS1CcS
 HPUksGe3EAsAmylzvOy2qGREY784g6yPYFr9+BEg8uNon7AIU6ls6B9e1
 8UCwE5BIJEZbry6ccnA0s87tiCj51hqtknAgsU6c6t36Cwm12NQFeHOdK
 yuRxe5I6QyRCXWReS/p7zNSrQZ7vZhuxBD8UOLn+YNBESqX8fUiPsubjy
 TrrsSNZ0gn1Ix1Uj0bgPlZCtlK9SGoVNoIxqC4asJ0iqr8nFSDpEzUwD+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="353013270"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="353013270"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 12:33:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840383410"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="840383410"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2023 12:33:52 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:03:25 +0530
Message-Id: <20230726193333.2759197-7-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 06/14] drm/i915/cml: s/CML/COMETLAKE for
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

Follow consistent naming convention. Replace CML with
COMETLAKE.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index cd85b9fed129..35e6e3a5ddf1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1740,9 +1740,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 			encoder->get_buf_trans = icl_get_mg_buf_trans;
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		encoder->get_buf_trans = bxt_get_buf_trans;
-	} else if (IS_CML_ULX(i915) || IS_COFFEELAKE_ULX(i915) || IS_KABYLAKE_ULX(i915)) {
+	} else if (IS_COMETLAKE_ULX(i915) || IS_COFFEELAKE_ULX(i915) || IS_KABYLAKE_ULX(i915)) {
 		encoder->get_buf_trans = kbl_y_get_buf_trans;
-	} else if (IS_CML_ULT(i915) || IS_COFFEELAKE_ULT(i915) || IS_KABYLAKE_ULT(i915)) {
+	} else if (IS_COMETLAKE_ULT(i915) || IS_COFFEELAKE_ULT(i915) || IS_KABYLAKE_ULT(i915)) {
 		encoder->get_buf_trans = kbl_u_get_buf_trans;
 	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i915)) {
 		encoder->get_buf_trans = kbl_get_buf_trans;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 04107696e966..e6f77498d46c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -636,11 +636,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 3)
 
-#define IS_CML_ULT(i915) \
+#define IS_COMETLAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_CML_ULX(i915) \
+#define IS_COMETLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_CML_GT2(i915)	(IS_COMETLAKE(i915) && \
+#define IS_COMETLAKE_GT2(i915)	(IS_COMETLAKE(i915) && \
 				 INTEL_INFO(i915)->gt == 2)
 
 #define IS_ICL_WITH_PORT_F(i915) \
-- 
2.34.1

