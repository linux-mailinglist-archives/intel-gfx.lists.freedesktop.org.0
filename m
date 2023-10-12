Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3B47C6AC7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 12:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5DC10E499;
	Thu, 12 Oct 2023 10:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD1EF10E499
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 10:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697105857; x=1728641857;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I04XQ+cnSHnnmneO6rrrm1I5kAB19VQfW+V/Tmt/SE8=;
 b=m+XHrID/pzoHQd9Bz9OskQXIGEOCoU/zclvLemlobpV/iYVkGroAoZX2
 W6PH1yBXC/Scp/fcjqvZ2o05qmX0kwzVawqj+7ofzi16Kp0UM9QzItVpO
 AMOBYTtMFM2K9sFib627f6flNhImI1Lcp+0M6G0/oMDExocVV+7JLs73A
 IT2Y/PSCaK8BWhQPbtRpHhVzfCIpXzorg70sY3VCiHrKe/8TN8/uYpfOK
 bWoW2588/xshXoF9aMFGeiaGBH3gNtYDRcjlPuLir//SKI9z2avBaqFeV
 aVgO39AWmo8b9ynpmPmoXNt+sjARpDS4PqmoEBxr9kW9kof2r/w6b9D0j g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="383747653"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="383747653"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:17:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="878060191"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="878060191"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga004.jf.intel.com with ESMTP; 12 Oct 2023 03:17:35 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@intel.com
Date: Thu, 12 Oct 2023 15:38:34 +0530
Message-Id: <20231012100834.1333221-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove the modparam
 verbose_state_checks
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

By default warn_on are enabled, hence removing this module parameter.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/i915_params.c           | 4 ----
 drivers/gpu/drm/i915/i915_params.h           | 1 -
 3 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0e5dffe8f018..8e2453e010a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -552,7 +552,7 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 	struct drm_device *drm = &(__i915)->drm;			\
 	int __ret_warn_on = !!(condition);				\
 	if (unlikely(__ret_warn_on))					\
-		if (!drm_WARN(drm, i915_modparams.verbose_state_checks, format)) \
+		if (!drm_WARN(drm, true, format))			\
 			drm_err(drm, format);				\
 	unlikely(__ret_warn_on);					\
 })
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 036c4c3ed6ed..23453d9be175 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -162,10 +162,6 @@ i915_param_named(mmio_debug, int, 0400,
 	"Enable the MMIO debug code for the first N failures (default: off). "
 	"This may negatively affect performance.");
 
-/* Special case writable file */
-i915_param_named(verbose_state_checks, bool, 0600,
-	"Enable verbose logs (ie. WARN_ON()) in case of unexpected hw state conditions.");
-
 i915_param_named_unsafe(nuclear_pageflip, bool, 0400,
 	"Force enable atomic functionality on platforms that don't have full support yet.");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index d5194b039aab..af675618ab07 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -83,7 +83,6 @@ struct drm_printer;
 	param(bool, force_reset_modeset_test, false, 0600) \
 	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
 	param(bool, disable_display, false, 0400) \
-	param(bool, verbose_state_checks, true, 0) \
 	param(bool, nuclear_pageflip, false, 0400) \
 	param(bool, enable_dp_mst, true, 0600) \
 	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
-- 
2.25.1

