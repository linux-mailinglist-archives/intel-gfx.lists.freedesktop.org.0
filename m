Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF255F602D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 06:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE6110E7DB;
	Thu,  6 Oct 2022 04:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E12E10E7D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665030993; x=1696566993;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W+C+Fb32cO/dXuLnbqlgL/j3gI0pF1wY+UuhBJLYQFk=;
 b=Y1wWKmo0mjURDv356EwujWdINkbpZ+Avwt5FCsVpJWe0dhALRRa9b1ER
 EdNTI/GvJfotQWiW9JEyxB2wOeYLVSAUlm+LQBzUj8sSvgvRHmTzGPKza
 s3yyW0WZsJ0p4ryx3bYYORas7YHZ+DXPOyvPZNB4qKcvRZdKu6WnlCoxQ
 g9jsaXQ/IArROPVoHbNfqP9ZIUj6QM3tGJus06tYa0Q4IKgr/28DCOmlN
 mevzgxzkMLywo6yHMSVYDz2kBLIvfFO1P22Kmdem2asY4vxNfXqpqksO7
 ypmZyuR5rKjplBKC/YHyIEhFAYOne33kHofP0hruFKil+mqzvcplbGxLN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="290599852"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="290599852"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 21:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="953462914"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="953462914"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2022 21:36:31 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 21:38:31 -0700
Message-Id: <20221006043834.606220-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915/pxp: Make intel_pxp_start
 implicitly sort PXP-owning-GT
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make intel_pxp_is_start implicitly find the PXP-owning-GT.
Callers of this function shall now pass in i915 since PXP
is a global GPU feature. Make intel_pxp_start implicitly
find the right gt to start PXP arb session so
it's transparent to the callers.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c        | 9 ++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h        | 2 +-
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 8443b485c62f..11bf0d48ef50 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -272,7 +272,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 		if (!intel_pxp_is_active(i915))
-			ret = intel_pxp_start(&to_gt(i915)->pxp);
+			ret = intel_pxp_start(i915);
 	}
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 57b4e9f9e4d1..944c8466f786 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -246,10 +246,17 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
  * the arb session is restarted from the irq work when we receive the
  * termination completion interrupt
  */
-int intel_pxp_start(struct intel_pxp *pxp)
+int intel_pxp_start(struct drm_i915_private *i915)
 {
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+	struct intel_pxp *pxp;
 	int ret = 0;
 
+	if (!gt)
+		return -ENODEV;
+
+	pxp = &gt->pxp;
+
 	if (!_pxp_is_enabled(pxp))
 		return -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 0219ff285788..61ef3bedc3a0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -26,7 +26,7 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
 
-int intel_pxp_start(struct intel_pxp *pxp);
+int intel_pxp_start(struct drm_i915_private *i915);
 
 int intel_pxp_key_check(struct intel_pxp *pxp,
 			struct drm_i915_gem_object *obj,
-- 
2.34.1

