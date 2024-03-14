Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E775887B8A2
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 08:38:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6622810F925;
	Thu, 14 Mar 2024 07:38:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzQ2cybI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE55010F916;
 Thu, 14 Mar 2024 07:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710401908; x=1741937908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9QkXmz6DOcMx3nA/vp4ANB1gB+2sq3rApEYyCSCKIcA=;
 b=FzQ2cybIgNXR63qHVtdvBXQhAF9TpuvdQj/kf94f0o2JHLFQOYGaEnqD
 t2anOz0PjVf/GR/yqdurcgjz9kED9+i+ytDhFX32FqS0n4JjSvOYHJfYA
 d3jQ80GEABStwtej5Zf0umdyCwB/dIhlabYTDvh8GU1Co+fz3HjyXCwal
 F2PrqW0ySOqzBlG7z3dY2WJPQw3BA44blmz1pKaw6iBUal7MdsLlMCs2I
 rGpz5uHz/elmQmO2WlA6t3obiHtWlhoJRzhfc6zt+tfF3QV9qTSDsermd
 X3ch6faAm2V+PoYk6FcA9KxsSXtoe7xxOfppMs1xVGGdNPaD/zWxYyI8F g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5330864"
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; 
   d="scan'208";a="5330864"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 00:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; d="scan'208";a="12216663"
Received: from rscales-mobl4.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.209.110])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 00:38:26 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v2 3/4] drm/i915/display: add module parameter to enable DMC
 wakelock
Date: Thu, 14 Mar 2024 09:37:51 +0200
Message-Id: <20240314073752.1245879-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240314073752.1245879-1-luciano.coelho@intel.com>
References: <20240314073752.1245879-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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

This feature should be disabled by default until properly tested and
mature.  Add a module parameter to enable the feature for testing,
while keeping it disabled by default for now.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c |  5 +++++
 drivers/gpu/drm/i915/display/intel_display_params.h |  1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 12 ++++++++----
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 11e03cfb774d..f40b223cc8a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -116,6 +116,11 @@ intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"(0=disabled, 1=enabled) "
 	"Default: 1");
 
+intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
+	"Enable DMC wakelock "
+	"(0=disabled, 1=enabled) "
+	"Default: 0");
+
 __maybe_unused
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
 			      const char *name, bool val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 6206cc51df04..bf8dbbdb20a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -46,6 +46,7 @@ struct drm_i915_private;
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
+	param(bool, enable_dmc_wl, false, 0400) \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 6eea81a76fa4..8ad6d70a01b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -120,7 +120,8 @@ void intel_dmc_wl_enable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (!i915->display.params.enable_dmc_wl ||
+	    DISPLAY_VER(i915) < 20)
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -147,7 +148,8 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (!i915->display.params.enable_dmc_wl ||
+	    DISPLAY_VER(i915) < 20)
 		return;
 
 	flush_delayed_work(&wl->work);
@@ -179,7 +181,8 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (!i915->display.params.enable_dmc_wl ||
+	    DISPLAY_VER(i915) < 20)
 		return;
 
 	if (!intel_dmc_wl_check_range(reg.reg))
@@ -214,7 +217,8 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (!i915->display.params.enable_dmc_wl ||
+	    DISPLAY_VER(i915) < 20)
 		return;
 
 	if (!intel_dmc_wl_check_range(reg.reg))
-- 
2.39.2

