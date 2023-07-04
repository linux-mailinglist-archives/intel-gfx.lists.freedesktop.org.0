Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19096746DF8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 11:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE0A10E2C2;
	Tue,  4 Jul 2023 09:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F18810E2C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688464145; x=1720000145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B9zu3dyr6/xgzsEYWsheTT1+l/XhHg1rHWn0oKwzpDw=;
 b=eCtoVPRHcg6/XPfoA9QzEWswVNIp/4WVRww0jhZOeWxqxtwNEQLYKYMJ
 lCWwzCoO2Z3pKEIxLqWLLydM3DEf4HxW/gsvEDwvO3itp91B08+78kThJ
 s4CnsVuNNTaOBBIwyoM5gZCsF7hliOh3ESu+ku/9rgz0FGbxiRpIQnk0v
 3pYDYQndoPAa22HM7+EEZCHLYwvIgV0pRiqzQXKvU6JslPm9ZTmKpHYVj
 KIUM7P2sqecPBL0p5iRJUn2S1fYJ1MYc5hp59LWOysZyAxGFNaga7RSZY
 LPFlrG8kX3f5M5qBuRZn+KruCx575feY/Vhxn+QTLJnbjs5M49L+jAPce A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="393829759"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="393829759"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:49:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="788804529"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="788804529"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:49:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 12:48:49 +0300
Message-Id: <4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1688463863.git.jani.nikula@intel.com>
References: <cover.1688463863.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uncore: optimize
 CONFIG_DRM_I915_DEBUG_MMIO=n more
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While the default for the mmio_debug parameter depends on
CONFIG_DRM_I915_DEBUG_MMIO, we look it up and include all the code for
unclaimed reg debugging even when CONFIG_DRM_I915_DEBUG_MMIO=n. Fix it.

Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index dfefad5a5fec..da2edde4b6f6 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1929,7 +1929,8 @@ static inline bool __must_check
 unclaimed_reg_debug_header(struct intel_uncore *uncore,
 			   const i915_reg_t reg, const bool read)
 {
-	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
+	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO) ||
+	    likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
 		return false;
 
 	/* interrupts are disabled and re-enabled around uncore->lock usage */
-- 
2.39.2

