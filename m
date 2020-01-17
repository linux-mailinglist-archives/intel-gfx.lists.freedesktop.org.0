Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D82F51400B2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 01:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5296EAD5;
	Fri, 17 Jan 2020 00:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3847C6EAD5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 00:17:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 16:17:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="398467581"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl.intel.com)
 ([10.24.14.220])
 by orsmga005.jf.intel.com with ESMTP; 16 Jan 2020 16:17:39 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 04:16:28 -0500
Message-Id: <20200117091627.1697-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1606054188;tgl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tiger Lake we do not support source keying in the pixel formats P010,
P012, P016.

Bspec: 52890
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index fca77ec1e0dd..67176524e60f 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -2049,6 +2049,19 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	unsigned int rotation = plane_state->hw.rotation;
 	struct drm_format_name_buf format_name;
 
+	/* Wa_1606054188;tgl
+	 *
+	 * TODO: Add format RGB64i when implemented
+	 *
+	 */
+	if (IS_GEN(dev_priv, 12) &&
+	    (plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE))
+		if (fb->format->format & (DRM_FORMAT_P010 | DRM_FORMAT_P012
+		    | DRM_FORMAT_P016)) {
+			DRM_DEBUG_KMS("GEN12 does not support source color key planes in formats P01x\n");
+			return -EINVAL;
+		}
+
 	if (!fb)
 		return 0;
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
