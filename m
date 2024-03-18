Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDD387EA38
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 14:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D3910F74F;
	Mon, 18 Mar 2024 13:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WvbJ5Ws4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604C510F74F;
 Mon, 18 Mar 2024 13:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710769105; x=1742305105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mCdSMUfq6nstTWjKtY5hhEi2Q94CFeV1UhqEmEv3iik=;
 b=WvbJ5Ws411/PdQ1XVDpscXiOKs4YFnDVZmuRXqHC98e6oZHCSepGZdyp
 qtdSnnvXSP3pQ1ESOjnMHSMHYeeJgOvyceRhfwkPCpWOJcyAP8jYa4exx
 cet9c9GVm6xrp+0mBG2SQsQk80PaW0uBjdjzrX84+xm9JlDwykpGSNb30
 3WkXby4TAMn9k+02lgH/s0uhnnifmIL7nMm9wOABNiAufpDMWQpmNQiMp
 2/AQPLDfRYU35K6+OYrg5QXzdClwMZsrfpPGZBGs7dTF5Ei9oB8R2dmaF
 BdVvxfTefFC+wkWI9+M3pewoNlOnn63K6eelYr710oAZ9YeNQR8eb/Va/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16218024"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16218024"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13570081"
Received: from dcroitox-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.210.126])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:22 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v3 3/4] drm/i915/display: add module parameter to enable DMC
 wakelock
Date: Mon, 18 Mar 2024 15:37:56 +0200
Message-Id: <20240318133757.1479189-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240318133757.1479189-1-luciano.coelho@intel.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
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
index 7c991e22c616..84d054bcb2c1 100644
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
@@ -146,7 +147,8 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (!i915->display.params.enable_dmc_wl ||
+	    DISPLAY_VER(i915) < 20)
 		return;
 
 	flush_delayed_work(&wl->work);
@@ -177,7 +179,8 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (!i915->display.params.enable_dmc_wl ||
+	    DISPLAY_VER(i915) < 20)
 		return;
 
 	if (!intel_dmc_wl_check_range(reg.reg))
@@ -212,7 +215,8 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (!i915->display.params.enable_dmc_wl ||
+	    DISPLAY_VER(i915) < 20)
 		return;
 
 	if (!intel_dmc_wl_check_range(reg.reg))
-- 
2.39.2

