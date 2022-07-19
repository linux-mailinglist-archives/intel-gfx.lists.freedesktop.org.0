Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18165796E7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 11:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D843014B28B;
	Tue, 19 Jul 2022 09:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4698D14B285;
 Tue, 19 Jul 2022 09:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658224661; x=1689760661;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=laAAGAFPWmzBPc4gyCOIzMohz+CBatsdCDcYOXHaU+8=;
 b=EZD3Y7uGc9cCvkyBD31zOjukJ69wup0eSK5Q63GhPW4i8zsp+vW6m7be
 qgpYDu09sR0UaXyQHEBwTGlt/M0fIVWcvkgoCGP30plUV1mLdCC4ruupl
 F8Eo8XKj+JkUieR1XnaC1NZXti+2Mm0w/eTJY24Qv/dAuQB0sVu+l8/m+
 +aFw7XjFbT968f3zAjycEY1tL6yPxDQZwih8tzoDgHn5PwAA0IxaXgeT8
 ZSKfU5yN8lobix9dD1UClzEqDPpsWFEgoAuWqB8CrwnWVUBKzNVDKaGCR
 hBhUF3yiFVWP1roVNoDtmZhDvMYtPDFRkH4F+bYtEJZH5nqKyrk9RiuJc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="350414189"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="350414189"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 02:57:41 -0700
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="594776497"
Received: from slinke-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.210.1])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 02:57:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Date: Tue, 19 Jul 2022 12:57:00 +0300
Message-Id: <20220719095700.14923-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220719095700.14923-1-jouni.hogander@intel.com>
References: <20220719095700.14923-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915: Use luminance range calculated
 during edid parsing
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

Instead of using fixed 0 - 512 range use luminance range calculated
as a part of edid parsing. As a backup fall back to static 0 - 512.

v3: Clean-ups suggested by Jani Nikula
v2: Use values calculated during edid parsing

Cc: Lyude Paul <lyude@redhat.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index c92d5bb2326a..83af95bce98d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -278,6 +278,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
+	struct drm_luminance_range_info *luminance_range =
+		&connector->base.display_info.luminance_range;
 	int ret;
 
 	if (panel->backlight.edp.intel.sdr_uses_aux) {
@@ -293,8 +295,17 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		}
 	}
 
-	panel->backlight.max = 512;
-	panel->backlight.min = 0;
+	if (luminance_range->max_luminance) {
+		panel->backlight.max = luminance_range->max_luminance;
+		panel->backlight.min = luminance_range->min_luminance;
+	} else {
+		panel->backlight.max = 512;
+		panel->backlight.min = 0;
+	}
+
+	drm_dbg_kms(&i915->drm, "Using backlight range %d..%d\n", panel->backlight.min,
+		    panel->backlight.max);
+
 	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
 	panel->backlight.enabled = panel->backlight.level != 0;
 
-- 
2.25.1

