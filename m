Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 952DB94C0C9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E86110E774;
	Thu,  8 Aug 2024 15:16:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="adLAM3/0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED10210E770;
 Thu,  8 Aug 2024 15:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130196; x=1754666196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eBj5FCvS4XDON9d/2S9YZnsO/86gINDRJluXlLk8nIc=;
 b=adLAM3/0bO3SYJtqCOLoOVcsf2R3Xd6gI2r+N6+mdigTkwDFxtE4aRhb
 MnQQg0cfcax7Wdcg/fXIPcwzfMHZb3ReEotSQr5BfEnHJf4QAlIWX7qPr
 vm00YcfiVHidC6M8eLENbEXzH9L1vurI9ZMNkB+g/vR0AAdrOjZabMxv4
 ND0OSv3BIBCpyWI0U2xjGT5ai1rxs7ib8wtNSU7vEyv1rceJ+jVZbDi8k
 0x5myc7Hg0CFZ9VlJ7yKdsCq03SipighTa3pr6pLhfSrPibadg7FhXjrZ
 imKHK3dcWyeJ7LFZbHnUtO6vb/OrEoGX/l9bVlE/7ndHLkG8xEkLLuI7H A==;
X-CSE-ConnectionGUID: pGHXm5FNTPaTHb0u88L+Fg==
X-CSE-MsgGUID: bK6HASx3Q96yTNX/M7ZjgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="46667085"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="46667085"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:36 -0700
X-CSE-ConnectionGUID: fLDgmhXTTTyxU7YDrD8xiQ==
X-CSE-MsgGUID: F5eTjDkxR5qpHd5Xo32xig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="56920106"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 08/10] drm/i915/hdcp: migrate away from kdev_to_i915() in
 bind/unbind
Date: Thu,  8 Aug 2024 18:15:53 +0300
Message-Id: <69958dfc9f86e1b2be4d44e04d6995f49d824913.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
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

