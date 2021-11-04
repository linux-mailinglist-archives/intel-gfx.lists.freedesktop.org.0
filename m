Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7F14455A1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 231626E4FF;
	Thu,  4 Nov 2021 14:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8426E4FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="317919032"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="317919032"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="585966416"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 04 Nov 2021 07:45:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:13 +0200
Message-Id: <20211104144520.22605-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/17] drm/i915/fbc: Introduce
 intel_fbc_set_false_color()
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

Pull the direct FBC register frobbing out from the debugfs code
into the fbc code. Also add a vfunc for this so we don't need
extra platforms checks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 18 +------------
 drivers/gpu/drm/i915/display/intel_fbc.c      | 27 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h      |  2 ++
 3 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 19bc148e168c..1a9210739727 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -70,9 +70,6 @@ static int i915_fbc_false_color_get(void *data, u64 *val)
 {
 	struct drm_i915_private *dev_priv = data;
 
-	if (DISPLAY_VER(dev_priv) < 7 || !HAS_FBC(dev_priv))
-		return -ENODEV;
-
 	*val = dev_priv->fbc.false_color;
 
 	return 0;
@@ -81,21 +78,8 @@ static int i915_fbc_false_color_get(void *data, u64 *val)
 static int i915_fbc_false_color_set(void *data, u64 val)
 {
 	struct drm_i915_private *dev_priv = data;
-	u32 reg;
 
-	if (DISPLAY_VER(dev_priv) < 7 || !HAS_FBC(dev_priv))
-		return -ENODEV;
-
-	mutex_lock(&dev_priv->fbc.lock);
-
-	reg = intel_de_read(dev_priv, ILK_DPFC_CONTROL);
-	dev_priv->fbc.false_color = val;
-
-	intel_de_write(dev_priv, ILK_DPFC_CONTROL,
-		       val ? (reg | FBC_CTL_FALSE_COLOR) : (reg & ~FBC_CTL_FALSE_COLOR));
-
-	mutex_unlock(&dev_priv->fbc.lock);
-	return 0;
+	return intel_fbc_set_false_color(dev_priv, val);
 }
 
 DEFINE_SIMPLE_ATTRIBUTE(i915_fbc_false_color_fops,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0cbd0e302320..b13a776cb3dc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -55,6 +55,7 @@ struct intel_fbc_funcs {
 	bool (*is_compressing)(struct drm_i915_private *i915);
 	void (*nuke)(struct drm_i915_private *i915);
 	void (*program_cfb)(struct drm_i915_private *i915);
+	void (*set_false_color)(struct drm_i915_private *i915, bool enable);
 };
 
 /*
@@ -538,6 +539,13 @@ static bool ivb_fbc_is_compressing(struct drm_i915_private *i915)
 		return intel_de_read(i915, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
 }
 
+static void ivb_fbc_set_false_color(struct drm_i915_private *i915,
+				    bool enable)
+{
+	intel_de_rmw(i915, ILK_DPFC_CONTROL,
+		     FBC_CTL_FALSE_COLOR, enable ? FBC_CTL_FALSE_COLOR : 0);
+}
+
 static const struct intel_fbc_funcs ivb_fbc_funcs = {
 	.activate = ivb_fbc_activate,
 	.deactivate = ilk_fbc_deactivate,
@@ -545,6 +553,7 @@ static const struct intel_fbc_funcs ivb_fbc_funcs = {
 	.is_compressing = ivb_fbc_is_compressing,
 	.nuke = snb_fbc_nuke,
 	.program_cfb = ilk_fbc_program_cfb,
+	.set_false_color = ivb_fbc_set_false_color,
 };
 
 static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
@@ -593,6 +602,24 @@ static void intel_fbc_nuke(struct drm_i915_private *i915)
 	fbc->funcs->nuke(i915);
 }
 
+int intel_fbc_set_false_color(struct drm_i915_private *i915, bool enable)
+{
+	struct intel_fbc *fbc = &i915->fbc;
+
+	if (!fbc->funcs || !fbc->funcs->set_false_color)
+		return -ENODEV;
+
+	mutex_lock(&fbc->lock);
+
+	fbc->false_color = enable;
+
+	fbc->funcs->set_false_color(i915, enable);
+
+	mutex_unlock(&fbc->lock);
+
+	return 0;
+}
+
 /**
  * intel_fbc_is_active - Is FBC active?
  * @dev_priv: i915 device instance
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index b2c9e441edbd..4d1f2a76ccb4 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -37,5 +37,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 void intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv);
 void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *dev_priv);
 int intel_fbc_reset_underrun(struct drm_i915_private *dev_priv);
+int intel_fbc_set_false_color(struct drm_i915_private *i915,
+			      bool enable);
 
 #endif /* __INTEL_FBC_H__ */
-- 
2.32.0

