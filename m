Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A956D421191
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 16:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94936E9D3;
	Mon,  4 Oct 2021 14:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE4AF6E9D3
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 14:37:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="311656754"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="311656754"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 07:33:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="558529441"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2021 07:33:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 17:33:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 17:33:40 +0300
Message-Id: <20211004143341.29673-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004143341.29673-1-ville.syrjala@linux.intel.com>
References: <20211004143341.29673-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/fbc: Hoist more stuff out from
 intel_fbc_hw_(de)activate()
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

Move more of the common stuff one level up from
intel_fbc_hw_(de)activate().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 32 ++++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1f66de77a6b1..ef2f1ece4a89 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -418,13 +418,6 @@ static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
 
 static void intel_fbc_hw_activate(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
-
-	trace_intel_fbc_activate(fbc->crtc);
-
-	fbc->active = true;
-	fbc->activated = true;
-
 	if (DISPLAY_VER(dev_priv) >= 7)
 		gen7_fbc_activate(dev_priv);
 	else if (DISPLAY_VER(dev_priv) >= 5)
@@ -437,12 +430,6 @@ static void intel_fbc_hw_activate(struct drm_i915_private *dev_priv)
 
 static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbc *fbc = &dev_priv->fbc;
-
-	trace_intel_fbc_deactivate(fbc->crtc);
-
-	fbc->active = false;
-
 	if (DISPLAY_VER(dev_priv) >= 5)
 		ilk_fbc_deactivate(dev_priv);
 	else if (IS_GM45(dev_priv))
@@ -467,6 +454,13 @@ bool intel_fbc_is_active(struct drm_i915_private *dev_priv)
 
 static void intel_fbc_activate(struct drm_i915_private *dev_priv)
 {
+	struct intel_fbc *fbc = &dev_priv->fbc;
+
+	trace_intel_fbc_activate(fbc->crtc);
+
+	fbc->active = true;
+	fbc->activated = true;
+
 	intel_fbc_hw_activate(dev_priv);
 	intel_fbc_recompress(dev_priv);
 }
@@ -478,10 +472,16 @@ static void intel_fbc_deactivate(struct drm_i915_private *dev_priv,
 
 	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
 
-	if (fbc->active)
-		intel_fbc_hw_deactivate(dev_priv);
-
 	fbc->no_fbc_reason = reason;
+
+	if (!fbc->active)
+		return;
+
+	trace_intel_fbc_deactivate(fbc->crtc);
+
+	intel_fbc_hw_deactivate(dev_priv);
+
+	fbc->active = false;
 }
 
 static u64 intel_fbc_cfb_base_max(struct drm_i915_private *i915)
-- 
2.32.0

