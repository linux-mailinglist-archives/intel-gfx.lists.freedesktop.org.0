Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E0A36276
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 16:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888BC10E4A6;
	Fri, 14 Feb 2025 15:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=sdore.me header.i=@sdore.me header.b="KcWGSNSa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A450B10E4A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 15:58:57 +0000 (UTC)
X-CSE-ConnectionGUID: hH6n8zX3RHexc5cL1Yq1kA==
X-CSE-MsgGUID: vVl4Z5qYTw6/8HqvJyd/3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="44231611"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="44231611"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 07:58:57 -0800
X-CSE-ConnectionGUID: zUrVGiDISPaVWeO2jRvtFA==
X-CSE-MsgGUID: lED2/C+HQLCCdOXW5By7ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113363200"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 07:58:55 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 14 Feb 2025 17:58:47 +0200
Resent-Message-ID: <877c5swma0.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa006.jf.intel.com (ORVIESA006.jf.intel.com
 [10.64.159.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id B1A1F20B5714;
 Fri, 14 Feb 2025 03:36:28 -0800 (PST)
X-CSE-ConnectionGUID: wb0lx8lyQQalXHxzDuyGrw==
X-CSE-MsgGUID: tUzMmVf2SumRRXNlVShung==
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113391929"
Received: from fmvoesa104.fm.intel.com ([10.64.2.14])
 by orviesa006-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 03:36:28 -0800
X-CSE-ConnectionGUID: qE/ACLYrSZ2B3jiMKqObcA==
X-CSE-MsgGUID: Jahwel10QvuUMsnr/UnSVg==
Authentication-Results: mtab.intel.com; spf=None smtp.pra=sdoregor@sdore.me;
 spf=Pass smtp.mailfrom=egormanga@sdore.me; spf=Pass
 smtp.helo=postmaster@sdore.me
IronPort-SDR: 67af2abb_t2SZOYBojdLqdJvh0MB77SI87HKWyQyDouBl0E4ZBBsi5MC
 W6xNCTdR5GEgABl+1qIYFDzIhvJMRkWg2nB7Vng==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0HyAwC4NYVn/04BpV9aHgEBCxIMQAmBPwuCRAd2WTQHC?=
 =?us-ascii?q?EiEVogCiWySL415AQEBAQEBAQEBQggBAgQBAQMBA4UADYprAR8GAQQzBg4BA?=
 =?us-ascii?q?gQBAQEBAwIBAgEBAQEBAQEBAQ0BAQECAgEBAQIBAQIEAwEBAQECgQoThXsNg?=
 =?us-ascii?q?mIBgSSBJQEBAQEBAQEBAQEBAQEdAg2BJwQLAQ0BATcBJw0CGA4CLUSDAQGCZ?=
 =?us-ascii?q?AcBDLQefzMaAmWCDAEBBt4DAwaBGi6ITgGEe3CDfYEhG4INgRWBO4ItgkqCD?=
 =?us-ascii?q?oNGgmmDfINujw+PTkiBBRwDWSwBVRMNCgsHBYFzAzgMCzAVgUxEN4JGaUs3A?=
 =?us-ascii?q?g0CNYIefIIrhF6ER4RThWKCFIIRgjeBQB1AAwsYDUgRLDcUGwY9AW4HmyoBP?=
 =?us-ascii?q?INQIC1iKyKCGw2PRoZ3jnehBQQRhBSMGJUuGjOXbgOSYph8jgSWQ4ZjJ4FZT?=
 =?us-ascii?q?TiDIk8DGYhrhUUMFodhgQuzGUMyPAIHAQoBAQMJhUQBih2BSwEB?=
IronPort-PHdr: A9a23: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
 27z+6DLJTiEjTSvUh39aIlx
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:lIN/tqAoNCot1WTlHem755DYdb4zR+YMi2TDGXofdfUzSL39qy
 nOpoV/6faQslwssR4b+OxoVJPsfZq+z+8W3WByB9eftWDd0QPCEGgI1+XfKlPbdxEWjtQttp
 tdTw==
X-Talos-CUID: 9a23:lwl48WOMeR5qWO5DQQQg3WUwK9oeQCf3l3XRBmyhLmxiYejA
X-Talos-MUID: 9a23:E1+fOATf91wlOrNERXTOjTF9OcMxu52wFX0oipMc/PSCDhJ/bmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51705073"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51705073"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO sdore.me) ([95.165.1.78])
 by mtab.intel.com with ESMTP; 14 Feb 2025 03:36:23 -0800
Received: by sdore.me (Postfix, from userid 1000)
 id 16BFCEEA018FB; Fri, 14 Feb 2025 14:36:17 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sdore.me; s=SERV;
 t=1739532977; bh=vooFqMlynklDcHryHXQc2YlfwBSZBFLunnWC36YDAwA=;
 h=From:To:Cc:Subject:Date;
 b=KcWGSNSae+PoERrq6+Suh/STescbEU4osKf/k0JKd1lzjzbGr1mH4BNAvXipy1HgH
 49lKzJ+Z6NFJqXk0QW1deZFUxdDGX2nLa1MvcdwBnCM4UdvHb/AtBtYtBEghLhHt9L
 70fWTD7Rhspa1SkclFmm6m2HbDoXKsfWOZj3Yz0Q=
From: Egor Vorontsov <sdoregor@sdore.me>
To: linux-kernel@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Egor Vorontsov <sdoregor@sdore.me>,
 =?UTF-8?q?Maximilian=20Bo=C3=9Fe?= <max@bosse.io>
Subject: [PATCH v3 1/2] drm/edid: Implement DisplayID Type IX & X timing
 blocks parsing
Date: Fri, 14 Feb 2025 14:06:41 +0300
Message-ID: <20250214110643.506740-1-sdoregor@sdore.me>
X-Mailer: git-send-email 2.48.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-TUID: kztt2FuAdBaE
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

Some newer high refresh rate consumer monitors (including those by Samsung)
make use of DisplayID 2.1 timing blocks in their EDID data, notably for
their highest refresh rate modes. Such modes won't be available as of now.

Implement partial support for such blocks in order to enable native
support of HRR modes of most such monitors for users without having to rely
on EDID patching/override (or need thereof).

Closes: https://gitlab.freedesktop.org/drm/misc/kernel/-/issues/55
Suggested-by: Maximilian Boße <max@bosse.io>
Signed-off-by: Egor Vorontsov <sdoregor@sdore.me>
---
 drivers/gpu/drm/drm_displayid_internal.h | 13 +++++
 drivers/gpu/drm/drm_edid.c               | 63 ++++++++++++++++++++++++
 2 files changed, 76 insertions(+)

diff --git a/drivers/gpu/drm/drm_displayid_internal.h b/drivers/gpu/drm/drm_displayid_internal.h
index aee1b86a73c1..84831ecfdb6e 100644
--- a/drivers/gpu/drm/drm_displayid_internal.h
+++ b/drivers/gpu/drm/drm_displayid_internal.h
@@ -66,6 +66,7 @@ struct drm_edid;
 #define DATA_BLOCK_2_STEREO_DISPLAY_INTERFACE	0x27
 #define DATA_BLOCK_2_TILED_DISPLAY_TOPOLOGY	0x28
 #define DATA_BLOCK_2_CONTAINER_ID		0x29
+#define DATA_BLOCK_2_TYPE_10_FORMULA_TIMING	0x2a
 #define DATA_BLOCK_2_VENDOR_SPECIFIC		0x7e
 #define DATA_BLOCK_2_CTA_DISPLAY_ID		0x81
 
@@ -129,6 +130,18 @@ struct displayid_detailed_timing_block {
 	struct displayid_detailed_timings_1 timings[];
 };
 
+struct displayid_formula_timings_9 {
+	u8 flags;
+	__le16 hactive;
+	__le16 vactive;
+	u8 vrefresh;
+} __packed;
+
+struct displayid_formula_timing_block {
+	struct displayid_block base;
+	struct displayid_formula_timings_9 timings[];
+} __packed;
+
 #define DISPLAYID_VESA_MSO_OVERLAP	GENMASK(3, 0)
 #define DISPLAYID_VESA_MSO_MODE		GENMASK(6, 5)
 
diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 13bc4c290b17..03edf0e1598e 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6833,6 +6833,66 @@ static int add_displayid_detailed_1_modes(struct drm_connector *connector,
 	return num_modes;
 }
 
+static struct drm_display_mode *drm_mode_displayid_formula(struct drm_device *dev,
+							   const struct displayid_formula_timings_9 *timings,
+							   bool type_10)
+{
+	struct drm_display_mode *mode;
+	u16 hactive = le16_to_cpu(timings->hactive) + 1;
+	u16 vactive = le16_to_cpu(timings->vactive) + 1;
+	u8 timing_formula = timings->flags & 0x7;
+
+	/* TODO: support RB-v2 & RB-v3 */
+	if (timing_formula > 1)
+		return NULL;
+
+	/* TODO: support video-optimized refresh rate */
+	if (timings->flags & (1 << 4))
+		drm_dbg_kms(dev, "Fractional vrefresh is not implemented, proceeding with non-video-optimized refresh rate");
+
+	mode = drm_cvt_mode(dev, hactive, vactive, timings->vrefresh + 1, timing_formula == 1, false, false);
+	if (!mode)
+		return NULL;
+
+	/* TODO: interpret S3D flags */
+
+	mode->type = DRM_MODE_TYPE_DRIVER;
+	drm_mode_set_name(mode);
+
+	return mode;
+}
+
+static int add_displayid_formula_modes(struct drm_connector *connector,
+				       const struct displayid_block *block)
+{
+	const struct displayid_formula_timing_block *formula_block = (struct displayid_formula_timing_block *)block;
+	int num_timings;
+	struct drm_display_mode *newmode;
+	int num_modes = 0;
+	bool type_10 = block->tag == DATA_BLOCK_2_TYPE_10_FORMULA_TIMING;
+	int timing_size = 6 + ((formula_block->base.rev & 0x70) >> 4);
+
+	/* extended blocks are not supported yet */
+	if (timing_size != 6)
+		return 0;
+
+	if (block->num_bytes % timing_size)
+		return 0;
+
+	num_timings = block->num_bytes / timing_size;
+	for (int i = 0; i < num_timings; i++) {
+		const struct displayid_formula_timings_9 *timings = &formula_block->timings[i];
+
+		newmode = drm_mode_displayid_formula(connector->dev, timings, type_10);
+		if (!newmode)
+			continue;
+
+		drm_mode_probed_add(connector, newmode);
+		num_modes++;
+	}
+	return num_modes;
+}
+
 static int add_displayid_detailed_modes(struct drm_connector *connector,
 					const struct drm_edid *drm_edid)
 {
@@ -6845,6 +6905,9 @@ static int add_displayid_detailed_modes(struct drm_connector *connector,
 		if (block->tag == DATA_BLOCK_TYPE_1_DETAILED_TIMING ||
 		    block->tag == DATA_BLOCK_2_TYPE_7_DETAILED_TIMING)
 			num_modes += add_displayid_detailed_1_modes(connector, block);
+		else if (block->tag == DATA_BLOCK_2_TYPE_9_FORMULA_TIMING ||
+			 block->tag == DATA_BLOCK_2_TYPE_10_FORMULA_TIMING)
+			num_modes += add_displayid_formula_modes(connector, block);
 	}
 	displayid_iter_end(&iter);
 
-- 
2.48.0

