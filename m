Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4729493F7FA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E664710E3F0;
	Mon, 29 Jul 2024 14:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gZNWkXyw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B678010E3F0;
 Mon, 29 Jul 2024 14:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263456; x=1753799456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SWNyhSySaAB0wJ1MACHc3/CMFbkF9P4/67kFX09ZhpU=;
 b=gZNWkXywmhQ6wuyq99vM+eWDV4/5o21sjtxleKsAmjXRqRRdmUVRynW8
 T0QrxVfdAhTzBPy3Jy3WwmcvgdQkm6L7tIErgrIsKvFuSFzU9zUb+rWj+
 1iUIsdaLRDjWi37C9wB56+S0wcLaTVeg45Kppc9aQKX5mk8n/N85AUmqW
 UJLtxeWc4kht4NI9m0mLbULp0zjWd+R09PBJbVyg5riYl+p5Lwa01naDj
 dSwhz36p64M0ku26fe/VdfUHKQQENh+LeK3S0yhdVsk1d4wNvWUSetGPs
 FsY4nqxaUbtNehww0aXlM8KDbp+qX3jHaLynoqv9CWCmeSbqxokzQDD/p w==;
X-CSE-ConnectionGUID: ais2upEgR2+apPs1FkE95Q==
X-CSE-MsgGUID: Qu2jQhv8QfqjFEEgbI3uGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19823137"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19823137"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:56 -0700
X-CSE-ConnectionGUID: yD5HY3ktSLuC9ETu09Fh3A==
X-CSE-MsgGUID: b6KNgjt8RuGfeWn8S9gVXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53651656"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/10] drm/i915/hdcp: migrate away from kdev_to_i915() in
 bind/unbind
Date: Mon, 29 Jul 2024 17:30:09 +0300
Message-Id: <8fd1d38013e3778f40edc574aa135a08b6e0e51e.1722263308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
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

Use to_intel_display() instead of kdev_to_i915() in the HDCP component
API hooks. Avoid further drive-by changes at this point, and just
convert the display pointer to i915, and leave the struct intel_display
conversion for later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 05402ae6b569..42f8f9d41de6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2181,10 +2181,11 @@ static void intel_hdcp_check_work(struct work_struct *work)
 				   DRM_HDCP_CHECK_PERIOD_MS);
 }
 
-static int i915_hdcp_component_bind(struct device *i915_kdev,
+static int i915_hdcp_component_bind(struct device *drv_kdev,
 				    struct device *mei_kdev, void *data)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_display *display = to_intel_display(drv_kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
 	mutex_lock(&i915->display.hdcp.hdcp_mutex);
@@ -2195,10 +2196,11 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 	return 0;
 }
 
-static void i915_hdcp_component_unbind(struct device *i915_kdev,
+static void i915_hdcp_component_unbind(struct device *drv_kdev,
 				       struct device *mei_kdev, void *data)
 {
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_display *display = to_intel_display(drv_kdev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
 	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-- 
2.39.2

