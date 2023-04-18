Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7036E6B84
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0161B10E82F;
	Tue, 18 Apr 2023 17:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0075010E819
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840558; x=1713376558;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vTwqf4orEUV16ORi12FqS0PLQIDchcsNNzcGmCpSMyU=;
 b=ixrzFV6pYKwtIsxt+RHGQ9/Mqm4BF0I5IteyLPqJ144JZzSwYnanSoR2
 NoXD8n22TlBffEn1AWK7NNRCDenEyiR+vqNhY/23TJnUmzSwoBOiHscyU
 H2bJrEwQFsh4O1haLdfgxiteoj6IeZR9NLm+J9p+ONqCG3jvSTIXWIDeZ
 3ZGGcnjb7RmMv7kyLRNhIOmdpw7TU8+8PRB7YyVVcffuCSww2tw1Z6PQf
 Wthuf41LAjlmx1U2co9HO/prXULChrHzby+6ZkFcpcjblwokFT5yEyPlC
 XOCUR4T1uLrStP0o3dO4EM+NN9DdPbv7qIbBA4m+NUDi+vyMhiawPJS8I w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052762"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052762"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451650"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451650"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:15 +0300
Message-Id: <20230418175528.13117-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/15] drm/i915: Relocate VBLANK_EVASION_TIME_US
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

Move the VBLANK_EVASION_TIME_US definition to a slightly
better place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.h            | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.h          | 10 ----------
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 73077137fb99..51a4c8df9e65 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -16,6 +16,16 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 
+/*
+ * FIXME: We should instead only take spinlocks once for the entire update
+ * instead of once per mmio.
+ */
+#if IS_ENABLED(CONFIG_PROVE_LOCKING)
+#define VBLANK_EVASION_TIME_US 250
+#else
+#define VBLANK_EVASION_TIME_US 100
+#endif
+
 int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 			     int usecs);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index abd16a2b1f7a..e72288662f02 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -12,6 +12,7 @@
 #include "i915_debugfs.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_crtc_state_dump.h"
 #include "intel_display_debugfs.h"
@@ -30,7 +31,6 @@
 #include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
-#include "intel_sprite.h"
 #include "intel_wm.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index 4635c7ad23f9..91c6dca342b2 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -16,16 +16,6 @@ struct intel_crtc_state;
 struct intel_plane_state;
 enum pipe;
 
-/*
- * FIXME: We should instead only take spinlocks once for the entire update
- * instead of once per mmio.
- */
-#if IS_ENABLED(CONFIG_PROVE_LOCKING)
-#define VBLANK_EVASION_TIME_US 250
-#else
-#define VBLANK_EVASION_TIME_US 100
-#endif
-
 struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 					      enum pipe pipe, int plane);
 int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
-- 
2.39.2

