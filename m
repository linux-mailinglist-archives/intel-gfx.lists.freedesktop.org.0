Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E78F5EEEA4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1266D10E919;
	Thu, 29 Sep 2022 07:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B40A10E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435730; x=1695971730;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O4Of4HsbMpJ8bZOd6LZzyPqNZW45dLQN6mGM/fhgKXQ=;
 b=b499E763IiQ6lOsUfTd7RTcE/22Hok9OpUaxGEeC4Kd1MJPngypv2flg
 vTDHeKUZlMLsN6Lzpq54KOYEou0kCwO1kI0+LKveSxdK+OgeyEdYTlybZ
 Rl1lcBkee6hxg6I2lUsHpBP8qwiG5DTwBI91FZclH2Y/vsbIJLSJ3QbtB
 Z2OVi9/c/SxQZOctP8IkiztXEnyo4d95VVpRnmXsSad4j5av/1+WCQSsS
 GGbwhda65snmZCQdBN90xMzyOWLci4+3HybDdr5qqv3vetyJLBoAz+xlT
 8QKv5V30b7IqVvKhvF9s2IrN7yeac5Gk2ewTKlJnud6NPIV0GLfvvyUQM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="303302707"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="303302707"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="867274420"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="867274420"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 29 Sep 2022 00:15:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:13 +0300
Message-Id: <20220929071521.26612-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: Split up intel_color_init()
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

intel_color_init() does both device level and crtc level stuff.
Split it up accordingly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 15 +++++++++------
 drivers/gpu/drm/i915/display/intel_color.h   |  4 +++-
 drivers/gpu/drm/i915/display/intel_crtc.c    |  3 +--
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 4 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index bbc56affb3ec..ddfe7c257a72 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2206,13 +2206,21 @@ static const struct intel_color_funcs ilk_color_funcs = {
 	.read_luts = ilk_read_luts,
 };
 
-void intel_color_init(struct intel_crtc *crtc)
+void intel_crtc_color_init(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	bool has_ctm = INTEL_INFO(dev_priv)->display.color.degamma_lut_size != 0;
 
 	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
 
+	drm_crtc_enable_color_mgmt(&crtc->base,
+				   INTEL_INFO(dev_priv)->display.color.degamma_lut_size,
+				   has_ctm,
+				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
+}
+
+void intel_color_init_hooks(struct drm_i915_private *dev_priv)
+{
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_CHERRYVIEW(dev_priv)) {
 			dev_priv->display.funcs.color = &chv_color_funcs;
@@ -2238,9 +2246,4 @@ void intel_color_init(struct intel_crtc *crtc)
 		} else
 			dev_priv->display.funcs.color = &ilk_color_funcs;
 	}
-
-	drm_crtc_enable_color_mgmt(&crtc->base,
-				   INTEL_INFO(dev_priv)->display.color.degamma_lut_size,
-				   has_ctm,
-				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index fd873425e082..67702451e2fd 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -10,9 +10,11 @@
 
 struct intel_crtc_state;
 struct intel_crtc;
+struct drm_i915_private;
 struct drm_property_blob;
 
-void intel_color_init(struct intel_crtc *crtc);
+void intel_color_init_hooks(struct drm_i915_private *i915);
+void intel_crtc_color_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 6792a9056f46..2d9fc7383bfc 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -365,8 +365,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
 
-	intel_color_init(crtc);
-
+	intel_crtc_color_init(crtc);
 	intel_crtc_drrs_init(crtc);
 	intel_crtc_crc_init(crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb8eaeb19881..a103413cb081 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8326,6 +8326,7 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
+	intel_color_init_hooks(dev_priv);
 	intel_init_cdclk_hooks(dev_priv);
 	intel_audio_hooks_init(dev_priv);
 
-- 
2.35.1

