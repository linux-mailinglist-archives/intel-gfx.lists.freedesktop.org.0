Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24A05E5509
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 23:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A50210E886;
	Wed, 21 Sep 2022 21:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E71810E522
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 21:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663794935; x=1695330935;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=APw7YQuR9FJ4aQ/HELpmZyra/e0tJ+1Lw4368e75IKU=;
 b=m3+NAKFDefO5ueKOwUL4nzAqGpGWVK/APa3RPzxVqj1IqzbNHD2HZRtS
 OYW+3Tm5Rorb6AiuyCezcvPGpozZxYJ/3mLHuEENe+89tz04YJUwouztd
 /BpYJ9SKrhztGBsQlBq9Z3XpfCDk9TLyZw76q9sPnVtMurGslMJvsqyf5
 urPi5gbsqbx3r/mqM3muhRFCog1DwN0RjzYSsM3YrHA6FVDevBpgMWfZM
 sXi6JMqZXzeVwf3fyiqjOKwZEBeat99nmF3OIqWjyG8EK0FyrAjLuQtgR
 UayLT6j4Cq9cPBQJQE1FAycFkYPfHe/t5RX4zLkbRuE8TiabP52GhBq+y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="280499015"
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="280499015"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 14:15:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,334,1654585200"; d="scan'208";a="650241931"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 21 Sep 2022 14:15:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 00:15:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 00:15:23 +0300
Message-Id: <20220921211525.10675-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
References: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Don't bail early from
 intel_dp_initial_fastset_check()
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

Do all the checks in intel_dp_initial_fastset_check() instead
of bailing out on the first condition that triggers.

This makes for better debug logs since we see all the reasons
why the full modeset computation is forced.

Also avoid the risk of someone accidentally adding a check
later in the function that would require connectors_changed=true
(ie. no fastset at all), but an earlier check may have already
bailed out with just mode_changed=true (ie. fastset is still
possible).

Pimp the debugs with the encoder id+name while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c9be61d2348e..73c4db4db20b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2306,6 +2306,7 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	bool ret = true;
 
 	/*
 	 * If BIOS has set an unsupported or non-standard link rate for some
@@ -2313,9 +2314,10 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 	 */
 	if (intel_dp_rate_index(intel_dp->source_rates, intel_dp->num_source_rates,
 				crtc_state->port_clock) < 0) {
-		drm_dbg_kms(&i915->drm, "Forcing full modeset due to unsupported link rate\n");
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to unsupported link rate\n",
+			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.connectors_changed = true;
-		return false;
+		ret = false;
 	}
 
 	/*
@@ -2326,18 +2328,20 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 	 * Remove once we have readout for DSC.
 	 */
 	if (crtc_state->dsc.compression_enable) {
-		drm_dbg_kms(&i915->drm, "Forcing full modeset due to DSC being enabled\n");
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to DSC being enabled\n",
+			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
-		return false;
+		ret = false;
 	}
 
 	if (CAN_PSR(intel_dp)) {
-		drm_dbg_kms(&i915->drm, "Forcing full modeset to compute PSR state\n");
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute PSR state\n",
+			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
-		return false;
+		ret = false;
 	}
 
-	return true;
+	return ret;
 }
 
 static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
-- 
2.35.1

