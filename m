Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAF0OpPLAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:29:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA5350DC3C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E7F10E741;
	Mon, 11 May 2026 12:29:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NLdFZFJK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79B810E73E;
 Mon, 11 May 2026 12:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502545; x=1810038545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t322ZjEx73WtFg8yexp2X7vJW8H2BUvDS6Zx5fkb3TQ=;
 b=NLdFZFJK2pkEkskU9OpKPYwL0PzkAJmHG5RLhAYHk/FF31a9CMUKopLp
 FWDfCk9bvzNFqcCNqzzF5iatFHXiasAHbAL+6bTAMbPDRF/4/n/J7vd9m
 8won97+CvXJWDD0IXZjlVk5x8MHD1QCB+dYz6jyfD28PXuiVF7UDrI2q8
 5MhdVDwIIrALAfPmVFFDT5g7hTFIuUYv4WO+PxSqgm+RVQRC0dLy+SU5Z
 B/CujhYbC1iDtoo1IlR3MyI/OGDiWpw/zierD/ufbEggHIGbY+MKSP91+
 mxibDlXMQ1H0UISfPjyLDE53E+QxZA5LtxWw7gZcdcITXnkoRvDo45iPf A==;
X-CSE-ConnectionGUID: ok4O+NHxQZiv1brlEgCaGg==
X-CSE-MsgGUID: jTaSP9q5Te+DqTwgPa1UKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762824"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762824"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:29:04 -0700
X-CSE-ConnectionGUID: ofA74Ml0Q6274H5MLjDoYg==
X-CSE-MsgGUID: Kmc2aoYMTr6JgSZ2wVpLug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801462"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:29:03 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 11/11] drm/i915/bw: insert a sw bw info entry to cater low
 data rate usecases
Date: Mon, 11 May 2026 15:28:16 +0300
Message-ID: <20260511122816.1235478-12-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
References: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Queue-Id: 9DA5350DC3C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

In xe3+, soc can lower the fabric frequency when the display
needs less bandwidth than the minimum GV point. This threshold
has been defined as 20GB/s. To enable this,

Add a new low bw info point with this peakbw threshold of 20GB/s
based on the following conditions:
1. Only for xe3+ versions
2. There is at least one QGV point
3. Number QGV points is less than 8
4. Lowest peak bw across all the QGV point is less than 20 GB/s
5. And the derated bw is in the lowest peak bw qgv point is also
   less than this threshold of 20GB/s

This will make the driver to send this new threshold of 20GB/s
as the pmdemand request whenever the bw required for a usecase
is less than 20GB/s. The current pcode can handle this lower
peakbw value and adjust the fabric frequency accordingly.

Bspec: 68880
Assisted-by: Copilot:claude-sonnet-4.6
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 54 +++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   |  1 +
 2 files changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 938c0294c251..747279075e29 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -54,6 +54,8 @@ struct intel_qgv_point {
 
 #define DEPROGBWPCLIMIT		60
 
+#define PEAK_BW_THRESHOLD	20000
+
 struct intel_psf_gv_point {
 	u8 clk; /* clock in multiples of 16.6666 MHz */
 };
@@ -589,6 +591,50 @@ static int icl_get_bw_info(struct intel_display *display,
 	return 0;
 }
 
+static bool xe3_check_lower_peakbw(struct intel_display *display,
+				   const struct intel_qgv_info *qi,
+				   int num_channels)
+{
+	unsigned int lowest_peakbw;
+
+	if (!HAS_PEAK_BW_THRESHOLD(display))
+		return false;
+
+	if (qi->num_points >= I915_NUM_QGV_POINTS) {
+		drm_warn(display->drm, "Cannot insert lowest QGV point, not enough space\n");
+		return false;
+	}
+
+	lowest_peakbw = DIV_ROUND_CLOSEST(qi->points[0].dclk *
+					  qi->channel_width * num_channels, 8);
+	if (lowest_peakbw <= PEAK_BW_THRESHOLD) {
+		drm_dbg_kms(display->drm,
+			    "Lowest QGV point has peak BW %u MB/s, no need to insert lower point\n",
+			    lowest_peakbw);
+		return false;
+	}
+
+	return true;
+}
+
+static void xe3_insert_lowest_qgv_point(struct intel_display *display,
+					struct intel_bw_info *bi)
+{
+	if (bi->num_qgv_points >= ARRAY_SIZE(bi->deratedbw))
+		return;
+
+	memmove(&bi->deratedbw[1], &bi->deratedbw[0],
+		bi->num_qgv_points * sizeof(*bi->deratedbw));
+
+	memmove(&bi->peakbw[1], &bi->peakbw[0],
+		bi->num_qgv_points * sizeof(*bi->peakbw));
+
+	/* Keep the derated bandwidth as the threshold*/
+	bi->deratedbw[0] = PEAK_BW_THRESHOLD;
+	bi->peakbw[0] = PEAK_BW_THRESHOLD;
+	bi->num_qgv_points++;
+}
+
 static int tgl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_sa_info *sa)
@@ -598,6 +644,7 @@ static int tgl_get_bw_info(struct intel_display *display,
 	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
+	bool insert_low_peakbw;
 	int maxdebw, peakbw;
 	int clperchgroup;
 	int num_groups = ARRAY_SIZE(display->bw.max);
@@ -636,6 +683,10 @@ static int tgl_get_bw_info(struct intel_display *display,
 	 */
 	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
 
+	insert_low_peakbw = xe3_check_lower_peakbw(display, &qi, num_channels);
+
+	display->bw.max[i].num_planes = 0;
+
 	for (i = 0; i < num_groups; i++) {
 		struct intel_bw_info *bi = &display->bw.max[i];
 		struct intel_bw_info *bi_next;
@@ -678,6 +729,9 @@ static int tgl_get_bw_info(struct intel_display *display,
 							  qi.channel_width, 8);
 		}
 
+		if (insert_low_peakbw)
+			xe3_insert_lowest_qgv_point(display, bi);
+
 		for (j = 0; j < qi.num_psf_points; j++) {
 			const struct intel_psf_gv_point *sp = &qi.psf_points[j];
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 65283286771a..b31ec42c3248 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -192,6 +192,7 @@ struct intel_display_platforms {
 #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
 #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
+#define HAS_PEAK_BW_THRESHOLD(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_PIXEL_NORMALIZER(__display)	(DISPLAY_VER(__display) >= 35)
 #define HAS_PMDEMAND(__display)		(DISPLAY_VER(__display) >= 14)
-- 
2.43.0

