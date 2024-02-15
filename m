Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB3C8569BB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DCE10E9D5;
	Thu, 15 Feb 2024 16:41:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYWrNGP9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B3710E9D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015277; x=1739551277;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RJZMnZhk8IotmwBF+NFe/OJRw5snohvlon510rHujN0=;
 b=kYWrNGP9HUjgIU+LM0QHLtoVRkID0OPZopzZkzVqEQWeVv0FBBLn0qo5
 CdaVftDeEqQGR6bf+58QjQWjNccASxLtYcSQ+vupjoJphjzzH7P3XjAdd
 npn6b6UHKrg6aaruwSp67awI/UGAnB4xoyw1NiANjrOOY9VcewBian3p8
 VMgo2QR4v3JAor0IicnH2BrR5RFT1rLtLvdZef17Y7FPWzyWQjfsMbMb8
 SBkkXBGXJHQfoERwBuV96rtM1t2fpG40D8lWpi+Ms1ARSB/xCIf3k2Soi
 Tovj5dATdvwZ87AUHt+lud7bFpSyVn2q2GXWW60HQN2lol7rzq4In4VQ/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19629976"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19629976"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434829"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434829"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/12] drm/i915: Convert pipe_config_buffer_mismatch() to
 drm_printer
Date: Thu, 15 Feb 2024 18:40:48 +0200
Message-ID: <20240215164055.30585-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Utilize drm_printer in pipe_config_infoframe_mismatch() to avoid
a bit of code duplication.

print_hex_dump() doesn't know anything about the printer so
it still needs the DRM_UT_KMS check and special handling for
the loglevel. But at least we end up with a bit less copy-pasta.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 37 ++++++++++----------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0292c49e0dad..e5010049d52e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4866,33 +4866,34 @@ pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
 			    const char *name,
 			    const u8 *a, const u8 *b, size_t len)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_printer p;
+	const char *loglevel;
 
 	if (fastset) {
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
-		/* only dump up to the last difference */
-		len = memcmp_diff_len(a, b, len);
+		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
+		loglevel = KERN_DEBUG;
 
-		drm_dbg_kms(&dev_priv->drm,
-			    "[CRTC:%d:%s] fastset requirement not met in %s buffer\n",
-			    crtc->base.base.id, crtc->base.name, name);
-		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
-			       16, 0, a, len, false);
-		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
-			       16, 0, b, len, false);
+		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s buffer\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	} else {
-		/* only dump up to the last difference */
-		len = memcmp_diff_len(a, b, len);
+		p = drm_err_printer(&i915->drm, NULL);
+		loglevel = KERN_ERR;
 
-		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
-			crtc->base.base.id, crtc->base.name, name);
-		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
-			       16, 0, a, len, false);
-		print_hex_dump(KERN_ERR, "found: ", DUMP_PREFIX_NONE,
-			       16, 0, b, len, false);
+		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s buffer\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	}
+
+	/* only dump up to the last difference */
+	len = memcmp_diff_len(a, b, len);
+
+	print_hex_dump(loglevel, "expected: ", DUMP_PREFIX_NONE,
+		       16, 0, a, len, false);
+	print_hex_dump(loglevel, "found: ", DUMP_PREFIX_NONE,
+		       16, 0, b, len, false);
 }
 
 static void __printf(4, 5)
-- 
2.43.0

