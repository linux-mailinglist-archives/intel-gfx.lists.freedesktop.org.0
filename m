Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCB55E6B93
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 21:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12DED10E033;
	Thu, 22 Sep 2022 19:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5166710E030
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 19:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663874020; x=1695410020;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hg6A351Hxt5EnLkTy9D1FpGmbRy2gahwg9Cp0zGyzd8=;
 b=Go3RflBXn0pNF0DHPXI/5VrUpEPGI5jd71WUyQVBKMvke3GOU+QsbW3y
 zVxFgemUHaaMwHBVmyXLRNHk5EZnRcpHPP5M6I/m8/VdtbQXRTs9HHOr2
 IsODAcn6MkyZ4DBchGzCAxVjAmE3bMohzI2rgDqOdx1PnDiQHQg3XKyHr
 1zzPALYh/izQuZwH8aVBJxr5vaT7YbrXyxx9pFwUGTh7TEtXGELQTxuIl
 j+GDOxI/kt5fnkN7z5FvC7Ikukwd+lrYVMMyYCJvpisF5dev62XkYGSjT
 WyAomxRPS4OfnLceT8OTLh5ICNxSkO9wYQlM9BpMl8EVnHN4YIw78uI2C w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="301843025"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="301843025"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 12:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="619929801"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Sep 2022 12:13:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 22:13:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 22:13:14 +0300
Message-Id: <20220922191314.4252-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921211525.10675-3-ville.syrjala@linux.intel.com>
References: <20220921211525.10675-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Don't bail early from
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

v2: Call the return variable 'fastset' to convey its meaning

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c9be61d2348e..9634fadb8bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2306,6 +2306,7 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	bool fastset = true;
 
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
+		fastset = false;
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
+		fastset = false;
 	}
 
 	if (CAN_PSR(intel_dp)) {
-		drm_dbg_kms(&i915->drm, "Forcing full modeset to compute PSR state\n");
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute PSR state\n",
+			    encoder->base.base.id, encoder->base.name);
 		crtc_state->uapi.mode_changed = true;
-		return false;
+		fastset = false;
 	}
 
-	return true;
+	return fastset;
 }
 
 static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
-- 
2.35.1

