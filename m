Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E930C8569BA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 564B710E9D3;
	Thu, 15 Feb 2024 16:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lqiuzzUx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD1810E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015273; x=1739551273;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VRgIZEQH2Dj/epxKWfT2uZT4V3KyKZIHC4VJ+8VMtqM=;
 b=lqiuzzUxvK2o8vXsTllJ+mriQjqeEXaXgQZNdI6HAbAc5JPIFKWJVWu9
 YynyrHRTGfqxu0Qv1rMLo+QGY2RIW/NnaxPufNuY9dp8RJR9+T0cAV80c
 yt5OmzlJzj5/Kd8/MfGwORxfNnWzhHhjwcjeHNWhymYdt0tKpV9gIv6u+
 DtOMvAifDVIQ7HlEsUwhYYBWs7Q/tIlrDqFK2B2T1ytW1vE1n8cfg340H
 inposBsVPSuu3PiKDiCLbjCEYYICZDv/UhjbToIfNE6cXd0aSLmJQFFEi
 /i6dUayKOIGtM8mApfXNqEv9C+WdeRhRfHrsxk8Lfh3YujGLh7QEt6cfq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19629955"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19629955"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434821"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434821"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915: Convert pipe_config_infoframe_mismatch() to
 drm_printer
Date: Thu, 15 Feb 2024 18:40:47 +0200
Message-ID: <20240215164055.30585-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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

Utilize drm_printer in pipe_config_infoframe_mismatch() to avoid
a bit of code duplication.

hdmi_infoframe_log() can't use the printer of course, but for that
we can just figure out which loglevel to use. And we do need to keep
the explicit drm_debug_enabled(DRM_UT_KMS) since hdmi_infoframe_log()
won't do it for us.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 +++++++++++---------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2aabfa154d8a..0292c49e0dad 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4793,27 +4793,31 @@ pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
 			       const union hdmi_infoframe *a,
 			       const union hdmi_infoframe *b)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_printer p;
+	const char *loglevel;
 
 	if (fastset) {
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
-		drm_dbg_kms(&dev_priv->drm,
-			    "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
-			    crtc->base.base.id, crtc->base.name, name);
-		drm_dbg_kms(&dev_priv->drm, "expected:\n");
-		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
-		drm_dbg_kms(&dev_priv->drm, "found:\n");
-		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
+		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
+		loglevel = KERN_DEBUG;
+
+		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	} else {
-		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s infoframe\n",
-			crtc->base.base.id, crtc->base.name, name);
-		drm_err(&dev_priv->drm, "expected:\n");
-		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
-		drm_err(&dev_priv->drm, "found:\n");
-		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, b);
+		p = drm_err_printer(&i915->drm, NULL);
+		loglevel = KERN_ERR;
+
+		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s infoframe\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	}
+
+	drm_printf(&p, "expected:\n");
+	hdmi_infoframe_log(loglevel, i915->drm.dev, a);
+	drm_printf(&p, "found:\n");
+	hdmi_infoframe_log(loglevel, i915->drm.dev, b);
 }
 
 static void
-- 
2.43.0

