Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WEniGdphMGpVSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 091C9689E34
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GdTAAu5w;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987D410E6B9;
	Mon, 15 Jun 2026 20:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7371210E6B8;
 Mon, 15 Jun 2026 20:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555669; x=1813091669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GXBlTB94iNpg80zI9aMV/bKiv+HFaRY0WDLps2B0QJw=;
 b=GdTAAu5wOHsm4qgzgJEVfWB4z7XVCl/jIzSOdARGUXtJXFYLU5bLTYtw
 ogSPuIgBWvWZJA+RUOdF9vuTmmQqzLNgNIJO1PTQHnc9IGZOq5KOfzNGN
 WmmXbynUkKIPDjscZ4J0ioHaqn5DWjnQ423017xZWKyUwMuTU4+3uA9ln
 Q+/ntrsdlTL2bqWE5xumRTCLGzoWWQ5XTG9xvqFdsFDcWCz2jdAdPIVfY
 vodtrXBQMQAUR8RxWu7kqxogulM33f0dbshac069Nxr+exR+Sv6iKkFAu
 IKtRVr5bMaJCnmAwFCgFXNXFxFAnQjScpv+FSHTOAUay/TMzEah3pEn/W w==;
X-CSE-ConnectionGUID: RE1naTOYTFGkIVvtOFlKgQ==
X-CSE-MsgGUID: eOd7Aec1RNCWjhukXs2+/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694625"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694625"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:29 -0700
X-CSE-ConnectionGUID: Ikvpyh3NSUK6bRpxmTtz2A==
X-CSE-MsgGUID: zk0UCazNTYuLLO6kWlbDOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="252538630"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:27 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth threshold
Date: Mon, 15 Jun 2026 23:33:55 +0300
Message-ID: <20260615203355.218578-8-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615203355.218578-1-vinod.govindapillai@intel.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 091C9689E34

On Xe3+, the SoC can lower the fabric frequency when the display
needs less bandwidth than the minimum GV point. This threshold is
defined as 20 GB/s. The driver can choose to request this threshold
when the required data rate falls below it.

Add an extra QGV entry, with both peak bw and derated bw set to
20 GB/s, to the bandwidth info when all of the following hold:
1. The platform is Xe3+.
2. There is at least one existing QGV point.
3. The number of QGV points is below 8 (the maximum).

Once a plane group is found, the driver iterates over all QGV points
in that group to find the best match for the required data rate. If
the required data rate is below 20 GB/s, it selects the peak bw from
this new QGV point (20 GB/s).

v2: add the peak bandwidth threshold as an additional QGV entry

Bspec: 68880
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 33 +++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   |  1 +
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index db2ee9de5eec..71aa9a6928db 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -52,6 +52,8 @@ struct intel_qgv_point {
 
 #define DEPROGBWPCLIMIT		60
 
+#define PEAK_BW_THRESHOLD	20000
+
 struct intel_psf_gv_point {
 	u8 clk; /* clock in multiples of 16.6666 MHz */
 };
@@ -601,6 +603,34 @@ static int tgl_peakbw(int num_channels, int channel_width, int dclk)
 	return num_channels * (channel_width / 8) * dclk;
 }
 
+static void xe3_add_peakbw_threshold(struct intel_display *display)
+{
+	u8 qgv_points = display->bw.num_qgv_points;
+
+	if (!HAS_PEAK_BW_THRESHOLD(display))
+		return;
+
+	if (qgv_points >= I915_NUM_QGV_POINTS) {
+		drm_warn(display->drm, "Maximum QGV points reached. Ignore the peak bw threshold\n");
+		return;
+	}
+
+	if (qgv_points <= 1) {
+		drm_warn(display->drm, "SAGV not supported. Ignore the peak bw threshold\n");
+		return;
+	}
+
+	display->bw.num_qgv_points++;
+
+	display->bw.peakbw[qgv_points] = PEAK_BW_THRESHOLD;
+
+	for (int i = 0; i < ARRAY_SIZE(display->bw.max); i++)
+		display->bw.max[i].deratedbw[qgv_points] = PEAK_BW_THRESHOLD;
+
+	drm_dbg_kms(display->drm, "An extra QGV point %d added for Peak bw threshod of %d\n",
+		    qgv_points, PEAK_BW_THRESHOLD);
+}
+
 static int tgl_get_bw_info(struct intel_display *display,
 			   const struct dram_info *dram_info,
 			   const struct intel_soc_bw_params *soc_bw_params,
@@ -695,6 +725,9 @@ static int tgl_get_bw_info(struct intel_display *display,
 		drm_dbg_kms(display->drm, "QGV %d: peakbw=%u\n", i, display->bw.peakbw[i]);
 	}
 
+	/* For xe3 cases add an extra qgv point for Peak bw threshold */
+	xe3_add_peakbw_threshold(display);
+
 	for (i = 0; i < qi.num_psf_points; i++) {
 		const struct intel_psf_gv_point *sp = &qi.psf_points[i];
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 13e93a4b4f5f..1360a16edbc1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -191,6 +191,7 @@ struct intel_display_platforms {
 #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
 #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
+#define HAS_PEAK_BW_THRESHOLD(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_PIXEL_NORMALIZER(__display)	(DISPLAY_VER(__display) >= 35)
 #define HAS_PMDEMAND(__display)		(DISPLAY_VER(__display) >= 14)
-- 
2.43.0

