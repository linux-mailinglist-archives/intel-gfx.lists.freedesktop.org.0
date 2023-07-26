Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C0F764026
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 22:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C154410E4CE;
	Wed, 26 Jul 2023 20:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0692A10E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 20:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690402063; x=1721938063;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fg8Oz3ITCIL8vi4apGEbzjeWKFONOZemTwtIZGiYVrM=;
 b=JFSo7YqxPfUKQL84i0CcQmp1lUOOXhO7NeaH0SiVkU3xuwuY55QxV0vG
 N5utlC6J5R89awMmY/F35Xbn+7OiDPM+wsWkcw+LpwpcWk+6PFb5Z/YjA
 i8gVYIolK1qzaQWFY6fvauDnt9OAQh+5dK8n1AtuVIAeWNsPQH8KDjjRN
 85PSTNJSnjjafUbupeCTayq0Ca81SWNsegA+kd/a9ebr+zR3dqodpnWDn
 we4hWJ6jlesSverdCrOV7N6lUtWExBYWQjIUaNaqrXO2gA8D8MH4nUxai
 /ce/b7U7d4HgZ06QWj9yjfXuS5CwhaWsagYxlQVx2U9ZkYt/9d7DLyxyG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="399057784"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="399057784"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 13:07:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="720614535"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="720614535"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2023 13:07:16 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:36:49 +0530
Message-Id: <20230726200657.2773903-7-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/14] drm/i915/cml: s/CML/COMETLAKE for
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

