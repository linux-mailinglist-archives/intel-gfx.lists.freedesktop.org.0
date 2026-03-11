Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPlREcl5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2182653F0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8437510E8BB;
	Wed, 11 Mar 2026 14:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cGPov9DZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC4E10E8BB;
 Wed, 11 Mar 2026 14:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238726; x=1804774726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wDB1A76iCDMz5VuRiu+lbsMK1nHQ4v9m1U1ozjcd0oY=;
 b=cGPov9DZtM9zAlaGrf3USxbWbaY0M0TIZ8+GmnYf7R/LSP5ePbV1WIX8
 R7uDlPWgRgXVMhcVkw6LsNf/UZhvVsHmOWuny1bGvQtR2wE4uCFDXt/bR
 NM4hMrhFJ/BVXWBarhBLta/z2EqLy8oVXP3uN0LrcUDMUb0GUP/li7Zam
 uwKTHklz3/+E0ifxtXC6/1ZFt3gvWPXsoUIMQ1v/+7gYQSIZ8J8QcDANG
 CEqZLcaYzmZaxky174I0gU6p4d1YwW2nyZkPKT5z8zSwxBjI4UzZgahk4
 UNJd8xU8kKsPGoLPrGIW4df0QZkk5VcPenk2zFu0JY0dWVRRLjCuUiRrl w==;
X-CSE-ConnectionGUID: XIxFN4yxRZu1hxxSn+sgEA==
X-CSE-MsgGUID: WdzFkSJRSK+btAvtnzWVAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74427375"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74427375"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:46 -0700
X-CSE-ConnectionGUID: lZNB9lZxQUiCbpb794wV4g==
X-CSE-MsgGUID: 7axB+3VrTcWTBo8GtBhwyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="219729480"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/fb: make intel_fb_bo.c less dependent on display
Date: Wed, 11 Mar 2026 16:18:17 +0200
Message-ID: <13087bd24bd5af5265ca6af67f086b93e26e311f.1773238670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773238670.git.jani.nikula@intel.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: EB2182653F0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

intel_fb_bo.c is i915 core specific code, and should use struct
drm_i915_private instead of struct intel_display.

Switch one DISPLAY_VER() to GRAPHICS_VER(). The check is for < 4, where
they're effectively the same thing.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index bfecd73d5fa0..a4d49ef450d9 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -9,8 +9,6 @@
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
-#include "intel_display_core.h"
-#include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 
@@ -23,7 +21,7 @@ int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
-	struct intel_display *display = to_intel_display(obj->base.dev);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	unsigned int tiling, stride;
 
 	i915_gem_object_lock(obj, NULL);
@@ -38,7 +36,7 @@ int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
 		 */
 		if (tiling != I915_TILING_NONE &&
 		    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-			drm_dbg_kms(display->drm,
+			drm_dbg_kms(&i915->drm,
 				    "tiling_mode doesn't match fb modifier\n");
 			return -EINVAL;
 		}
@@ -46,7 +44,7 @@ int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
 		if (tiling == I915_TILING_X) {
 			mode_cmd->modifier[0] = I915_FORMAT_MOD_X_TILED;
 		} else if (tiling == I915_TILING_Y) {
-			drm_dbg_kms(display->drm,
+			drm_dbg_kms(&i915->drm,
 				    "No Y tiling for legacy addfb\n");
 			return -EINVAL;
 		}
@@ -56,9 +54,9 @@ int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
 	 * gen2/3 display engine uses the fence if present,
 	 * so the tiling mode must match the fb modifier exactly.
 	 */
-	if (DISPLAY_VER(display) < 4 &&
+	if (GRAPHICS_VER(i915) < 4 &&
 	    tiling != intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
-		drm_dbg_kms(display->drm,
+		drm_dbg_kms(&i915->drm,
 			    "tiling_mode must match fb modifier exactly on gen2/3\n");
 		return -EINVAL;
 	}
@@ -68,7 +66,7 @@ int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
 	 * the fb pitch and fence stride match.
 	 */
 	if (tiling != I915_TILING_NONE && mode_cmd->pitches[0] != stride) {
-		drm_dbg_kms(display->drm,
+		drm_dbg_kms(&i915->drm,
 			    "pitch (%d) must match tiling stride (%d)\n",
 			    mode_cmd->pitches[0], stride);
 		return -EINVAL;
-- 
2.47.3

