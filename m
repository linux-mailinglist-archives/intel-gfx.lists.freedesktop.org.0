Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966CA7D448E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C9B10E2B4;
	Tue, 24 Oct 2023 01:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E4810E2AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109750; x=1729645750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LG9a8yswoMyAlMXOh7tiPQXu5plu3kSe+Z0VazOITG0=;
 b=CMZZMu6fePW949nrOdy3uY2hcdlHKzRyay3QqIx1CKGkqLQ9duxtFy0a
 TEb81WA8LX7BrVRddqDA22uYcqSP5TG2sZLOo73Q7kuy1+jsKYjrCWPkS
 xOJGGjfUJsTSCSahAJkasMxSj2XKTTy8Eim4ldGIiY3UplrzGdwk/mS4Q
 f2s9kqS/1wKtdzlQlZ2hGs9M8/NhorpUq5ewkcTi5yHzRZcc5Rsd/Tbzm
 dO5AiRctDtGBulzTI+iQK12gvs5P4tcEe7KRfXC43atWBbAc1lc4u5lL9
 YeQpJqOzeaIAint/R9u9rQkgzGP601+Mb4lNRjGN/Z5gEuHkRsSQ6StEa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304355"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304355"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870034"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870034"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:04 +0300
Message-Id: <20231024010925.3949910-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/29] drm/dp: Add helpers to calculate the link
 BW overhead
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

Add helpers drivers can use to calculate the BW allocation overhead -
due to SSC, FEC, DSC and data alignment on symbol cycles - and the
channel coding efficiency - due to the 8b/10b, 128b/132b encoding. On
128b/132b links the FEC overhead is part of the coding efficiency, so
not accounted for in the BW allocation overhead.

The drivers can use these functions to calculate a ratio, controlling
the stream symbol insertion rate of the source device in each SST TU
or MST MTP frame. Drivers can calculate this

m/n = drm_dp_bw_overhead() / drm_dp_bw_channel_coding_efficiency()

ratio for a given stream and with that the

mtp_count = CEIL(64 * m / n)

allocated MTPs for the stream in a frame and

pbn = CEIL(64 * dm_mst_get_pbn_divider() * m / n)

allocated PBNs for the stream on the MST link path.

Take drm_dp_bw_overhead() into use in drm_dp_calc_pbn_mode(), for
drivers calculating the PBN value directly.

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c       | 113 ++++++++++++++++++
 drivers/gpu/drm/display/drm_dp_mst_topology.c |  23 +++-
 include/drm/display/drm_dp_helper.h           |  11 ++
 3 files changed, 141 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index e5d7970a9ddd0..98c533b74ac89 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -3899,4 +3899,117 @@ int drm_panel_dp_aux_backlight(struct drm_panel *panel, struct drm_dp_aux *aux)
 }
 EXPORT_SYMBOL(drm_panel_dp_aux_backlight);
 
+/* See DP Standard v2.1 2.6.4.4.1.1, 2.8.4.4, 2.8.7 */
+static int drm_dp_link_symbol_cycles(int lane_count, int pixels, int bpp_x16,
+				     int symbol_size, bool is_mst)
+{
+	int cycles = DIV_ROUND_UP(pixels * bpp_x16, 16 * symbol_size * lane_count);
+	int align = is_mst ? 4 / lane_count : 1;
+
+	return ALIGN(cycles, align);
+}
+
+static int drm_dp_link_dsc_symbol_cycles(int lane_count, int pixels, int slice_count,
+					 int bpp_x16, int symbol_size, bool is_mst)
+{
+	int slice_pixels = DIV_ROUND_UP(pixels, slice_count);
+	int slice_data_cycles = drm_dp_link_symbol_cycles(lane_count, slice_pixels,
+							  bpp_x16, symbol_size, is_mst);
+	int slice_eoc_cycles = is_mst ? 4 / lane_count : 1;
+
+	return slice_count * (slice_data_cycles + slice_eoc_cycles);
+}
+
+/**
+ * drm_dp_bw_overhead - Calculate the BW overhead of a DP link stream
+ * @lane_count: DP link lane count
+ * @hactive: pixel count of the active period in one scanline of the stream
+ * @dsc_slice_count: DSC slice count if @flags/DRM_DP_LINK_BW_OVERHEAD_DSC is set
+ * @bpp_x16: bits per pixel in .4 binary fixed point
+ * @flags: DRM_DP_OVERHEAD_x flags
+ *
+ * Calculate the BW allocation overhead of a DP link stream, depending
+ * on the link's
+ * - @lane_count
+ * - SST/MST mode (@flags / %DRM_DP_OVERHEAD_MST)
+ * - symbol size (@flags / %DRM_DP_OVERHEAD_UHBR)
+ * - FEC mode (@flags / %DRM_DP_OVERHEAD_FEC)
+ * - SSC mode (@flags / %DRM_DP_OVERHEAD_SSC)
+ * as well as the stream's
+ * - @hactive timing
+ * - @bpp_x16 color depth
+ * - compression mode (@flags / %DRM_DP_OVERHEAD_DSC).
+ * Note that this overhead doesn't account for the 8b/10b, 128b/132b
+ * channel coding efficiency, for that see
+ * @drm_dp_link_bw_channel_coding_efficiency().
+ *
+ * Returns the overhead as 100% + overhead% in 1ppm units.
+ */
+int drm_dp_bw_overhead(int lane_count, int hactive,
+		       int dsc_slice_count,
+		       int bpp_x16, unsigned long flags)
+{
+	int symbol_size = flags & DRM_DP_BW_OVERHEAD_UHBR ? 32 : 8;
+	bool is_mst = flags & DRM_DP_BW_OVERHEAD_MST;
+	u32 overhead = 1000000;
+	int symbol_cycles;
+
+	/*
+	 * DP Standard v2.1 2.6.4.1
+	 * SSC downspread and ref clock variation margin:
+	 *   5300ppm + 300ppm ~ 0.6%
+	 */
+	if (flags & DRM_DP_BW_OVERHEAD_SSC)
+		overhead += 6000;
+
+	/*
+	 * DP Standard v2.1 2.6.4.1.1:
+	 * FEC symbol insertions for 8b/10b channel coding:
+	 *   2.4%
+	 */
+	if (flags & DRM_DP_BW_OVERHEAD_FEC)
+		overhead += 24000;
+
+	/*
+	 * DP Standard v2.1 2.7.9, 5.9.7
+	 * The FEC overhead for UHBR is accounted for in its 96.71% channel
+	 * coding efficiency.
+	 */
+	WARN_ON((flags & DRM_DP_BW_OVERHEAD_UHBR) &&
+		(flags & DRM_DP_BW_OVERHEAD_FEC));
+
+	if (flags & DRM_DP_BW_OVERHEAD_DSC)
+		symbol_cycles = drm_dp_link_dsc_symbol_cycles(lane_count, hactive,
+							      dsc_slice_count,
+							      bpp_x16, symbol_size,
+							      is_mst);
+	else
+		symbol_cycles = drm_dp_link_symbol_cycles(lane_count, hactive,
+							  bpp_x16, symbol_size,
+							  is_mst);
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(symbol_cycles * symbol_size * lane_count,
+					    overhead * 16),
+				hactive * bpp_x16);
+}
+EXPORT_SYMBOL(drm_dp_bw_overhead);
+
+/**
+ * Returns the efficiency in the 100%/coding-overhead% ratio in
+ * 1ppm units.
+ */
+int drm_dp_bw_channel_coding_efficiency(bool is_uhbr)
+{
+	if (is_uhbr)
+		return 967100;
+	else
+		/*
+		 * Note that on 8b/10b MST the efficiency is only
+		 * 78.75% due to the 1 out of 64 MTPH packet overhead,
+		 * not accounted for here.
+		 */
+		return 800000;
+}
+EXPORT_SYMBOL(drm_dp_bw_channel_coding_efficiency);
+
 #endif
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index cc0a8fe84d290..d7383f2fd6cfe 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -4726,17 +4726,28 @@ EXPORT_SYMBOL(drm_dp_check_act_status);
 int drm_dp_calc_pbn_mode(int clock, int bpp)
 {
 	/*
-	 * margin 5300ppm + 300ppm ~ 0.6% as per spec, factor is 1.006
 	 * The unit of 54/64Mbytes/sec is an arbitrary unit chosen based on
 	 * common multiplier to render an integer PBN for all link rate/lane
 	 * counts combinations
 	 * calculate
-	 * peak_kbps *= (1006/1000)
-	 * peak_kbps *= (64/54)
-	 * peak_kbps *= 8    convert to bytes
+	 * peak_kbps = clock * bpp / 16
+	 * peak_kbps *= SSC overhead / 1000000
+	 * peak_kbps /= 8    convert to Kbytes
+	 * peak_kBps *= (64/54) / 1000    convert to PBN
 	 */
-	return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006 >> 4),
-				1000 * 8 * 54 * 1000);
+	/*
+	 * TODO: Use the actual link and mode parameters to calculate
+	 * the overhead. For now it's assumed that these are
+	 * 4 link lanes, 4096 hactive pixels, which don't add any
+	 * significant data padding overhead and that there is no DSC
+	 * or FEC overhead.
+	 */
+	int overhead = drm_dp_bw_overhead(4, 4096, 0, bpp,
+					  DRM_DP_BW_OVERHEAD_MST |
+					  DRM_DP_BW_OVERHEAD_SSC);
+
+	return DIV64_U64_ROUND_UP(mul_u32_u32(clock * bpp, 64 * overhead >> 4),
+				  1000000ULL * 8 * 54 * 1000);
 }
 EXPORT_SYMBOL(drm_dp_calc_pbn_mode);
 
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 351f38d5cc351..010cb5a3b39e0 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -788,4 +788,15 @@ bool drm_dp_downstream_rgb_to_ycbcr_conversion(const u8 dpcd[DP_RECEIVER_CAP_SIZ
 					       const u8 port_cap[4], u8 color_spc);
 int drm_dp_pcon_convert_rgb_to_ycbcr(struct drm_dp_aux *aux, u8 color_spc);
 
+#define DRM_DP_BW_OVERHEAD_MST	BIT(0)
+#define DRM_DP_BW_OVERHEAD_UHBR	BIT(1)
+#define DRM_DP_BW_OVERHEAD_SSC	BIT(2)
+#define DRM_DP_BW_OVERHEAD_FEC	BIT(3)
+#define DRM_DP_BW_OVERHEAD_DSC	BIT(4)
+
+int drm_dp_bw_overhead(int lane_count, int hactive,
+		       int dsc_slice_count,
+		       int bpp_x16, unsigned long flags);
+int drm_dp_bw_channel_coding_efficiency(bool is_uhbr);
+
 #endif /* _DRM_DP_HELPER_H_ */
-- 
2.39.2

