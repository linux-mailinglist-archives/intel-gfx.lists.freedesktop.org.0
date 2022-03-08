Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 458A54D1F46
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB2610E2DC;
	Tue,  8 Mar 2022 17:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D808A10E45A
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761306; x=1678297306;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vLxldgZX455BgAmsKI0ivxznPEYQG5pvWFnsApznGv4=;
 b=DnO8M0T0rqU8GdCXDnpGOLdWTs8gnJ6BIvUjcuHHfBwDQHAX38LnxsPA
 D26NSRd3+RxS9jW8SzRT6h2l93n4jhJtiG9ZHvLBS5a3Y6MsO88sg0ftl
 h3/zMt5P+e7cMPzj4DpBewCoHaEWOeJiMR9LISIuRdxdoMpA+djSHZEsf
 geXGeRn8//55ObLyo8MSbDtd6lHlCzWvbsQbPFMbOO1jC/05dwafDxjmh
 jlANVSpetqUzEOIl6E27lb6l3Zh/a/Rb3L8QZSWjcuu1NG/Out4BGTunz
 UHX8VVPtcLBngTQ/HV8xtPe1dDqBLpK9DZqlRCUiKf3z9JvJBCes1H9ZM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="341191389"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="341191389"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:32:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="553715954"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 08 Mar 2022 09:32:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 19:32:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 19:32:30 +0200
Message-Id: <20220308173230.4182-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Rename pre-icl SAGV
 enable/disable functions
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

Give the pre-icl SAGV control functions a skl_ prefix instead
of the intel_ prefix to make it a bit more clear that they
are not some kind of universal things that can be called on
any platform. Also make the functions void since we never
use the return value anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 32 ++++++++++++++------------------
 1 file changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 166246fa27e4..bd936d4c5b0f 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -57,7 +57,7 @@
 #include "vlv_sideband.h"
 #include "../../../platform/x86/intel_ips.h"
 
-static int intel_disable_sagv(struct drm_i915_private *dev_priv);
+static void skl_sagv_disable(struct drm_i915_private *dev_priv);
 
 struct drm_i915_clock_gating_funcs {
 	void (*init_clock_gating)(struct drm_i915_private *i915);
@@ -3707,7 +3707,7 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 	 * For icl+ this was already determined by intel_bw_init_hw().
 	 */
 	if (DISPLAY_VER(i915) < 11)
-		intel_disable_sagv(i915);
+		skl_sagv_disable(i915);
 
 	drm_WARN_ON(&i915->drm, i915->sagv_status == I915_SAGV_UNKNOWN);
 
@@ -3737,16 +3737,15 @@ static void intel_sagv_init(struct drm_i915_private *i915)
  *  - All planes can enable watermarks for latencies >= SAGV engine block time
  *  - We're not using an interlaced display configuration
  */
-static int
-intel_enable_sagv(struct drm_i915_private *dev_priv)
+static void skl_sagv_enable(struct drm_i915_private *dev_priv)
 {
 	int ret;
 
 	if (!intel_has_sagv(dev_priv))
-		return 0;
+		return;
 
 	if (dev_priv->sagv_status == I915_SAGV_ENABLED)
-		return 0;
+		return;
 
 	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
 	ret = snb_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
@@ -3761,26 +3760,24 @@ intel_enable_sagv(struct drm_i915_private *dev_priv)
 	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
 		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
 		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
-		return 0;
+		return;
 	} else if (ret < 0) {
 		drm_err(&dev_priv->drm, "Failed to enable SAGV\n");
-		return ret;
+		return;
 	}
 
 	dev_priv->sagv_status = I915_SAGV_ENABLED;
-	return 0;
 }
 
-static int
-intel_disable_sagv(struct drm_i915_private *dev_priv)
+static void skl_sagv_disable(struct drm_i915_private *dev_priv)
 {
 	int ret;
 
 	if (!intel_has_sagv(dev_priv))
-		return 0;
+		return;
 
 	if (dev_priv->sagv_status == I915_SAGV_DISABLED)
-		return 0;
+		return;
 
 	drm_dbg_kms(&dev_priv->drm, "Disabling SAGV\n");
 	/* bspec says to keep retrying for at least 1 ms */
@@ -3795,14 +3792,13 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
 		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
 		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
-		return 0;
+		return;
 	} else if (ret < 0) {
 		drm_err(&dev_priv->drm, "Failed to disable SAGV (%d)\n", ret);
-		return ret;
+		return;
 	}
 
 	dev_priv->sagv_status = I915_SAGV_DISABLED;
-	return 0;
 }
 
 static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
@@ -3815,7 +3811,7 @@ static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
 		return;
 
 	if (!intel_can_enable_sagv(i915, new_bw_state))
-		intel_disable_sagv(i915);
+		skl_sagv_disable(i915);
 }
 
 static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
@@ -3828,7 +3824,7 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 		return;
 
 	if (intel_can_enable_sagv(i915, new_bw_state))
-		intel_enable_sagv(i915);
+		skl_sagv_enable(i915);
 }
 
 static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
-- 
2.34.1

