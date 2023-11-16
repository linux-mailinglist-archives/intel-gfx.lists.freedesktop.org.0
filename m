Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC48D7EE163
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:19:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E68710E5E9;
	Thu, 16 Nov 2023 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A5210E5E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140732; x=1731676732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MOjC4lx2GRVClcO6fgd6UnANDZ+ULA0HQ3+IodCNmUk=;
 b=MvC/+wlDevwFUF9IrLl/G8R5gsuML3kbcqlQI6W7CFd+6r5i7xOGkkpG
 6/ezj8C1xiq924V1ks4D0scMKCTqmdCw4plEPg+SA8UD8wSPmGrJqDdZR
 Tw8qbD90fMM2nsHiiRZ/IUYzk6+cGNJnA1WNhbFPDMPUnP9a0UCZTm19F
 11E+1rjOAvHUW6Ip0a1XpRrogVlxsHhWG8jTO5Os1JXF5O5dbvFYwaD2q
 tc7lZ/9bnAKb+PdZpm006PNKlxxTIsh5npDKAfhGkw0nm+GGFylYUyUeS
 rVoOmkyAE72MpYmkURkQ04yp5c4bTDoy+UUzxDIFctZ8i7gNp0g7zBIyA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177166"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177166"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834356"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834356"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:50 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:36 +0200
Message-Id: <20231116131841.1588781-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/11] drm/i915/dp: Fix UHBR link M/N values
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

The link M/N ratio is the data rate / link symbol clock rate, fix things
up accordingly. On DP 1.4 this ratio was correct as the link symbol clock
rate in that case matched the link data rate (in bytes/sec units, the
symbol size being 8 bits), however it wasn't correct for UHBR rates
where the symbol size is 32 bits.

Kudos to Arun noticing in Bspec the incorrect use of link data rate in
the ratio's N value.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.c      | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h      |  2 ++
 3 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9755e0a5042c4..744c321792fcf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2411,6 +2411,7 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 		       struct intel_link_m_n *m_n)
 {
 	u32 data_clock = DIV_ROUND_UP(bits_per_pixel_x16 * pixel_clock, 16);
+	u32 link_symbol_clock = intel_dp_link_symbol_clock(link_clock);
 	u32 data_m;
 	u32 data_n;
 
@@ -2431,7 +2432,7 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 		    0x8000000);
 
 	compute_m_n(&m_n->link_m, &m_n->link_n,
-		    pixel_clock, link_clock,
+		    pixel_clock, link_symbol_clock,
 		    0x80000);
 }
 
@@ -3943,20 +3944,23 @@ int intel_dotclock_calculate(int link_freq,
 			     const struct intel_link_m_n *m_n)
 {
 	/*
-	 * The calculation for the data clock is:
+	 * The calculation for the data clock -> pixel clock is:
 	 * pixel_clock = ((m/n)*(link_clock * nr_lanes))/bpp
 	 * But we want to avoid losing precison if possible, so:
 	 * pixel_clock = ((m * link_clock * nr_lanes)/(n*bpp))
 	 *
-	 * and the link clock is simpler:
-	 * link_clock = (m * link_clock) / n
+	 * and for link freq (10kbs units) -> pixel clock it is:
+	 * link_symbol_clock = link_freq * 10 / link_symbol_size
+	 * pixel_clock = (m * link_symbol_clock) / n
+	 *    or for more precision:
+	 * pixel_clock = (m * link_freq * 10) / (n * link_symbol_size)
 	 */
 
 	if (!m_n->link_n)
 		return 0;
 
-	return DIV_ROUND_UP_ULL(mul_u32_u32(m_n->link_m, link_freq),
-				m_n->link_n);
+	return DIV_ROUND_UP_ULL(mul_u32_u32(m_n->link_m, link_freq * 10),
+				m_n->link_n * intel_dp_link_symbol_size(link_freq));
 }
 
 int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1b80747044a80..521838caa1979 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -127,6 +127,30 @@ bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
 	return drm_dp_is_uhbr_rate(crtc_state->port_clock);
 }
 
+/**
+ * intel_dp_link_symbol_size - get the link symbol size for a given link rate
+ * @rate: link rate in 10kbit/s units
+ *
+ * Returns the link symbol size in bits/symbol units depending on the link
+ * rate -> channel coding.
+ */
+int intel_dp_link_symbol_size(int rate)
+{
+	return drm_dp_is_uhbr_rate(rate) ? 32 : 10;
+}
+
+/**
+ * intel_dp_link_symbol_clock - convert link rate to link symbol clock
+ * @rate: link rate in 10kbit/s units
+ *
+ * Returns the link symbol clock frequency in kHz units depending on the
+ * link rate and channel coding.
+ */
+int intel_dp_link_symbol_clock(int rate)
+{
+	return DIV_ROUND_CLOSEST(rate * 10, intel_dp_link_symbol_size(rate));
+}
+
 static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)
 {
 	intel_dp->sink_rates[0] = 162000;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 664fa93bbf534..777aa858f899c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -81,6 +81,8 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
+int intel_dp_link_symbol_size(int rate);
+int intel_dp_link_symbol_clock(int rate);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
 				  bool long_hpd);
-- 
2.39.2

