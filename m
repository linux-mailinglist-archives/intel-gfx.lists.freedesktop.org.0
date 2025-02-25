Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6D5A43D24
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:14:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D825310E623;
	Tue, 25 Feb 2025 11:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iCrrY5ra";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691EE10E623;
 Tue, 25 Feb 2025 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482094; x=1772018094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F+qWlkNIqyxME8Xa+k4WSmM6t0L1U3HqW6qlEV1PWJM=;
 b=iCrrY5ra7qf4MqC+T7UdVNh3ZceKktj+dZ1581Z3i7xjB0rE8tjG/J3A
 GX9psM9GFOLMc1WkEKnisxKd5l4GadqSqlNiUF79sp3CUhrSZAimUl/pT
 fvcZT6uJ0k8H7TUqVSENF5O4JMYhBkgEopnBb5EwulilRQLiPHpiA7dak
 Y7YKTrRwWyqJtRdw59JmQkXSwfQyLKe4xKf8E1aSmqhG3Q3aohr8PTNaE
 qipgEccw3kB+QbDDl6THVjfgHu++JjisrYlKYJwoLhYZhFK5rdhve10dn
 9mnuuOj6ynfU0IC1chcthruoo0ELoY3W/TVLV/bTCY6864ptFiSDH7hui g==;
X-CSE-ConnectionGUID: iuWgIVLWSaOBYLcJYQ1bag==
X-CSE-MsgGUID: 2eZatHAbT9iyHRUYzQjPyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="44106551"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="44106551"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:53 -0800
X-CSE-ConnectionGUID: s0yQEd6nTGWf+CZNguaMtQ==
X-CSE-MsgGUID: tj1e7ISyRp6AhUs+YQI5sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121612211"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 5/8] drm/i915/reset: add wrappers for display reset calls
Date: Tue, 25 Feb 2025 13:14:19 +0200
Message-Id: <9619e1fca5599e7703d4847f92a92aef82f847b6.1740481927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740481927.git.jani.nikula@intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

More of the gt side of display reset will be moved away from
display. Add small wrappers for display reset calls to not clutter the
gt reset part of things.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 835c9081b239..d424ffb43aa7 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1400,6 +1400,22 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	return err;
 }
 
+static void display_reset_prepare(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_display *display = &i915->display;
+
+	intel_display_reset_prepare(display);
+}
+
+static void display_reset_finish(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_display *display = &i915->display;
+
+	intel_display_reset_finish(display);
+}
+
 static void intel_gt_reset_global(struct intel_gt *gt,
 				  u32 engine_mask,
 				  const char *reason)
@@ -1417,14 +1433,11 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 
 	/* Use a watchdog to ensure that our reset completes */
 	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
-		struct drm_i915_private *i915 = gt->i915;
-		struct intel_display *display = &i915->display;
-
-		intel_display_reset_prepare(display);
+		display_reset_prepare(gt);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-		intel_display_reset_finish(display);
+		display_reset_finish(gt);
 	}
 
 	if (!test_bit(I915_WEDGED, &gt->reset.flags))
-- 
2.39.5

