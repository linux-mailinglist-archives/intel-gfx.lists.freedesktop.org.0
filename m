Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532F2757645
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08B510E2F4;
	Tue, 18 Jul 2023 08:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6AD910E2F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667903; x=1721203903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ss59fhIeHfwknYurtotk4hIgcjPWkzLFXsTttG/JsX4=;
 b=JMf2hSDMj0DNf2V5jRXnAgiaoz7p3EWBhSWOsDHHPntOKCf6tI3f3m38
 BVVnIkZVpKei2gXcCvfNH7vt8MMvFIVHdnTJ4+yECIoHNTPsdsQBldTcW
 je2ujrRtKDweIWCm42JCfXrekUyVHaSppQ7Lt4KbsBA+wdh8LqsIoL3LM
 Kz9I7rAMnDPW8p9+lev/TVLtCWOJlF9eKnaTIln3FYIYHfpou7OJk0Fux
 AcKRl4PSFBqE02xLwWdpcrkRxwXSE9vzWTwjHqBrx9KABqchDndHaQP/H
 tIh6Tq8LXNzlC0WQPRePGu/bQkvMio1olRkBUdfW5S7uJKlAdqJA983hc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696560"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696560"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723518184"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723518184"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:38 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:06 +0530
Message-Id: <20230718081115.166212-7-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v1 06/15] drm/i915/cml: s/CML/COMETLAKE for
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

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <Anusha.Srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 786556921b98..1313e0a9586c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1718,9 +1718,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
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
index 97bc945f913e..1bf7525783b9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -637,11 +637,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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

