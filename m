Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C5445B93A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D45B6E84C;
	Wed, 24 Nov 2021 11:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B426A6E88D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="296064402"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="296064402"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="591542938"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 24 Nov 2021 03:37:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:44 +0200
Message-Id: <20211124113652.22090-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/20] drm/i915/fbc: Introduce
 intel_fbc_add_plane()
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

In order to better encapsulate the FBC implementation
introduce a small helper to do the plane<->FBC instance
association.

We'll also try to structure the plane init code such
that introducing multiple FBC instances will be easier
down the line.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c         | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_fbc.c          |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h          |  2 ++
 .../gpu/drm/i915/display/skl_universal_plane.c    | 15 +++++++++++----
 4 files changed, 33 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 2194f74101ae..84f50c90728f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -13,6 +13,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_fbc.h"
 #include "intel_sprite.h"
 #include "i9xx_plane.h"
 
@@ -120,6 +121,15 @@ static bool i9xx_plane_has_fbc(struct drm_i915_private *dev_priv,
 		return i9xx_plane == PLANE_A;
 }
 
+static struct intel_fbc *i9xx_plane_fbc(struct drm_i915_private *dev_priv,
+					enum i9xx_plane_id i9xx_plane)
+{
+	if (i9xx_plane_has_fbc(dev_priv, i9xx_plane))
+		return &dev_priv->fbc;
+	else
+		return NULL;
+}
+
 static bool i9xx_plane_has_windowing(struct intel_plane *plane)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
@@ -807,10 +817,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	plane->id = PLANE_PRIMARY;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
 
-	if (i9xx_plane_has_fbc(dev_priv, plane->i9xx_plane))
-		plane->fbc = &dev_priv->fbc;
-	if (plane->fbc)
-		plane->fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
+	intel_fbc_add_plane(i9xx_plane_fbc(dev_priv, plane->i9xx_plane), plane);
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		formats = vlv_primary_formats;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ee4e3186cc9c..9be8e7dcaab6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1612,6 +1612,15 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 	return false;
 }
 
+void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
+{
+	if (!fbc)
+		return;
+
+	plane->fbc = fbc;
+	fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
+}
+
 /**
  * intel_fbc_init - Initialize FBC
  * @i915: the i915 device
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 0f5884f1e095..b8d9cda85cfc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -15,6 +15,7 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_fbc;
+struct intel_plane;
 struct intel_plane_state;
 
 int intel_fbc_atomic_check(struct intel_atomic_state *state);
@@ -33,6 +34,7 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
 			  enum fb_op_origin origin);
 void intel_fbc_flush(struct drm_i915_private *dev_priv,
 		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
+void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
 void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915);
 void intel_fbc_reset_underrun(struct drm_i915_private *i915);
 void intel_fbc_debugfs_register(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 28890876bdeb..22ec6901ee30 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -13,6 +13,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_fbc.h"
 #include "intel_pm.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
@@ -1815,6 +1816,15 @@ static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
 	return pipe == PIPE_A && plane_id == PLANE_PRIMARY;
 }
 
+static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
+				       enum pipe pipe, enum plane_id plane_id)
+{
+	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
+		return &dev_priv->fbc;
+	else
+		return NULL;
+}
+
 static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
 				 enum pipe pipe, enum plane_id plane_id)
 {
@@ -2101,10 +2111,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	plane->id = plane_id;
 	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane_id);
 
-	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
-		plane->fbc = &dev_priv->fbc;
-	if (plane->fbc)
-		plane->fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
+	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
-- 
2.32.0

