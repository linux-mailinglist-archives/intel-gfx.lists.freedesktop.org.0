Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB9576402E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 22:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E883810E4B9;
	Wed, 26 Jul 2023 20:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3F010E4B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 20:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690402065; x=1721938065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZyBZoRJa2NkwFheXYBOwFjCpq2RC5S3QpQhCXALCCNI=;
 b=gA+ht/9v7N8C6zlgmNvqT1q+KO2l3sG22MsmceN1e9x4fxYteY7EfmQg
 WIOCcjpzgTKiypGwFiJFQvMQe9v6a/5483K7Ep2npZ+DIjJQ1/ywcy/mr
 A8POYt4oBQH+aPiS2OB7VzeZBL7GYBWJ0bdA8ID86s0Gu4yXv5JueR5HU
 zvfb1PYgtQ4i18iRDTrq4jTVkLR6M+66NJxgraA2OEFStwANcp6DBkdWR
 27XXtc7k/uPfBnPdUnEMJ0RwsyME7VbQRoxHHKmiyoHFI5FvCenM94aM8
 vF1GvBvTuSfhj83K2GEFphv5otX+bUm0rsjOFnfpJ5xYjhK1QPJmv4bKe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="399057799"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="399057799"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 13:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="720614538"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="720614538"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2023 13:07:18 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:36:50 +0530
Message-Id: <20230726200657.2773903-8-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/14] drm/i915/rkl: s/RKL/ROCKETLAKE for
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

Follow consistent naming convention. Replace RKL with
ROCKETLAKE.Replace IS_RKL_GRAPHICS_STEP with
IS_ROCKETLAKE && IS_DISPLAY_STEP.

v2:
- s/RKL/rkl in the subject prefix(Anusha)

v3:
- Unrolled wrapper IS_RKL_DISPLAY_STEP.
- Replace IS_PLATFORM && IS_DISPLAY_STEP (Jani/Tvrtko)

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 38225e5d311e..9e01054c2430 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1609,7 +1609,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
-	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	    (IS_ROCKETLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
 	else
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e6f77498d46c..f46846574420 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -660,8 +660,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_RKL_DISPLAY_STEP(p, since, until) \
-	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
-- 
2.34.1

