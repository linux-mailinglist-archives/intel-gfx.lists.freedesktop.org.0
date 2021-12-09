Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB86E46EF3E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52C710E594;
	Thu,  9 Dec 2021 16:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5A710E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057898; x=1670593898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uIb31tU10Z7ejnMCVZdEQvc+FspX+OKZwgg2SDjiBEg=;
 b=k/RIjrMtrh2YFI5D2x7sy29vuBb5PQmHbd2Ae2uM8pYizIyD798h+i7Z
 NfZ/h3HJgLHsALgjQ3Uqakrk8c4kLqqrw32PgQ6srX2BGxVE0Lyx3a5z1
 dm0JMzjv73y4Nrw6fxBhFGHxJUd/I32RMP2g59Dqr2aomRjYz4K59SpPO
 fbonAj8m7VTNu0LUYt0MnNSiwlrMWsImw1sLV9rgN8VmULTHPZh2RTBKR
 XDqXjiYZE7xnRJw9S8Jvfn5B9NTQSHmP/qvU4VXyRWzqWo+L+srva/ogb
 gTcf9rcSWM6FFN41edkn0gAm2apLhsXy6U3/C9xczpdZcxsmk/atqtNTP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="224965694"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="224965694"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="543599125"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:51:01 +0200
Message-Id: <9d063d12963b995a5db90e05317f40907234956f.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/pxp: un-inline
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c |  5 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 14 ++++++++------
 2 files changed, 13 insertions(+), 6 deletions(-)

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
index aa262258d4d4..f9999ca8a6f1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -6,17 +6,14 @@
 #ifndef __INTEL_PXP_H__
 #define __INTEL_PXP_H__
 
-#include "intel_pxp_types.h"
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
@@ -48,6 +45,11 @@ static inline int intel_pxp_start(struct intel_pxp *pxp)
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

