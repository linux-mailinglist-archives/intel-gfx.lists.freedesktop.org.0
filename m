Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A5A6E2A65
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 21:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894C110EE61;
	Fri, 14 Apr 2023 19:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48FA910EE58
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 19:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681498933; x=1713034933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G1nKu8kgVA1IzAv2MBV+xoLwdvdpf5wBWhddBMLW0CE=;
 b=eZU0Plb6X9ihnM7BuMJZSK87rD1qHm+8WHBDpKlTKNESkPbdupHgTt42
 4ri9+xXqeRulNSVxJSw8KvkC2OfvzvXcfKHlGHhqBrWFmMATWxhh1TC8w
 FGUsduY+r2tt+4OPfaGVvueGCyElAmlL/FngaO4DzfDSF/JtQuuF2CAoR
 G/2Wfk7xLEatDkzB8BVHz2K+V3I/klaYUUitwf/5Hi+F7Pbf5kber7gFp
 k/6GemS5FXiusaz9GiUDkrtjA8z+x3bgaA2nHs72Hkc92W89ebBELNhgU
 CdMgxCyDR4kTwPBLjdx+VMuh8R5X6BYeOAaU9ktAtAY7GNAslbMtwLEda Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="324897721"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="324897721"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 12:02:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="779301970"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="779301970"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 14 Apr 2023 12:01:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Apr 2023 22:01:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 22:01:59 +0300
Message-Id: <20230414190159.7904-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
References: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Make intel_{mpllb,
 c10pll}_state_verify() safer
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_{mpllb,c10pll}_state_verify() blows up if you call them
for a non-modeset/fastset commit on account of the relevant
connector not being part of the overall atomic state.
Currently the state checker only runs for modeset/fastset
commits, but for testing purposes it is sometimes desirable
to run it for other commits too. Check for modeset/fastset
in intel_{mpllb,c10pll}_state_verify() itself to make this safe.

v2: Give the new intel_c10pll_state_verify() the same treatment
    Add comment to explain why we do this

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 5 +++++
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d46ff3401e5e..83180074b512 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1874,6 +1874,11 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
 	if (!new_crtc_state->hw.active)
 		return;
 
+	/* intel_get_crtc_new_encoder() only works for modeset/fastset commits */
+	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state))
+		return;
+
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	phy = intel_port_to_phy(i915, encoder->port);
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 1cfb94b5cedb..a72677bf617b 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -2007,6 +2007,11 @@ void intel_mpllb_state_verify(struct intel_atomic_state *state,
 	if (!new_crtc_state->hw.active)
 		return;
 
+	/* intel_get_crtc_new_encoder() only works for modeset/fastset commits */
+	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state))
+		return;
+
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
 
-- 
2.39.2

