Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 996444D3501
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E5310E45F;
	Wed,  9 Mar 2022 17:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF98910E45F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646845285; x=1678381285;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vLxldgZX455BgAmsKI0ivxznPEYQG5pvWFnsApznGv4=;
 b=ab3IlXBiMzT1m3FuXlFsIrY3PwlEa4/7fHet5zZrYAtuByq8XQjR+EUf
 L8EcXtqd5ctqaXQoTWQlyWe7NeSAgOlCXfU4hIt4E8JZU7VWYOKcBVVbM
 2jFq4nDLWsDC6UsPoX/+GjilYIjoxVX9+guGoaO+cduODY1RHY1ToKlzo
 JnnAuDDe9wFt7/6G/7Gef30SUdMjYXS8Uw3VOLFaPXlmq3HTkC8WBBG7f
 itt6E1u8OWNn+YvXlI8T7VzeCakouKXZeIIbvb+/PB1wSDQnyMZtZ5tCo
 gg9aIsw4A5SGihD+j9IublkT7pRBpdi71jFJnF+7kU8r3TXDemSoABhls A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="279758637"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="279758637"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 08:50:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="510548110"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 09 Mar 2022 08:50:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 18:50:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 18:49:45 +0200
Message-Id: <20220309164948.10671-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915: Rename pre-icl SAGV
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

