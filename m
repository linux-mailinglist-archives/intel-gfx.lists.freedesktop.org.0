Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E095C8FE86C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14EB10E114;
	Thu,  6 Jun 2024 14:07:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E/wC1yIk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E3610E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717682836; x=1749218836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7GhHi5Io+OIAGgKVgOzeCLVlAMCaGBz9Im8qqQiiDi0=;
 b=E/wC1yIk9xFi3nUTpYxmqHdqDN96hPc8JUMLEAa/DP9ank2ASNw4YXG9
 bMOTIaGgzjS33jS+jKDe8ICu0D/RtIusJV+VMpLB0QV0MdOhQWiF+1xKP
 7IxqwrC+YmcV5oF+BoQLVsWbt0mG1Efq8UlhWFjlnXNgsllFpRWBudmC2
 3CUZYXUFlJKHXKf9Ob2kVAdnciLPRdjQGvtyzYo4kYQmHlk6Zu2N4w+nL
 n4kNTT9bW6wVKlqqGIg35/FzvlpKgc2FhjH6FKReUVJ5DVZex41iS0jIM
 fQNju1+IMljRDmz7/AZMO/dA7NPtEiy2y9mmB4qZbk7Wkinn1Nul687/Q Q==;
X-CSE-ConnectionGUID: pYZjsi2UTPG9GAzSGiizcw==
X-CSE-MsgGUID: sexJqVxERVGjdeHzR0gWZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14471291"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14471291"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:07:15 -0700
X-CSE-ConnectionGUID: 2TrsnmPQTjqp2O9gvB3j6g==
X-CSE-MsgGUID: 2uJll4OnStemLa4MCEy/UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37984374"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:07:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/overlay: convert
 intel_overlay_print_error_state() to drm_printer
Date: Thu,  6 Jun 2024 17:07:05 +0300
Message-Id: <20240606140705.3072987-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240606140705.3072987-1-jani.nikula@intel.com>
References: <20240606140705.3072987-1-jani.nikula@intel.com>
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

Use the regular drm printer, so we can drop the i915_error_printf()
usage.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 11 +++++------
 drivers/gpu/drm/i915/display/intel_overlay.h |  6 +++---
 drivers/gpu/drm/i915/i915_gpu_error.c        |  2 +-
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 1c2099ed5514..b97087f8e311 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1485,15 +1485,14 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
 }
 
 void
-intel_overlay_print_error_state(struct drm_i915_error_state_buf *m,
+intel_overlay_print_error_state(struct drm_printer *p,
 				struct intel_overlay_error_state *error)
 {
-	i915_error_printf(m, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
-			  error->dovsta, error->isr);
-	i915_error_printf(m, "  Register file at 0x%08lx:\n",
-			  error->base);
+	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
+		   error->dovsta, error->isr);
+	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
 
-#define P(x) i915_error_printf(m, "    " #x ":	0x%08x\n", error->regs.x)
+#define P(x) drm_printf(p, "    " #x ": 0x%08x\n", error->regs.x)
 	P(OBUF_0Y);
 	P(OBUF_1Y);
 	P(OBUF_0U);
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
index c3f68fce6f08..f28a09c062d0 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.h
+++ b/drivers/gpu/drm/i915/display/intel_overlay.h
@@ -8,8 +8,8 @@
 
 struct drm_device;
 struct drm_file;
-struct drm_i915_error_state_buf;
 struct drm_i915_private;
+struct drm_printer;
 struct intel_overlay;
 struct intel_overlay_error_state;
 
@@ -24,7 +24,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 void intel_overlay_reset(struct drm_i915_private *dev_priv);
 struct intel_overlay_error_state *
 intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
-void intel_overlay_print_error_state(struct drm_i915_error_state_buf *e,
+void intel_overlay_print_error_state(struct drm_printer *p,
 				     struct intel_overlay_error_state *error);
 #else
 static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
@@ -55,7 +55,7 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
 {
 	return NULL;
 }
-static inline void intel_overlay_print_error_state(struct drm_i915_error_state_buf *e,
+static inline void intel_overlay_print_error_state(struct drm_printer *p,
 						   struct intel_overlay_error_state *error)
 {
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 3fee7ad0ec51..96c6cafd5b9e 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -905,7 +905,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
 	}
 
 	if (error->overlay)
-		intel_overlay_print_error_state(m, error->overlay);
+		intel_overlay_print_error_state(&p, error->overlay);
 
 	err_print_capabilities(m, error);
 	err_print_params(m, &error->params);
-- 
2.39.2

