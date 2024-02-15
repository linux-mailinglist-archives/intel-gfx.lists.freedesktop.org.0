Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7536E8569B7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6DA10E9CB;
	Thu, 15 Feb 2024 16:41:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ipKTXXWY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B02110E97D
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015267; x=1739551267;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZgXeg11GhKitnhcFM4gu1EdasK1X2NVSbkfjYNQRtoY=;
 b=ipKTXXWYc6grUDvPiJjWX6RdUNMYjgBg6R9n9OMUs7eqaAfDpy+q8yhh
 7g8l+FgX/ZUPeZyM6U+N042RGrs1IalEjzk7PHG5ui/i1vWb9nb/tnbSJ
 GY4fBN8kDRXElBY54O4pMQKZ2RosHzm3PzLCle+85MMYlluVlbPFA3iTM
 bO5E8NNMy4xvSTVmSqOB1WPoGHg8/mtYFVlBULWB2ZNVc0v66Cd3Tawu4
 Kh3XwJ4E1sItlzYmaPdtW26h21cRLEN8FwyQAl7yGKOfWFQ4OdDggmgSe
 qUpj2GSQfofzAJYzWx7bniBjGTUSGAqWxYuU/MgiQIMR2ooxpBXc41Yxb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19629912"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19629912"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434814"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434814"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915: Include CRTC info in infoframe mismatch prints
Date: Thu, 15 Feb 2024 18:40:45 +0200
Message-ID: <20240215164055.30585-3-ville.syrjala@linux.intel.com>
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

Most crtc state mismatches include the CRTC id+name in the
prints. Also include it in the infoframe mismatches.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a7f487f5c2b2..e3520a3da468 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4788,23 +4788,27 @@ intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
 }
 
 static void
-pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
-			       bool fastset, const char *name,
+pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
+			       const char *name,
 			       const union hdmi_infoframe *a,
 			       const union hdmi_infoframe *b)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
 	if (fastset) {
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "fastset requirement not met in %s infoframe\n", name);
+			    "[CRTC:%d:%s] fastset requirement not met in %s infoframe\n",
+			    crtc->base.base.id, crtc->base.name, name);
 		drm_dbg_kms(&dev_priv->drm, "expected:\n");
 		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
 		drm_dbg_kms(&dev_priv->drm, "found:\n");
 		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
 	} else {
-		drm_err(&dev_priv->drm, "mismatch in %s infoframe\n", name);
+		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s infoframe\n",
+			crtc->base.base.id, crtc->base.name, name);
 		drm_err(&dev_priv->drm, "expected:\n");
 		hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
 		drm_err(&dev_priv->drm, "found:\n");
@@ -5072,7 +5076,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
 	if (!intel_compare_infoframe(&current_config->infoframes.name, \
 				     &pipe_config->infoframes.name)) { \
-		pipe_config_infoframe_mismatch(dev_priv, fastset, __stringify(name), \
+		pipe_config_infoframe_mismatch(fastset, crtc, __stringify(name), \
 					       &current_config->infoframes.name, \
 					       &pipe_config->infoframes.name); \
 		ret = false; \
-- 
2.43.0

