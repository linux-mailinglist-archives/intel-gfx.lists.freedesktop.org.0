Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1754355E6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 00:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE716EA05;
	Wed, 20 Oct 2021 22:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5996EA09
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 22:33:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="292356852"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="292356852"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 15:33:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800"; d="scan'208";a="527245529"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 20 Oct 2021 15:33:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Oct 2021 01:33:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 01:33:36 +0300
Message-Id: <20211020223339.669-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211020223339.669-1-ville.syrjala@linux.intel.com>
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Move function prototypes to the
 correct header
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

A bunch of function prototypes were left behind when the
plane/crtc code got reshuffled to new files. Move the
prototypes as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.h   | 5 +++++
 drivers/gpu/drm/i915/display/intel_psr.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_sprite.h | 4 ----
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index a5ae997581aa..22363fbbc925 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -9,10 +9,13 @@
 #include <linux/types.h>
 
 enum pipe;
+struct drm_display_mode;
 struct drm_i915_private;
 struct intel_crtc;
 struct intel_crtc_state;
 
+int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
+			     int usecs);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
 int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
@@ -21,5 +24,7 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
 void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
 void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
+void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state);
+void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 49c2dfbd4055..ccffe05784d3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -28,13 +28,13 @@
 
 #include "i915_drv.h"
 #include "intel_atomic.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
 #include "intel_hdmi.h"
 #include "intel_psr.h"
 #include "intel_snps_phy.h"
-#include "intel_sprite.h"
 #include "skl_universal_plane.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index c085eb87705c..4f63e4967731 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -27,14 +27,10 @@ struct intel_plane_state;
 #define VBLANK_EVASION_TIME_US 100
 #endif
 
-int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
-			     int usecs);
 struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 					      enum pipe pipe, int plane);
 int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv);
-void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state);
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state);
 
-- 
2.32.0

