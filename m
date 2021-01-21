Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD8C2FF005
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 17:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE136E90C;
	Thu, 21 Jan 2021 16:19:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2B66E90C
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:19:53 +0000 (UTC)
IronPort-SDR: kUjwe9A8JYClIJkF4hRI4XcjLbm8GkPkMPaVq8n8oCAwCqHT3gkWdjzQt+Fa6y9unMdyuKx2WC
 ygRocAcJX5gA==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="179377928"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="179377928"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 08:19:52 -0800
IronPort-SDR: +qEeDVteZmWeTNWc0b9/OLQO6ttIIeN0QcUepVmTpnlo7Mk0msYVYZS1gnErYTTVgeeAu/QYhf
 +DAtixacrmTg==
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="385364571"
Received: from pscheper-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.50.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 08:19:50 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 16:19:36 +0000
Message-Id: <20210121161936.746591-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210121161936.746591-1-tvrtko.ursulin@linux.intel.com>
References: <20210121161936.746591-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Decrease number of subplatform
 bits
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Commit 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML") removed the
only platform which used bit 2 so could also decrease the
INTEL_SUBPLATFORM_BITS definition.

This is not a fixes material but still lets make it precise.

v2:
 * Fix assert in intel_device_info_subplatform_init by introducing
   INTEL_SUBPLATFORM_MASK. (Chris)
 * Update intel_subplatform().

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: 6ce1c33d6c36 ("drm/i915: Kill INTEL_SUBPLATFORM_AML")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/intel_device_info.c | 2 +-
 drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c31d2776134a..7efb501e22d2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1343,7 +1343,7 @@ intel_subplatform(const struct intel_runtime_info *info, enum intel_platform p)
 {
 	const unsigned int pi = __platform_mask_index(info, p);
 
-	return info->platform_mask[pi] & ((1 << INTEL_SUBPLATFORM_BITS) - 1);
+	return info->platform_mask[pi] & INTEL_SUBPLATFORM_MASK;
 }
 
 static __always_inline bool
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 699412c14c1d..7d98a718a051 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -223,7 +223,7 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 		}
 	}
 
-	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_BITS);
+	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
 
 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
 }
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 79dab5a6f272..e6ca1023ffcf 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -93,7 +93,8 @@ enum intel_platform {
  * it is fine for the same bit to be used on multiple parent platforms.
  */
 
-#define INTEL_SUBPLATFORM_BITS (3)
+#define INTEL_SUBPLATFORM_BITS (2)
+#define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
 
 /* HSW/BDW/SKL/KBL/CFL */
 #define INTEL_SUBPLATFORM_ULT	(0)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
