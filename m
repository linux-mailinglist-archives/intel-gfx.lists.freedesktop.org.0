Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D347A49F773
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0997D10EF03;
	Fri, 28 Jan 2022 10:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D296310EEAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366313; x=1674902313;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=z4hg25GXx1v615ZAMAw6b+BQNHDHJTVmlMkBVdiJqAw=;
 b=WpLy5JkqNUH1xGegO2rg+UD00ElT4Gsh+LNwPE84GN/adbmckA2lJies
 WczUmPR5DCI1eroKqL9zuUaZFhwcsDNZnCVYDf+yaOanSnRauYoL36qGj
 JH4Z/uspga69Fj2YfBxNEUjXN2SHU/b/2dectn8YI/uDJwXdriOZ1UOuW
 +0PpmLJCfim3tNaWn7Oy+ksoUpu91Wo87a1HKfKzEVaoQpmtX6atz9q5l
 Yb/rcAXqGJeGPitOzQoIJ4r0VEYYvOqrKZ3ggCwlJ5LN7SEZXW3bEdzu1
 K+edc0hGfJJfj9AG0VjY2tWkXrVnODoxXyyy0h3rOToLUBxvqSrMFf3kc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="246870706"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="246870706"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="618687515"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by FMSMGA003.fm.intel.com with SMTP; 28 Jan 2022 02:38:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:51 +0200
Message-Id: <20220128103757.22461-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/17] drm/i915: Extract can_enable_drrs()
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

Pull the "can we do DRRS?" check into helper in order
to reduce the clutter in intel_drrs_compute_config().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 31 ++++++++++++++---------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 9f673255578e..3515f1700838 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -47,17 +47,13 @@
  * requested by userspace.
  */
 
-void
-intel_drrs_compute_config(struct intel_dp *intel_dp,
-			  struct intel_crtc_state *pipe_config,
-			  int output_bpp, bool constant_n)
+static bool can_enable_drrs(struct intel_connector *connector,
+			    const struct intel_crtc_state *pipe_config)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	int pixel_clock;
+	const struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (pipe_config->vrr.enable)
-		return;
+		return false;
 
 	/*
 	 * DRRS and PSR can't be enable together, so giving preference to PSR
@@ -66,15 +62,26 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 	 * after intel_psr_compute_config().
 	 */
 	if (pipe_config->has_psr)
-		return;
+		return false;
 
-	if (!intel_connector->panel.downclock_mode ||
-	    dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
+	return connector->panel.downclock_mode &&
+		i915->drrs.type == SEAMLESS_DRRS_SUPPORT;
+}
+
+void
+intel_drrs_compute_config(struct intel_dp *intel_dp,
+			  struct intel_crtc_state *pipe_config,
+			  int output_bpp, bool constant_n)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	int pixel_clock;
+
+	if (!can_enable_drrs(connector, pipe_config))
 		return;
 
 	pipe_config->has_drrs = true;
 
-	pixel_clock = intel_connector->panel.downclock_mode->clock;
+	pixel_clock = connector->panel.downclock_mode->clock;
 	if (pipe_config->splitter.enable)
 		pixel_clock /= pipe_config->splitter.link_count;
 
-- 
2.34.1

