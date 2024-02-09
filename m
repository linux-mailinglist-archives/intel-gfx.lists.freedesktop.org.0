Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5AC84FC01
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 19:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B8110FA05;
	Fri,  9 Feb 2024 18:38:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ioC5QCak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D251010FA05
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 18:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707503899; x=1739039899;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V8UJJhObimVgKGAKbbKfCU6XlpYdrYu8qJFfTIfGCEQ=;
 b=ioC5QCak6H8n4a5jLByijdNALTKylAaou9WDueZlDVjgP7I1P10XhDQ3
 JvhYJ35lv5ANaT+xnyrgA1KpKoKUhDW35+U9YEbmphWN3Rjolx8jeax6O
 wW0EayfAg04QF1RyWbi6g9hahwccHPXyo8WaAP568OvBE1IpAluJeAppE
 IOPEv0GBnlE4G32MODVcndT4akJGE4zga8tZEGR0sG1YHnbFzKcG3taWP
 ZwVbyxPVRdKFV6an/GYNzl3ZVMyUy1KdgTOFPFwbMQ6Fz8Wcl6MLe+C75
 7l7fsDluVjNfH+vRPNkUsRE/icA/bL83VGwMp7QWkjKuEEnOD/J3kBB7W g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="23956495"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="23956495"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 10:38:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="825204141"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="825204141"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 10:38:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 20:38:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915: Include the CRTC name in the ELD buffer mismatch
Date: Fri,  9 Feb 2024 20:38:06 +0200
Message-ID: <20240209183809.16887-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
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

Most crtc state mismatches include the CRTC id+name in the
prints. Also include it in the ELD buffer mismatch
prints.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f20728b7f67b..1d381fa96c84 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4851,10 +4851,12 @@ memcmp_diff_len(const u8 *a, const u8 *b, size_t len)
 }
 
 static void
-pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
-			    bool fastset, const char *name,
+pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
+			    const char *name,
 			    const u8 *a, const u8 *b, size_t len)
 {
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
 	if (fastset) {
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
@@ -4863,7 +4865,8 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 		len = memcmp_diff_len(a, b, len);
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "fastset requirement not met in %s buffer\n", name);
+			    "[CRTC:%d:%s] fastset requirement not met in %s buffer\n",
+			    crtc->base.base.id, crtc->base.name, name);
 		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
 			       16, 0, a, len, false);
 		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
@@ -4872,7 +4875,8 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 		/* only dump up to the last difference */
 		len = memcmp_diff_len(a, b, len);
 
-		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
+		drm_err(&dev_priv->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
+			crtc->base.base.id, crtc->base.name, name);
 		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
 			       16, 0, a, len, false);
 		print_hex_dump(KERN_ERR, "found: ", DUMP_PREFIX_NONE,
@@ -5071,7 +5075,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
 	BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
 	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
-		pipe_config_buffer_mismatch(dev_priv, fastset, __stringify(name), \
+		pipe_config_buffer_mismatch(fastset, crtc, __stringify(name), \
 					    current_config->name, \
 					    pipe_config->name, \
 					    (len)); \
-- 
2.43.0

