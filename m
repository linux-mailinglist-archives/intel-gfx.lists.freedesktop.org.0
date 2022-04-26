Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F95451091D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B6EB10E532;
	Tue, 26 Apr 2022 19:33:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55EA010E603
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001595; x=1682537595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jrly9MfbOJDvBIItnUoa8zIGrSKwr+N4PM8thWPnqmY=;
 b=K9BqmG+nMPhWScueENKq0NGYC7PRZ82yCK38E3GcNl2/2sXIXOifjYEd
 mffHtZeVFUWHkuSBorz/leAJC310yOMAKFzEKj1j8ngWNYqt3GN/3rpvv
 trGMWwy5S5jcBIhAhrPli1UXWBCfLo/dEWetfmF4OeQFn3lE2jeXQPt45
 X+lowl1yPQQMs2uDHnSowzmC74RdwPNXIw6LquIR38UkhyaWHjT/y3/Rw
 50oZJ/oQbwF2bnYTfUVSubWeVrK9rt07LzldDa8GBmqF467Z6OWDFrqtd
 VOjVpFENq2K73bEDysSdiV59RoL1AQJ2HzM4r/y1+oWOTxkUIRq4xgW2X g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="326189499"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="326189499"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="660843404"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2022 12:33:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:33:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:20 +0300
Message-Id: <20220426193222.3422-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/18] drm/i915: Respect VBT seamless DRRS
 min refresh rate
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

