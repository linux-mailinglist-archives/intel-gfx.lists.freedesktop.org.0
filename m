Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2425B1CA1D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D61110E7BC;
	Wed,  6 Aug 2025 16:56:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hwr9stq0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA4A10E7B1;
 Wed,  6 Aug 2025 16:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499375; x=1786035375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=atmjBV7tv9Oqm3Hf726G384RKR0FwyA4on3gRYmM3TQ=;
 b=hwr9stq0KJfLnZ3SqPeSMcCGxk/H6FHILzxGGBytPWGS7bG5Vqi4gMt7
 cpS4nexo3wDrbqHhguBwwM/V333rVrHaCL4mvaQKYmMQjwlq5ezRDdDHq
 j09ptASHUAFZA1qQ0oivv0JsICHm+0FYGD5qnJ5FVmXCnC40bu0RF5WX+
 ZttkULXGTIzWVDmyRbgDWVLul75Z+QPCXmi6ln8u+Lz8SGXL0gwleJOIw
 3fcbeLTSetmRNFRids8CnzHLnn+iShXxPW85i8y+wvS88X2D3cCyLYSwC
 kVNOzbtyZTyS4naXZKTntbDEJ5glWiT5EdpyKhIT9znb+mduZ9oHmh4/H Q==;
X-CSE-ConnectionGUID: ViQP5fqAROmQ0mZSx3zWqA==
X-CSE-MsgGUID: 9YcVaY3PT665dpiPFS9xdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60455993"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60455993"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:15 -0700
X-CSE-ConnectionGUID: BS84kCQ2QP2f+o34sQV/aA==
X-CSE-MsgGUID: sE4ZQ1h6QRa9MPe7++A1cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165164840"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/15] drm/i915/drv: pass display to HAS_DISPLAY()
Date: Wed,  6 Aug 2025 19:55:12 +0300
Message-Id: <e1789e82d876eabef550abf537ca5dd2b71cbe6c.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
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

Underneath, HAS_DISPLAY() really expects a struct intel_display. Switch
to it in preparation for removing the transitional __to_intel_display()
macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c6263c6d3384..70f042ce8705 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -977,7 +977,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_power_domains_disable(display);
 
 	drm_client_dev_suspend(&i915->drm, false);
-	if (HAS_DISPLAY(i915)) {
+	if (HAS_DISPLAY(display)) {
 		drm_kms_helper_poll_disable(&i915->drm);
 		intel_display_driver_disable_user_access(display);
 
@@ -989,7 +989,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_irq_suspend(i915);
 	intel_hpd_cancel_work(display);
 
-	if (HAS_DISPLAY(i915))
+	if (HAS_DISPLAY(display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -1060,7 +1060,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	 * properly. */
 	intel_power_domains_disable(display);
 	drm_client_dev_suspend(dev, false);
-	if (HAS_DISPLAY(dev_priv)) {
+	if (HAS_DISPLAY(display)) {
 		drm_kms_helper_poll_disable(dev);
 		intel_display_driver_disable_user_access(display);
 	}
@@ -1072,7 +1072,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(display);
 
-	if (HAS_DISPLAY(dev_priv))
+	if (HAS_DISPLAY(display))
 		intel_display_driver_suspend_access(display);
 
 	intel_encoder_suspend_all(display);
@@ -1219,7 +1219,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	 */
 	intel_irq_resume(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
+	if (HAS_DISPLAY(display))
 		drm_mode_config_reset(dev);
 
 	i915_gem_resume(dev_priv);
@@ -1228,14 +1228,14 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_clock_gating_init(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
+	if (HAS_DISPLAY(display))
 		intel_display_driver_resume_access(display);
 
 	intel_hpd_init(display);
 
 	intel_display_driver_resume(display);
 
-	if (HAS_DISPLAY(dev_priv)) {
+	if (HAS_DISPLAY(display)) {
 		intel_display_driver_enable_user_access(display);
 		drm_kms_helper_poll_enable(dev);
 	}
-- 
2.39.5

