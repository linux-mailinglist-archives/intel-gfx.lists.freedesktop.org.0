Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CA1796DB0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 01:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0E310E738;
	Wed,  6 Sep 2023 23:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567D210E35B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 23:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694044062; x=1725580062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=96UtOko1Zd37NvI4pZVDZOa9IofUu5harWB4hFnHaaw=;
 b=QM3GQ2ZGguapQkRaL2lHO/xUcyPOKd899fQwRDqZzJA1fBxUfs+jh4Rr
 y/Opr09P36U6kokkVgB+ULHTRXWgPCq++UYucpcNF2oW6kprAKewP6ATb
 ORtT8OP+nsTueaid1pco4XlmaO7QAVBbv8XIxeuB50+FqYnyhoQvXyHRw
 z0acycJDor76cguk2zc/Z1zWm9YJqpiURe2GP6iX9ZulYTgeGdnNT97Sk
 sceqRPr/mDEBPysJVTDOpxmaCmDZWSntGAcFH8krxvxKU5GCBmvJiAR0G
 +9Dmm3LrEPpUGE5+eWGSwRIUdqgaRmeVabj4KkJMhaifYcS35y18zRzwp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357526295"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="357526295"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865363201"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="865363201"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 16:47:34 -0700
Message-ID: <20230906234732.3728630-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906234732.3728630-6-matthew.d.roper@intel.com>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Stop forcing clock gating init
 for future platforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the early days of i915, pretty much every platform needed to
initialize _something_ in the clock gating init functions.  In some
cases the items initialized were inside the GT (and really should have
been initialized through the GT workaround infrastructure instead).
In other cases they were display programming (sometimes not even related
to "clock gating" at all!) which probably needs to move inside the
display-specific code.  The number of initialization tasks that are
truly "clock gating" and don't fall within the GT or display domains is
relatively limited.  Let's stop forcing future platforms to always
define a clock gating init hook.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index c66eb6abd4a2..1f2e2d7087cb 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -835,9 +835,7 @@ CG_FUNCS(nop);
  */
 void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
 {
-	if (IS_METEORLAKE(i915))
-		i915->clock_gating_funcs = &nop_clock_gating_funcs;
-	else if (IS_PONTEVECCHIO(i915))
+	if (IS_PONTEVECCHIO(i915))
 		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
 	else if (IS_DG2(i915))
 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
@@ -845,7 +843,7 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
 		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
 	else if (IS_ALDERLAKE_P(i915))
 		i915->clock_gating_funcs = &adlp_clock_gating_funcs;
-	else if (GRAPHICS_VER(i915) == 12)
+	else if (DISPLAY_VER(i915) == 12)
 		i915->clock_gating_funcs = &gen12lp_clock_gating_funcs;
 	else if (GRAPHICS_VER(i915) == 11)
 		i915->clock_gating_funcs = &icl_clock_gating_funcs;
@@ -885,8 +883,6 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
 		i915->clock_gating_funcs = &i85x_clock_gating_funcs;
 	else if (GRAPHICS_VER(i915) == 2)
 		i915->clock_gating_funcs = &i830_clock_gating_funcs;
-	else {
-		MISSING_CASE(INTEL_DEVID(i915));
+	else
 		i915->clock_gating_funcs = &nop_clock_gating_funcs;
-	}
 }
-- 
2.41.0

