Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1704DCC42
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B384C10E639;
	Thu, 17 Mar 2022 17:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C7F310E60B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537624; x=1679073624;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=T3P6Brx9EQvJihqNSPM0glUGkdIGOvHaI2gfGcqmlBc=;
 b=Kc37Tkf2XDckO+e/AAxTedOv0xUz7nvO/LPvbvxLhFPbxAV+DMx0Jn8O
 85JHZXkXcRfSCEI1kwvl8MfiQ9AmlANHc9q4qoEd8xQonPPfIAM2j5Vwe
 UVjc3hyeQ1ZOiCrOxHk3Gr+e0v7qxlpo2JuzZfwNXJ2jESgWZjB2I/1aL
 jNsiSTXckUoH6kGIGWE7s5IiqgIDMldIY+AmMPOyscSZpbAXSGeWLUcHf
 cMe+xm2flONgiWSqv5QOZ+4hbp3UEzRkd6iADP1jBYXwzrGoYEWSTTuM/
 LKRKlShEFh1MMHHYIlVNO9E7S8fRQdjTJSt4+s2N/qB12Umqt42WrhLSH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244378698"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="244378698"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:20:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="516845298"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 17 Mar 2022 10:20:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:20:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:48 +0200
Message-Id: <20220317171948.10400-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Respect VBT seamless DRRS min
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make sure our choice of downclock mode respects the VBT
seameless DRRS min refresh rate limit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index f428d0457c17..31527fad3028 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -74,13 +74,17 @@ const struct drm_display_mode *
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
+		int vrefesh = drm_mode_vrefresh(fixed_mode);
+
+		if (vrefesh >= min_vrefresh && vrefesh < max_vrefresh) {
+			max_vrefresh = vrefesh;
 			best_mode = fixed_mode;
 		}
 	}
-- 
2.34.1

