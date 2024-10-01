Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEC098C65F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 21:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D910310E67A;
	Tue,  1 Oct 2024 19:58:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSaIbDr5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6AB10E67A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 19:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727812694; x=1759348694;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JQ3efqQO0k6i4EOrDS/1PUF9UiStPZxE4Z5gEty9b38=;
 b=eSaIbDr5AWNLlyt0y3SMHvAbB/KFuo0sZd/QaRxznPEirbV3o+TWD4Mg
 SVPFEm05DTfvE545cXyZiV0KvaNGb4tnurE4mIi8fXZ51AELoAinsYqsf
 YbjmwqxnGbEx+boQ5bGXPVKiGZeejhAmkhkvA9w+XCRkoQ4wpZJsIQIow
 iLkfh9KKVl2uXUaPWKTQuqGf8rkAWgvkLuIWXzXClbh8HxS1kU3VzvFgP
 xUCXUlkB0xlJBpEoR/XBbZq5ABUx4ie5U9PkA1+/Rc+8SPEwJxduijE0q
 wjmlM5JGTXohGEbifAkDdip3YYg4BZWkXwYzNQ9208O8R9ANVX9iam/Ye Q==;
X-CSE-ConnectionGUID: OI2DCik8Smu+8qtdBRc95A==
X-CSE-MsgGUID: 0YSxw6eaQhCBuwIUa2oCEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26852040"
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="26852040"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 12:58:14 -0700
X-CSE-ConnectionGUID: sJAKcba+Qjyf9eZVkOHPUw==
X-CSE-MsgGUID: whZV4c7TSyOiaDRtANiVIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,169,1725346800"; d="scan'208";a="73899368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 12:58:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2024 22:58:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915: Extract i915gm_irq_cstate_wa_{disable, enable}()
Date: Tue,  1 Oct 2024 22:58:02 +0300
Message-ID: <20241001195803.3371-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the i915gm/i945gm vblank irq C-state workaround to
separate functions. We'll need to reuse these in order to
guarantee timely CRC interrupt delivery as well.

The irq.vblank_enabled count is currently protected by the
drm vblanl locks, so let's assert that the innermost of those
is held, in anticipation of other callers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 34 +++++++++++++------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 43a0b3565bc8..feeb3a29972a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1259,6 +1259,28 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 }
 
+static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
+{
+	lockdep_assert_held(&i915->drm.vblank_time_lock);
+
+	/*
+	 * Vblank interrupts fail to wake the device up from C2+.
+	 * Disabling render clock gating during C-states avoids
+	 * the problem. There is a small power cost so we do this
+	 * only when vblank interrupts are actually enabled.
+	 */
+	if (i915->display.irq.vblank_enabled++ == 0)
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+}
+
+static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
+{
+	lockdep_assert_held(&i915->drm.vblank_time_lock);
+
+	if (--i915->display.irq.vblank_enabled == 0)
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+}
+
 int i8xx_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
@@ -1287,14 +1309,7 @@ int i915gm_enable_vblank(struct drm_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->dev);
 
-	/*
-	 * Vblank interrupts fail to wake the device up from C2+.
-	 * Disabling render clock gating during C-states avoids
-	 * the problem. There is a small power cost so we do this
-	 * only when vblank interrupts are actually enabled.
-	 */
-	if (i915->display.irq.vblank_enabled++ == 0)
-		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+	i915gm_irq_cstate_wa_enable(i915);
 
 	return i8xx_enable_vblank(crtc);
 }
@@ -1305,8 +1320,7 @@ void i915gm_disable_vblank(struct drm_crtc *crtc)
 
 	i8xx_disable_vblank(crtc);
 
-	if (--i915->display.irq.vblank_enabled == 0)
-		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+	i915gm_irq_cstate_wa_disable(i915);
 }
 
 int i965_enable_vblank(struct drm_crtc *crtc)
-- 
2.45.2

