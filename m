Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 688F5704997
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 11:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E3AF10E167;
	Tue, 16 May 2023 09:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5E710E331
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 09:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684230253; x=1715766253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=osXFi1Kj5hoZoDxIwAqZ4CRYZ0BqscrTDGL4M7tY4oE=;
 b=BQeHC6Vnv46W8PHj3ykUAjcJU2/zcYstEsyB01YBc28QDOdXf+3toxwT
 s15vgb5QQ2Qqs8abYnoTEKBDu2A8XTlClvru6JqPE81AGlEJOiNJnFa7/
 J44KQRr5ZAyRoCdYGeO+BSIICzbK1EBZ6gS5Kr7A6CeThqcETG4z06Q2A
 Emt5uTWMfwTVSu8SViSVxj0tdAoZTHWy+kPmOvwn4gfTZuyiPbnyJNUtq
 CF6suWGKPDVY+/OHdXzZPgxFyvIrhBddt/23NsSB+HcVXvymeqNke3ibl
 OsX+lyslCXBE91LacxpqUJSIVpr5E1g4aA+MxTNWQ8um1GtCJ1HvpTPjP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="354598892"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="354598892"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 02:44:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="704334489"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="704334489"
Received: from khach-mobl.ger.corp.intel.com (HELO localhost) ([10.252.49.69])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2023 02:44:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 12:44:06 +0300
Message-Id: <20230516094406.2675307-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: tweak language in fastset pipe config
 compare logging
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

The "fastset mismatch" debug logging has been slightly confusing,
leading people to believe some error happened. Change it to the more
informative "fastset requirement not met", and add a final message about
this leading to full modeset.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4b70b389e0cb..8afbaf8d1196 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4857,7 +4857,7 @@ pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
 			return;
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "fastset mismatch in %s infoframe\n", name);
+			    "fastset requirement not met in %s infoframe\n", name);
 		drm_dbg_kms(&dev_priv->drm, "expected:\n");
 		hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
 		drm_dbg_kms(&dev_priv->drm, "found:\n");
@@ -4882,7 +4882,7 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
 			return;
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "fastset mismatch in %s dp sdp\n", name);
+			    "fastset requirement not met in %s dp sdp\n", name);
 		drm_dbg_kms(&dev_priv->drm, "expected:\n");
 		drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, a);
 		drm_dbg_kms(&dev_priv->drm, "found:\n");
@@ -4923,7 +4923,7 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 		len = memcmp_diff_len(a, b, len);
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "fastset mismatch in %s buffer\n", name);
+			    "fastset requirement not met in %s buffer\n", name);
 		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
 			       16, 0, a, len, false);
 		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
@@ -4954,7 +4954,7 @@ pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
 
 	if (fastset)
 		drm_dbg_kms(&i915->drm,
-			    "[CRTC:%d:%s] fastset mismatch in %s %pV\n",
+			    "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
 			    crtc->base.base.id, crtc->base.name, name, &vaf);
 	else
 		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
@@ -5542,8 +5542,13 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
 static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
 				     struct intel_crtc_state *new_crtc_state)
 {
-	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
+	struct drm_i915_private *i915 = to_i915(old_crtc_state->uapi.crtc->dev);
+
+	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true)) {
+		drm_dbg_kms(&i915->drm, "fastset requirement not met, forcing full modeset\n");
+
 		return;
+	}
 
 	new_crtc_state->uapi.mode_changed = false;
 	if (!intel_crtc_needs_modeset(new_crtc_state))
-- 
2.39.2

