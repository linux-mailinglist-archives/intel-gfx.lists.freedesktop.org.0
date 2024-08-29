Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 277D69648FD
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F2910E6E6;
	Thu, 29 Aug 2024 14:48:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bKkptMLQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BCD10E6E0;
 Thu, 29 Aug 2024 14:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942921; x=1756478921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LjrvPluNJuTqFXxd55Vaj5+9M1aWfE90CXQRmKwVHxk=;
 b=bKkptMLQ7pqsIWWh4oxB0qxMPzYX1IKRJp+dJ6m6pB190zllAXhnRWVg
 INTAZljYgfBhXRUdzl8YwQAfmuEPSg88xRTn+hhIhJtSKQNcZKardbAeF
 8/cULtXUSaPtVOwh6RpIxCU0gcdnel3RO6DX7cYA7rk+ab7tLPTsg2Fbu
 Xica6ESoHX0+XqWJIkPu56o2M4wbgCWKC3aeEAu/sAwNMBgaFPHEktOEx
 /xNVmsSc625sEgBvcM9mGxtmHrHIjOx6cIRwXHyAsiyAL4ZoqJGN+Ljck
 2diC2gq1aBQLt8IZIwZXChAXWeY31+WVQAft1YhAilzCbd0MuRShDhDqn g==;
X-CSE-ConnectionGUID: YeRLyNUGR9W+Nsto6XQZWg==
X-CSE-MsgGUID: MId66JxFTKSOZSX3UNDSxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23059346"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23059346"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:29 -0700
X-CSE-ConnectionGUID: 6fozo+9vQb+EJ4AQkWdP2Q==
X-CSE-MsgGUID: elm9d+MdS2q59uO/t6AC6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63923418"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 4/6] drm/i915/hdcp: migrate away from kdev_to_i915() in
 bind/unbind
Date: Thu, 29 Aug 2024 17:47:46 +0300
Message-Id: <0beedaa438e912828b48d9980f017807e079d7ab.1724942754.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724942754.git.jani.nikula@intel.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
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
index 94418f218448..6980b98792c2 100644
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

