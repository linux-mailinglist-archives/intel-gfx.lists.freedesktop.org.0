Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D92351A31D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B9F10EFBD;
	Wed,  4 May 2022 15:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CB810EFBD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676712; x=1683212712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jrly9MfbOJDvBIItnUoa8zIGrSKwr+N4PM8thWPnqmY=;
 b=XpkaJrPJ1YztbhL+TZzd5EfJx57HsXDs4JAV1+80w4qGN3Cy4TqwF46W
 Cj3jPxOX4Kdp385JiS+ouhcJKUG/vMd1VfF+/80PRgLnGgzwTUsTw9arg
 r2gv0TsULUinALubAB4Te51LH7hXWWj1HY4D9+iLMzxuRYmT+z4oxq9KL
 7L2meowjvWViZ3drPJey8fjpXkyvZAFgrELoYuqnGVYiBJtZHx2iT+GiM
 jKjkuNo6YV4h6JgQuUh+8odn2R7BUiCRnxv61Mwf1bLBl+yzinrq9KgkD
 bst0j9i+4hgRtK6bwCAIXcdK2o8Br+60QO2zvYXo9FHZ/LDsiGJqmeyed w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267388408"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="267388408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:05:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="584779819"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 04 May 2022 08:05:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:05:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:40 +0300
Message-Id: <20220504150440.13748-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915: Respect VBT seamless DRRS min
 refresh rate
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make sure our choice of downclock mode respects the VBT
seameless DRRS min refresh rate limit.

v2: s/vrefesh/vrefresh/ (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 03398feb6676..d1d1b59102d6 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -75,13 +75,17 @@ const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
-	int vrefresh = drm_mode_vrefresh(adjusted_mode);
+	int min_vrefresh = i915->vbt.seamless_drrs_min_refresh_rate;
+	int max_vrefresh = drm_mode_vrefresh(adjusted_mode);
 
 	/* pick the fixed_mode with the lowest refresh rate */
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
-		if (drm_mode_vrefresh(fixed_mode) < vrefresh) {
-			vrefresh = drm_mode_vrefresh(fixed_mode);
+		int vrefresh = drm_mode_vrefresh(fixed_mode);
+
+		if (vrefresh >= min_vrefresh && vrefresh < max_vrefresh) {
+			max_vrefresh = vrefresh;
 			best_mode = fixed_mode;
 		}
 	}
-- 
2.35.1

