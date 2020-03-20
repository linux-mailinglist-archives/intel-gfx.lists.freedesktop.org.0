Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0192018D112
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2256EB4F;
	Fri, 20 Mar 2020 14:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23E06EB50
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:37:06 +0000 (UTC)
IronPort-SDR: wf137dnvgRBS/iLvWNDS8DkGIrSB38H4s0pG//m4tZYbD17sTDTg0szMYtGxTlOBPWX9TIgYo9
 zuyKPhPVCBrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:06 -0700
IronPort-SDR: +vjT9IucZd4AVFdOd42VeMvtFgf9RMeZR4kDvWYeanKQQmH9inz2qQzcHEo4iUit1f6c+AvUlh
 UEQ8jzgR0E0Q==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="392169308"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:30 +0200
Message-Id: <3bc29cddbba9dea57f8f843be2a6b5e1f7358b5c.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/dsi: use struct drm_device based
 logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Generated using the following semantic patch, originally written by
Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_NOTE(
+drm_notice(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index a2a937109a5a..afa4e6817e8c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -31,20 +31,21 @@ int intel_dsi_tlpx_ns(const struct intel_dsi *intel_dsi)
 
 int intel_dsi_get_modes(struct drm_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct drm_display_mode *mode;
 
-	DRM_DEBUG_KMS("\n");
+	drm_dbg_kms(&i915->drm, "\n");
 
 	if (!intel_connector->panel.fixed_mode) {
-		DRM_DEBUG_KMS("no fixed mode\n");
+		drm_dbg_kms(&i915->drm, "no fixed mode\n");
 		return 0;
 	}
 
 	mode = drm_mode_duplicate(connector->dev,
 				  intel_connector->panel.fixed_mode);
 	if (!mode) {
-		DRM_DEBUG_KMS("drm_mode_duplicate failed\n");
+		drm_dbg_kms(&i915->drm, "drm_mode_duplicate failed\n");
 		return 0;
 	}
 
@@ -60,7 +61,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 	const struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
 
-	DRM_DEBUG_KMS("\n");
+	drm_dbg_kms(&dev_priv->drm, "\n");
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
