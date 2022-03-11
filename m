Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1574D678D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3E810E7CC;
	Fri, 11 Mar 2022 17:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA5410E783
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019517; x=1678555517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y+XYZyetfOFn3ekdyL8RXrqfu6fnRhfCbQE1+UWecX0=;
 b=JyJ12K23QH214tjeB6WuWrTNVyJkFD6j4mFXA0/doskDrZho98JGia4D
 HkCocGpHbzG35CIRF9H0RDKM/BjLQNrMYHT6QfKz9CC2TzPyMSVIJNgNw
 r58YXpnEZ5MA3wqg2yZiU6AKLSLW4tZUbKAYhu0PvvB5Tpx/Sd30RfC4C
 /HmCFW+HmoDWEuv6NgQYUq71E+Jd2o4SEgugmL8rb5cnJw2XkBMLIBSbz
 5tusZXZuMs7tdmHd7KpckQMrb6HhX62yT4vUxvqEZEqT8EYimrxAZat93
 BIg7PRK9Yv1y5Rn5PGPM2aS075/P+cci2/ZyvRGwDTdeWKZdAjybh9U2Z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="236217536"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="236217536"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:25:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="579354165"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 11 Mar 2022 09:25:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:25:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:27 +0200
Message-Id: <20220311172428.14685-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/16] drm/i915: Implement static DRRS
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

Let's start supporting static DRRS by trying to match the refresh
rate the user has requested, assuming the panel supports suitable
timings.

For now we stick to just our current two timings:
- fixed_mode: the panel's preferred mode
- downclock_mode: the lowest refresh rate mode we found
Some panels may support more timings than that, but we'll
have to convert our fixed_mode/downclock_mode pointers
into a full list before we can handle that.

v2: Rebase due to intel_panel_get_modes()

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c | 31 ++++++++++++++++++++--
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 981eb37d613e..2bbc0388263a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -390,7 +390,7 @@ intel_drrs_init(struct intel_connector *connector,
 		return NULL;
 	}
 
-	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS) {
+	if (dev_priv->vbt.drrs_type == DRRS_TYPE_NONE) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
 			    connector->base.base.id, connector->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index c15f5e3d53d1..08a0612edd60 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -55,14 +55,30 @@ const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
 {
-	return connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
+
+	/* pick the one that is closer in terms of vrefresh */
+	/* FIXME make this a a list of modes so we can have more than two */
+	if (fixed_mode && downclock_mode &&
+	    abs(drm_mode_vrefresh(downclock_mode) - drm_mode_vrefresh(mode)) <
+	    abs(drm_mode_vrefresh(fixed_mode) - drm_mode_vrefresh(mode)))
+		return downclock_mode;
+	else
+		return fixed_mode;
 }
 
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
 {
-	return connector->panel.downclock_mode;
+	const struct drm_display_mode *downclock_mode = connector->panel.downclock_mode;
+
+	if (downclock_mode &&
+	    drm_mode_vrefresh(downclock_mode) < drm_mode_vrefresh(adjusted_mode))
+		return downclock_mode;
+	else
+		return NULL;
 }
 
 int intel_panel_get_modes(struct intel_connector *connector)
@@ -80,6 +96,17 @@ int intel_panel_get_modes(struct intel_connector *connector)
 		}
 	}
 
+	if (connector->panel.downclock_mode) {
+		struct drm_display_mode *mode;
+
+		mode = drm_mode_duplicate(connector->base.dev,
+					  connector->panel.downclock_mode);
+		if (mode) {
+			drm_mode_probed_add(&connector->base, mode);
+			num_modes++;
+		}
+	}
+
 	return num_modes;
 }
 
-- 
2.34.1

