Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D79487B8A1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 08:38:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0566E10F921;
	Thu, 14 Mar 2024 07:38:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R/maEplT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D034210F917;
 Thu, 14 Mar 2024 07:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710401906; x=1741937906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8gYYnCrWhANAQrLxbbg3Xpdt+BjrBK5CA1fcxrWBMcQ=;
 b=R/maEplTCbdd9BJbiYh6Jt0ANc1Li3Z+9XuW8gRltyCJ8Zz8DS+n8Wl0
 Ys3OQpu+467nbAGKPSxReiifXdto9c5QOqJQR47XS7FgZ+v21IrTdkOcg
 F5pLaqn33ONOFP0BQ9+d+4UT1yw3wVuHCZO+wy7NjHLR5FPXLtMCG2dOh
 3HzT79J4LqrvDaR3EDpgVY9gIjzXTMCOGJvJPr0IwguiWD0PSoSqiCSgu
 2DIabKUiBBs/Yb0/pC71SBEq8vtkcgzHNewjBFPMB7tvoSQuxzSrbQc2T
 4RIR6QdnLzT3gOMv2ncKrKqW3mdE+1OjMmFI+3VII0Qbbl9jhOfjAqwbZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5330861"
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; 
   d="scan'208";a="5330861"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 00:38:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,124,1708416000"; d="scan'208";a="12216658"
Received: from rscales-mobl4.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.209.110])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 00:38:24 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v2 2/4] drm/i915/display: don't allow DMC wakelock on older
 hardware
Date: Thu, 14 Mar 2024 09:37:50 +0200
Message-Id: <20240314073752.1245879-3-luciano.coelho@intel.com>
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

Only allow running DMC wakelock code if the display version is 20 or
greater.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 7e5d325f5d55..6eea81a76fa4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -120,6 +120,9 @@ void intel_dmc_wl_enable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	spin_lock_irqsave(&wl->lock, flags);
 
 	if (wl->enabled)
@@ -144,6 +147,9 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	flush_delayed_work(&wl->work);
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -173,6 +179,9 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
@@ -205,6 +214,9 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
-- 
2.39.2

