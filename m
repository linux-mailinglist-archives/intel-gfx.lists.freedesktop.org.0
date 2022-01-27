Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121BC49DE23
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA0B10EE50;
	Thu, 27 Jan 2022 09:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D2310EFC7
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276032; x=1674812032;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YCICFUn4wAN+GyI14mCuuZ7J45468okRMU+Kh6o0BNE=;
 b=S3m3Kzzsi//O7+y37DZtOBI6UK8vfXqK4ZdkokfcIM7B9Dmph6JTdKVK
 n7MnYmYg5FmGxNgVq+PhQG6QHCrekMSC7jgZCpW79Iu2FaXHePiFHqN0G
 A4n+8Pc5nUyoIdGrKJiGBNBKIcBsuyzULa6l4DbmXLnHOIjxFHXIMe5br
 Hh+x22IYAR6fqmwqNvX/Kb1crVhZd9Au4yGH3NPy5YmdW14vyp6XM34uY
 RtvFyVGwZNVcvqiBT0dl8Hd4A4Dpb9NM67+6EljktzuX9D+RWEGtg/6MY
 ELXct6PPZM7xuQbXphhDFWtVr1yJlR7AM9iEdUwKbchwmU4Yx0QNU7se7 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246578318"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="246578318"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="480224804"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 27 Jan 2022 01:33:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:33:01 +0200
Message-Id: <20220127093303.17309-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/14] drm/i915: Extract can_enable_drrs()
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
index 53f014b4436b..c46fcf1e7596 100644
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

