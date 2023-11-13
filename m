Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D707EA46A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 21:11:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CEDD10E27F;
	Mon, 13 Nov 2023 20:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D8B010E410
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 20:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699906273; x=1731442273;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3uQVpk2WC20P79bu2oF+B66lV3AJDeozSuLJ8utX8a4=;
 b=Wv+25sIaF6IUe9DdQVoIfhVBPBMCzw6nx9/TZxl/O1WNDVEu5fyXbHYZ
 NwUqPaBRb1OIk0aNJyZy8wxbgbOZKSiAkKFT7exox8dLxHO4OsAZA+mQi
 HIJC/XT6swjtRyAt7MzBtXF91xif4UM37hOBPzDIGVPC7qsyYIOvoS96U
 IAEsUbseJjAvGS4z3PVNo1RcMC0SyJLAPsiW+aB/TwMeS+r5Oqo3bfh/f
 UmiRxWRtVNBNfx5zBrtnRlJ7CwO7Ccvzz4kuiyF1SSxS1czi9XTrigYBd
 wcR7C3w4SamkaxG7ngC6LH8X3V1vmHcLMMWW2MeS09ZeqWAYL4y9Q6hs+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3553662"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; 
   d="scan'208";a="3553662"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 12:11:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="937829888"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="937829888"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 12:11:11 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 22:11:08 +0200
Message-Id: <20231113201110.510724-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231113201110.510724-1-imre.deak@intel.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N values
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.c      | 24 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h      |  2 ++
 3 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 24aebdb715e7d..c059eb0170a5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2411,6 +2411,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
 		       struct intel_link_m_n *m_n)
 {
 	u32 data_clock = bits_per_pixel * pixel_clock;
+	u32 link_symbol_clock = intel_dp_link_symbol_clock(link_clock);
 	u32 data_m;
 	u32 data_n;
 
@@ -2431,7 +2432,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
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
index f662d1ce5f72c..80e1e887432fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -132,6 +132,30 @@ bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
 	return intel_dp_is_uhbr_rate(crtc_state->port_clock);
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
+	return intel_dp_is_uhbr_rate(rate) ? 32 : 10;
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
index e80da67554196..64dbf8f192708 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -82,6 +82,8 @@ bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr_rate(int rate);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
+int intel_dp_link_symbol_size(int rate);
+int intel_dp_link_symbol_clock(int rate);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
 				  bool long_hpd);
-- 
2.39.2

