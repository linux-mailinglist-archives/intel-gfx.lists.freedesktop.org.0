Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F18B472BB3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 12:41:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A2C10E86E;
	Mon, 13 Dec 2021 11:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C443710E86D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 11:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639395678; x=1670931678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fsoeYYEq62LuEfBBiYGvRIOyilBW3NDMuIIrK0DxfFw=;
 b=PC6UUZ5LwiMcLDUq/6aNVZRR8oI5TY1N8mzMuOV9iR20P9uysoZL0Nwj
 c+xemc+vdjM6FkkCM9/LJkRnv4xygBxKbLtWtTA7PSrL19JmVOlKhtMqg
 o6v+DhJmw8eKBezsIn1MGdL5IsHHxQL53qBD09TlzxujgP/AP/mwqEOX2
 P0bjQF/1WWLz0ypEb5K5FVTGiXPzJIKTnmO/3huS8+QTBv75bqP687IYr
 72HcXSTmy5YuMgFhB82lsWsQ0UJRk68wk3KbT58QPfMbSwom/+ckD2cVx
 oM2HwZ+LqEH6Cxh6nArK0HAlYb/TSB0myfA5hhPkfXxV0AkY+9CsvLDRz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="262840289"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="262840289"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 03:41:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="464596728"
Received: from ppolasze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 03:41:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Dec 2021 13:41:06 +0200
Message-Id: <20211213114106.296017-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213114106.296017-1-jani.nikula@intel.com>
References: <20211213114106.296017-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/cdclk: move struct
 intel_cdclk_funcs to intel_cdclk.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The funcs struct can be opaque, make it internal to intel_cdclk.c.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h            | 12 +-----------
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c30cf8d2b835..249f81a80eb7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -63,6 +63,17 @@
  * dividers can be programmed correctly.
  */
 
+struct intel_cdclk_funcs {
+	void (*get_cdclk)(struct drm_i915_private *i915,
+			  struct intel_cdclk_config *cdclk_config);
+	void (*set_cdclk)(struct drm_i915_private *i915,
+			  const struct intel_cdclk_config *cdclk_config,
+			  enum pipe pipe);
+	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
+	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
+	u8 (*calc_voltage_level)(int cdclk);
+};
+
 void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
 			   struct intel_cdclk_config *cdclk_config)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e2c0d69753b1..0112ae942664 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -291,6 +291,7 @@ struct intel_connector;
 struct intel_encoder;
 struct intel_atomic_state;
 struct intel_cdclk_config;
+struct intel_cdclk_funcs;
 struct intel_cdclk_state;
 struct intel_cdclk_vals;
 struct intel_initial_plane_config;
@@ -339,17 +340,6 @@ struct intel_color_funcs {
 	void (*read_luts)(struct intel_crtc_state *crtc_state);
 };
 
-struct intel_cdclk_funcs {
-	void (*get_cdclk)(struct drm_i915_private *dev_priv,
-			  struct intel_cdclk_config *cdclk_config);
-	void (*set_cdclk)(struct drm_i915_private *dev_priv,
-			  const struct intel_cdclk_config *cdclk_config,
-			  enum pipe pipe);
-	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
-	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
-	u8 (*calc_voltage_level)(int cdclk);
-};
-
 struct intel_hotplug_funcs {
 	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
 };
-- 
2.30.2

