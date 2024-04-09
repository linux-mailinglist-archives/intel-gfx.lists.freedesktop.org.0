Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE5C89D931
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 14:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE0D1128A8;
	Tue,  9 Apr 2024 12:27:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f0GdPpFJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37E01128A8;
 Tue,  9 Apr 2024 12:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712665635; x=1744201635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/82hw8aPZ9+R/KfSj22M6kWZKlWA/qZK4TujlORiM5k=;
 b=f0GdPpFJ35un0a8EFoEUocUD/6+ijyUcqg+0dzGREber2c66bW2Mx5ey
 E/Hvue/HTnzrL4FzYCUuATJ1ODP1QeOUESvpSOZIjEqNfGTIVL/r3nx5K
 12T3F7ZGj3Nn1mTV0ikTb3EIUHEaVVD+NT6cGGDjQjrlRyMZlJMA98soW
 Gytpz1ETej9eyKzWeg0WgJsxhOsynfzz+MaYwYEQLqOrW7GfyOnlVK0BH
 mU4dRaB/Wt0DGDbgLudWd1c0R7aJ5iRSM/HrtlshEHoliLmXdAqTQpEWR
 4U0dBrr6p+/m1lapzriz/a94PD/k3uxCzRXCU5wLuRFwle6rflsCktXR5 w==;
X-CSE-ConnectionGUID: NtHeK9DcQR2Va95yinuXzg==
X-CSE-MsgGUID: U/W0uAX8T3CMvTUwgCxImQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="10948474"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="10948474"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:14 -0700
X-CSE-ConnectionGUID: 7XOdE+HqRkeZzkfEF+0A/g==
X-CSE-MsgGUID: uS+WH/CFR0GZWOpIAiKPVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24695754"
Received: from mserban-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.228])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net
Subject: [PATCH v3 3/7] drm/i915: add generic __to_intel_display()
Date: Tue,  9 Apr 2024 15:26:45 +0300
Message-Id: <bb9e39dd03ce14da19ff25c9f1c149bce88238a2.1712665176.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712665176.git.jani.nikula@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
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

Add generic __to_intel_display() macro that accepts either struct
drm_i915_private * or struct intel_display *. This is to be used for
transitional stuff that eventually needs to be converted to use struct
intel_display *, and therefore is not part of to_intel_display().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ee0d7d5f135d..4819f80942d3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -357,6 +357,17 @@ struct drm_i915_private {
 	 */
 };
 
+/*
+ * Transitional macro to optionally convert struct drm_i915_private * to struct
+ * intel_display *, also accepting the latter.
+ */
+#define __to_intel_display(p)						\
+	_Generic(p,							\
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
+		 const struct intel_display *: (p),			\
+		 struct intel_display *: (p))
+
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 {
 	return container_of(dev, struct drm_i915_private, drm);
-- 
2.39.2

