Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gH1cI4tRcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0C150D46
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36F410E6C4;
	Wed, 21 Jan 2026 04:09:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIz9du30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76B2510E6BF;
 Wed, 21 Jan 2026 04:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968583; x=1800504583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RuW2rKkOV3fGqzKSESbrMMGeFjYEe0umkFE5p0vt0ho=;
 b=aIz9du30gTPJriV1pufhPPk81zA9Ij/JzXnIM9724nJJS46wiknoG0z3
 ILUPHKRV/aIWUH1wJeZtRoyZRqdg+x2p0N08NgzIMHWJXTGALVzNLn+hk
 Ht3WlUEZidP0GWDJgioafGImkRf7GAXLhZ6eue+mGEDwIPDAfssH/ouL0
 atLJhkVypvtWdxa3kRQvPPjXkrT4czQZGFu+KXWfG/evchGIFJgk29pyi
 +Lz6I5F9hXgrlWbVcZhY1o5szHet6SGwsBct5zQxiu5HjN1ejQxjx219Z
 JQe2hDYTJyuhXEaxb5jsAzaj7JxRKYWvvluyaD9jqxehLuKgMlmlhdnnj A==;
X-CSE-ConnectionGUID: VW0f1KivR9metxOx2vCOxg==
X-CSE-MsgGUID: K3t+4DHGTDOq807Am69gbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299966"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299966"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:43 -0800
X-CSE-ConnectionGUID: tzCXlOV1RoOq0o8jCTrXtg==
X-CSE-MsgGUID: wEQIlmJBRpWlpZSsXlacAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330982"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:43 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/14] drm/i915/dp: Introduce helper to check pixel rate
 against dotclock limits
Date: Wed, 21 Jan 2026 09:23:27 +0530
Message-ID: <20260121035330.2793386-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3E0C150D46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_dp_pixel_rate_fits_dotclk() helper, that checks the
required pixel rate against platform dotclock limit.
With joined pipes the effective dotclock limit depends upon the number
of joined pipes.

Call the helper from the mode_valid phase and from the compute_config
phase where we need to check the limits for the given target clock for a
given joiner candidate.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 26 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 +++++------
 3 files changed, 27 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2ead783129f4..ed81cf4adb9b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1440,6 +1440,18 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
+bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
+				     int target_clock,
+				     int num_joined_pipes)
+{
+	int max_dotclk = display->cdclk.max_dotclk_freq;
+	int effective_dotclk_limit;
+
+	effective_dotclk_limit = max_dotclk * num_joined_pipes;
+
+	return target_clock <= effective_dotclk_limit;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1495,7 +1507,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   link_bpp_x16, 0);
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
 		enum joiner_type joiner = joiner_candidates[i];
 
 		status = MODE_CLOCK_HIGH;
@@ -1569,9 +1580,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (target_clock <= max_dotclk) {
+		if (intel_dp_pixel_rate_fits_dotclk(display,
+						    target_clock,
+						    num_joined_pipes)) {
 			status = MODE_OK;
 			break;
 		}
@@ -2888,7 +2899,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		enum joiner_type joiner = joiner_candidates[i];
-		int max_dotclk = display->cdclk.max_dotclk_freq;
 
 		if (joiner == FORCED_JOINER) {
 			if (!connector->force_joined_pipes)
@@ -2930,9 +2940,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		if (ret)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (adjusted_mode->crtc_clock <= max_dotclk) {
+		if (intel_dp_pixel_rate_fits_dotclk(display,
+						    adjusted_mode->crtc_clock,
+						    num_joined_pipes)) {
 			ret = 0;
 			break;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e5913fba0143..0c1cd843bd0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -233,5 +233,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 			       bool assume_all_enabled);
 int intel_dp_hdisplay_limit(struct intel_display *display);
+bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
+				     int target_clock,
+				     int num_joined_pipes);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 46208ee67905..7c957351467e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -710,7 +710,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		enum joiner_type joiner = joiner_candidates[i];
-		int max_dotclk = display->cdclk.max_dotclk_freq;
 
 		ret = -EINVAL;
 
@@ -742,9 +741,9 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		if (ret)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (adjusted_mode->clock <= max_dotclk) {
+		if (intel_dp_pixel_rate_fits_dotclk(display,
+						    adjusted_mode->clock,
+						    num_joined_pipes)) {
 			ret = 0;
 			break;
 		}
@@ -1542,7 +1541,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
 		enum joiner_type joiner = joiner_candidates[i];
 
 		*status = MODE_CLOCK_HIGH;
@@ -1593,9 +1591,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		if (*status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (mode->clock <= max_dotclk) {
+		if (intel_dp_pixel_rate_fits_dotclk(display,
+						    mode->clock,
+						    num_joined_pipes)) {
 			*status = MODE_OK;
 			break;
 		}
-- 
2.45.2

