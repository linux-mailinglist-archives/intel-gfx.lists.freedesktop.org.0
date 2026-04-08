Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oP1aG1Dq1Wkd/QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1555F3B74B1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 07:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A02410E529;
	Wed,  8 Apr 2026 05:40:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRPVvriR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FEB710E528;
 Wed,  8 Apr 2026 05:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775626829; x=1807162829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WLt4AxgG9G8AxZF42gIFyo/U1X6ZC4YeOUdL9ytUEno=;
 b=mRPVvriRsdO4DHmKSdos5+dQkzNgd+Y7U/t2WDwm5DmMvvRHXOPO9F3s
 CaY/f2XN4lrs911JZDu8Mcf13skAmOv5vufERX64bGWUG4ODwJ1Bm9jd0
 NXbXVLCi4GSxutTvg3/WRbEXKoOC4AA/L0d53abx0MovdfdGZERkgnOX6
 tWTrKtozh7snndg6/aBt/tOc64xlBDgTkHENOYCjDUl6fe81BsKeIOQCB
 dmI86Oo5oOH1MgAgklQBxeedkAQylgsecQKoIbHzx3+KmkN1mz7qPI/t3
 J24pL2wCVcNxkhpqoWrsiEAPIVmcQjyLueTuvNQ/qr6S8Hltui+EoGXp/ Q==;
X-CSE-ConnectionGUID: r6vrzmvTS2SCqRfnOLwHvQ==
X-CSE-MsgGUID: 2B2tYCx4RXKSn0fEusSRyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80194912"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80194912"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 22:40:29 -0700
X-CSE-ConnectionGUID: +nVVbgV8QAi+Oof5FHwtUQ==
X-CSE-MsgGUID: 86fdP54TSSyZs94AConnBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251518032"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 07 Apr 2026 22:40:25 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, maarten.lankhorst@intel.com,
 pekka.paalanen@collabora.com, pranay.samala@intel.com,
 swati2.sharma@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 07/13] drm/i915/color: Program Pre-CSC registers for SDR
Date: Wed,  8 Apr 2026 10:45:08 +0530
Message-Id: <20260408051514.608781-8-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1555F3B74B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Pranay Samala <pranay.samala@intel.com>

Implement plane pre-CSC LUT support for SDR planes.

v2:
- s/drm_color_lut_extract/drm_color_lut32_extract

Signed-off-by: Pranay Samala <pranay.samala@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 17ab4364faea..7d670ae8325f 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3992,6 +3992,59 @@ xelpd_load_hdr_pre_csc_lut(struct intel_display *display,
 	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
 }
 
+static void
+xelpd_load_sdr_pre_csc_lut(struct intel_display *display,
+			   struct intel_dsb *dsb,
+			   enum pipe pipe,
+			   enum plane_id plane,
+			   const struct drm_color_lut32 *pre_csc_lut)
+{
+	u32 lut_size = 32;
+	u32 lut_val;
+	int i;
+
+	/*
+	 * First 3 planes are HDR, so reduce by 3 to get to the right
+	 * SDR plane offset
+	 */
+	plane = plane - 3;
+
+	intel_de_write_dsb(display, dsb,
+			   PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, 0),
+			   PLANE_PAL_PREC_AUTO_INCREMENT);
+
+	if (pre_csc_lut) {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 16);
+
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA(pipe, plane, 0),
+					   lut_val);
+		}
+
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA(pipe, plane, 0),
+					   (1 << 16));
+		} while (i++ < 34);
+	} else {
+		for (i = 0; i < lut_size; i++) {
+			lut_val = (i * ((1 << 16) - 1)) / (lut_size - 1);
+
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA(pipe, plane, 0), lut_val);
+		}
+
+		do {
+			intel_de_write_dsb(display, dsb,
+					   PLANE_PRE_CSC_GAMC_DATA(pipe, plane, 0),
+					   1 << 16);
+		} while (i++ < 34);
+	}
+
+	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX(pipe, plane, 0), 0);
+}
+
 static void
 xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 				const struct intel_plane_state *plane_state)
@@ -4004,6 +4057,8 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 
 	if (icl_is_hdr_plane(display, plane))
 		xelpd_load_hdr_pre_csc_lut(display, dsb, pipe, plane, pre_csc_lut);
+	else
+		xelpd_load_sdr_pre_csc_lut(display, dsb, pipe, plane, pre_csc_lut);
 }
 
 static void
-- 
2.25.1

