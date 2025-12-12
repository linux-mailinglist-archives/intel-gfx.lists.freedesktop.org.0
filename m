Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DBACB8F1C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DBBF10E811;
	Fri, 12 Dec 2025 14:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jC0C/+rL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCD210E7FD;
 Fri, 12 Dec 2025 14:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765548898; x=1797084898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fbulORUOdqtQaWuW5lFceKEocVyt6i4G6NZtilK+Qm4=;
 b=jC0C/+rLWuFuOAD7ZDrmNv8gLsAGV0kQTkuIDx7mLhT0fcmhw+B7OA5Z
 Yyitg1kESqxWASoTKxGsVqfht5ZjMHEw2bGbOTQ2ZbRf2o3oCVFmIadwr
 aQuNJ8vEVEIavrwZs0WEGAYR6yHr0Ry/Xap+bicLGby5i0r+AiQQgj9nO
 J6AaVGld6hXOnobb9f7qPs8ojAYXXXT8XMzJQLPlu/bdgYvWtoxUqtPj5
 4xtSO6c1dPxd4H7TkIWPGouH5UD7Z+wiXqnNhbJVsBQmuP3HdRtEfqmDz
 kflwnW6UzgiRR43m0fEB0qTO/AjATJv+8DKdbFVs42cUkgNDvbgEKiv7G g==;
X-CSE-ConnectionGUID: It0tIi9fQCW0BKym411XhQ==
X-CSE-MsgGUID: V7imTUPVRGm5BIrNSOzl/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71396220"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="71396220"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:57 -0800
X-CSE-ConnectionGUID: 6xvAN7XNTvSvwfpCoWOBEA==
X-CSE-MsgGUID: yXcTAlyjQ2Ozu9XSkXaUmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196708949"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:14:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 4/6] drm/i915: sort parent interface initialization
Date: Fri, 12 Dec 2025 16:14:07 +0200
Message-ID: <7f5deefc30703006bc2daa1ce1093a4947f6e049.1765548786.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765548786.git.jani.nikula@intel.com>
References: <cover.1765548786.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Sort the member initializers to improve clarity. Separate individual
function initializers with a blank line in between.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a341e2d46551..9bc5ef988be7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -742,16 +742,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
 }
 
-static bool vgpu_active(struct drm_device *drm)
-{
-	return intel_vgpu_active(to_i915(drm));
-}
-
-static bool has_fenced_regions(struct drm_device *drm)
-{
-	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
-}
-
 static void fence_priority_display(struct dma_fence *fence)
 {
 	if (dma_fence_is_i915(fence))
@@ -767,17 +757,28 @@ static bool has_auxccs(struct drm_device *drm)
 	       IS_METEORLAKE(i915);
 }
 
+static bool has_fenced_regions(struct drm_device *drm)
+{
+	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
+}
+
+static bool vgpu_active(struct drm_device *drm)
+{
+	return intel_vgpu_active(to_i915(drm));
+}
+
 static const struct intel_display_parent_interface parent = {
 	.hdcp = &i915_display_hdcp_interface,
+	.irq = &i915_display_irq_interface,
 	.panic = &i915_display_panic_interface,
 	.rpm = &i915_display_rpm_interface,
-	.irq = &i915_display_irq_interface,
 	.rps = &i915_display_rps_interface,
 	.stolen = &i915_display_stolen_interface,
-	.vgpu_active = vgpu_active,
-	.has_fenced_regions = has_fenced_regions,
+
 	.fence_priority_display = fence_priority_display,
 	.has_auxccs = has_auxccs,
+	.has_fenced_regions = has_fenced_regions,
+	.vgpu_active = vgpu_active,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
-- 
2.47.3

