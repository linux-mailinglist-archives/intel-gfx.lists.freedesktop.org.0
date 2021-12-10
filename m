Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D63470167
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 198AB10E2D7;
	Fri, 10 Dec 2021 13:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36B3610E2AB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142267; x=1670678267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+EC1SSg7KOtheSRLwDArYa6lKqe4j7CaBTZOHFsVlLc=;
 b=bNbds6eowkcJA+3/cgCoGPodC3uEGJOUhOzRiNbYATPtDCNiAj6JM5sG
 YkooWFz3/ovMcUUr5EvlsrLuqw9S/VA4nBPl2thbQwExrXEdlPTHbkgD1
 1t1T6zuHP801eXeEAAv2iN8UR2akIzqbF1mgowMPNaMQtY7yzjdpzgyNV
 /Y+mWoI29lFxzm9oMwImySXfSE6aLpoO7Xc1WhNbiFts0R3UP5OTuGBXz
 v6JgzBsei43+q4rFSokZUGuU4nAXZIdR5Egxsn7W8oWvSHm8FwnDivwac
 NeFP7w6kdGR0lHfZSrq4/ckpzAII02JsEgD3UIDV8YvhG/MWY30Fjz10h w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="299131005"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="299131005"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="680736262"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:17:00 +0200
Message-Id: <36bbb3708f3b1f84f0718afff94212dde93cb479.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
References: <cover.1639142167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915/pxp: un-inline
 intel_pxp_is_enabled()
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

In the interest of reducing include dependencies, un-inline
intel_pxp_is_enabled().

v2: Fix build for CONFIG_DRM_I915_PXP=n

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c |  5 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 15 +++++++++------
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index e2314ad9546d..15311eaed848 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -44,6 +44,11 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
 	return container_of(pxp, struct intel_gt, pxp);
 }
 
+bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
+{
+	return pxp->ce;
+}
+
 bool intel_pxp_is_active(const struct intel_pxp *pxp)
 {
 	return pxp->arb_is_valid;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index aa262258d4d4..73847e535cab 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -6,17 +6,15 @@
 #ifndef __INTEL_PXP_H__
 #define __INTEL_PXP_H__
 
-#include "intel_pxp_types.h"
+#include <linux/errno.h>
+#include <linux/types.h>
 
+struct intel_pxp;
 struct drm_i915_gem_object;
 
-static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
-{
-	return pxp->ce;
-}
-
 #ifdef CONFIG_DRM_I915_PXP
 struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
+bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
 bool intel_pxp_is_active(const struct intel_pxp *pxp);
 
 void intel_pxp_init(struct intel_pxp *pxp);
@@ -48,6 +46,11 @@ static inline int intel_pxp_start(struct intel_pxp *pxp)
 	return -ENODEV;
 }
 
+static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
+{
+	return false;
+}
+
 static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
 {
 	return false;
-- 
2.30.2

