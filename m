Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A2C4EBDAD
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 11:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB33010F6DD;
	Wed, 30 Mar 2022 09:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A0110F73A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 09:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648632650; x=1680168650;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VXBj4iHBb30mT4rzgSBwqMngewfKmOFbqCKz7ztBZ3Y=;
 b=aYijenHjpxkxoO4EbEXJkrzbJKOoD1Yz8Xpur8QwcN8mxFOJkhLQmfIO
 46PMXy7L1QN2rKZG5SIVy6/7doq8MmNVyR6onFNNx+3teXN6/UVeTl3ZH
 vNMAxJ5XvLkbB2BhZBbIZIGZOeV1T/Y53t5tTz/g8p53zknhYsV3lPpWW
 FfTWosdMRlUn3j4roNanDlc7yTIdiGmTER0HCIaWlH+0okHnF2wPzLRo3
 /Rf80VdnHGOtrmlhimcHHtjxl3SDeLb8rq3/aC/YBxuyRQwd2FeUWAg7r
 w4DtPNA2Ck5UnUVd+DBTHePSylBd2h7qXHMQd3tQ+OB+Re2BUdT5CbDr3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="240093450"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="240093450"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:30:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565456496"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:30:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 12:30:19 +0300
Message-Id: <20220330093019.4150386-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: make DSC usage logging actually
 useful
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Debug log when DSC is going to be used, and why, instead of
unconditionally logging the rarely used debug option setting, which
might not have any bearing on whether DSC is going to be used or not.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c7f8fc654857..56c36c9ef173 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1483,6 +1483,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
+	bool joiner_needs_dsc = false;
 	int ret;
 
 	limits.min_rate = intel_dp_common_rate(intel_dp, 0);
@@ -1518,19 +1519,23 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 				    adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
 
+	/*
+	 * Pipe joiner needs compression up to display 12 due to bandwidth
+	 * limitation. DG2 onwards pipe joiner can be enabled without
+	 * compression.
+	 */
+	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
+
 	/*
 	 * Optimize for slow and wide for everything, because there are some
 	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
 	 */
 	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
 
-	/*
-	 * Pipe joiner needs compression upto display12 due to BW limitation. DG2
-	 * onwards pipe joiner can be enabled without compression.
-	 */
-	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
-	if (ret || intel_dp->force_dsc_en ||
-	    (DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes)) {
+	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
+		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
+			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
+			    str_yes_no(intel_dp->force_dsc_en));
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits);
 		if (ret < 0)
-- 
2.30.2

