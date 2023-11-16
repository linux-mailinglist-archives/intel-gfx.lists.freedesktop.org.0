Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AFA7EE15B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:19:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4159B10E5E5;
	Thu, 16 Nov 2023 13:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FA810E5DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140729; x=1731676729;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u6mAbQhwh+/1gAdrx3jrYt7IeHZVnr5rIUMJdzfa+H8=;
 b=GzZ5smPlOWKeMlISxQIjXAsZt701lZ3jwgFw83uQG7Mxza5MQlMUhLRv
 Bj0WSZrgIO05VJyJp21Iq8AJckRsCYCi03u/qxe0ox3exjoRrUT81+db4
 dktKsHBz7gF1wRk3XT4t/RUylrHR9S2TTBm1uo36rrWpHGLgSPdCwSvSr
 vaUd5Lc4P0aCnbihorKOWvSjVP03r9ZIEii0BaQODmC+0mWHOYHGrY9YI
 J5a6I72pKrfFXX8IG8CftwvrRScrqxpXM/KcCNzGYwMZczrTXIsGWwOwp
 2SQFiHvID+iP8p8NhZZwdTwRylWGq/7H2imtv8VsAQ23i1BwuwwYhAOUJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177158"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177158"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834340"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834340"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:48 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:34 +0200
Message-Id: <20231116131841.1588781-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915/dp: Replace
 intel_dp_is_uhbr_rate() with drm_dp_is_uhbr_rate()
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

Replace intel_dp_is_uhbr_rate() with the recently added
drm_dp_is_uhbr_rate().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 7 +------
 drivers/gpu/drm/i915/display/intel_dp.h      | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 125903007a292..1e045e4fbe582 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2394,7 +2394,7 @@ add_bw_alloc_overhead(int link_clock, int bw_overhead,
 		      int pixel_data_rate, int link_data_rate,
 		      u32 *data_m, u32 *data_n)
 {
-	bool is_uhbr = intel_dp_is_uhbr_rate(link_clock);
+	bool is_uhbr = drm_dp_is_uhbr_rate(link_clock);
 	int ch_coding_efficiency =
 		drm_dp_bw_channel_coding_efficiency(is_uhbr);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54bd0bffa9f08..1b80747044a80 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -121,15 +121,10 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 
-bool intel_dp_is_uhbr_rate(int rate)
-{
-	return rate >= 1000000;
-}
-
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
 {
-	return intel_dp_is_uhbr_rate(crtc_state->port_clock);
+	return drm_dp_is_uhbr_rate(crtc_state->port_clock);
 }
 
 static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e80da67554196..664fa93bbf534 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -80,7 +80,6 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 				   struct drm_connector_state *conn_state);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
-bool intel_dp_is_uhbr_rate(int rate);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
-- 
2.39.2

