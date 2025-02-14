Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B2AA3627A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 16:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA11910ECFA;
	Fri, 14 Feb 2025 15:59:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=sdore.me header.i=@sdore.me header.b="L7ew2HQO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4659410ECFA
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 15:59:10 +0000 (UTC)
X-CSE-ConnectionGUID: /iGoqRj7TjOgvUh6L4rDog==
X-CSE-MsgGUID: SCBAgLMfRECBipc5cBJCYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="44231627"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="44231627"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 07:59:10 -0800
X-CSE-ConnectionGUID: 3UovurUgStSikS9el76A/Q==
X-CSE-MsgGUID: 1FTECp9IR0GG6YisGE+FcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113363254"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 07:59:08 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 14 Feb 2025 17:59:00 +0200
Resent-Message-ID: <8734ggwm9n.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa010.jf.intel.com (ORVIESA010.jf.intel.com
 [10.64.159.150])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 0741C20B5713;
 Fri, 14 Feb 2025 03:44:48 -0800 (PST)
X-CSE-ConnectionGUID: ThSGVszaSXWQKlQJ2BxPlg==
X-CSE-MsgGUID: L4j3E2krRzG2hIjvUhvh8g==
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113306683"
Received: from orvoesa110.jf.intel.com ([10.18.183.150])
 by orviesa010-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 03:44:48 -0800
X-CSE-ConnectionGUID: V9agx0dtQh2XIhHb0gIhGA==
X-CSE-MsgGUID: ibOXx/OzTAy6Cvt4REt0xA==
Authentication-Results: mtab.intel.com; spf=None smtp.pra=sdoregor@sdore.me;
 spf=Pass smtp.mailfrom=egormanga@sdore.me; spf=Pass
 smtp.helo=postmaster@sdore.me
IronPort-SDR: 67af2cae_5soQ3kHooN66VSl5PZ5x6y9Cwe6iEv5YGnzIaeAUWiVxqA5
 YT9vNeZWs14ErKZKt86BIpWHb1ntC5sf7SErYGQ==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EjAAC4NYVn/04BpV9aHAEBAQEBAQcBARIBAQQEAQFJg?=
 =?us-ascii?q?TYHAQELAYJDB4FPMQMHCEiMWBucAItsgg0BAQEBAQEBAQFKAQIEAQEDAQOFA?=
 =?us-ascii?q?A2KawEfBgEEMAkNAQECBAEBAQEDAgECAQEBAQEBAQEBDQEBAQICAQEBAgEBA?=
 =?us-ascii?q?gQDAQEBAQKBChOFTC8NgmIBM4IWLIELBicLAQ0BATcBDxgnEisrGYMBgmUHA?=
 =?us-ascii?q?bUpMxoCZYIMAQEG3gMJgUgBjUlwg316JxuCDYJQgi2EWIYvh2qGZocakF1Ig?=
 =?us-ascii?q?SEDWSwBVRMNCgsHBYFzAzgMCzAVgUxEN4JGaUs3Ag0CNYIefIIrhF6ER4RTh?=
 =?us-ascii?q?WKCFIIRgjeBXUADCxgNSBEsNxQbBj5uB5srPINQIIEPlhCDIo53oQUEEYQUo?=
 =?us-ascii?q?UYaM5duA5JimHykR4ZNPYFZTTiDIk8DGY4FASoMFodhtCRDMgI6AgcLAQEDC?=
 =?us-ascii?q?YVEAYodgUsBAQ?=
IronPort-PHdr: A9a23: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
 8Odj96nj9aQa9YuB1BfWBrkl5PxDfE=
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:JzKF66MxxKYZ+MBcTsyjsMiBIKoaSvp037Dk7S9MoHtuA6ulfq
 WV9sjzuiWUtN98YhwdcJW7Scu9qBDnhPpICOsqXYtKNTOO0ACVxcNZnO7fKlbbdREWmNQw6U
 4ZSdkcNOHN
X-Talos-CUID: =?us-ascii?q?9a23=3A2/MTsGh6IG3N/APBr3Gegjl5nzJuTCzUw2eIL1O?=
 =?us-ascii?q?BCTxZab21Qwef2aNLup87?=
X-Talos-MUID: =?us-ascii?q?9a23=3A88W+BQwFb3Bd7/8a5eLf4a6i2imaqKWkL3Ad1rI?=
 =?us-ascii?q?Uh+CVawduJ2unoSjvUqZyfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40397684"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40397684"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO sdore.me) ([95.165.1.78])
 by mtab.intel.com with ESMTP; 14 Feb 2025 03:44:44 -0800
Received: by sdore.me (Postfix, from userid 1000)
 id E192BEEA01BF7; Fri, 14 Feb 2025 14:36:26 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sdore.me; s=SERV;
 t=1739532986; bh=2RRFJdZSLxB0chJqJ8QRDckIZFkpyeAvXlKfsB6hWVk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=L7ew2HQOQPkneLx8nfuW2OKCPwzxH5o12m79PompgYwmaym1g3bNCwhJNq/EHMKg1
 opqUC8/94hU0Ck8dOgwVLCWPfJkVDGqbw1soNyF4CoTq7MmPbg7cZT+ld0BBQvuLu9
 mzhTVTzkM1UP4SADBZzllCEoECnjxSgyR7wYWgSg=
From: Egor Vorontsov <sdoregor@sdore.me>
To: linux-kernel@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Egor Vorontsov <sdoregor@sdore.me>
Subject: [PATCH v3 2/2] drm/edid: Refactor DisplayID timing block structs
Date: Fri, 14 Feb 2025 14:06:42 +0300
Message-ID: <20250214110643.506740-2-sdoregor@sdore.me>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250214110643.506740-1-sdoregor@sdore.me>
References: <20250214110643.506740-1-sdoregor@sdore.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUID: AKj27Zciwnav
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

Using le16 instead of u8[2].

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Egor Vorontsov <sdoregor@sdore.me>
---
 drivers/gpu/drm/drm_displayid_internal.h | 18 +++++++--------
 drivers/gpu/drm/drm_edid.c               | 28 ++++++++++++------------
 2 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/drm_displayid_internal.h b/drivers/gpu/drm/drm_displayid_internal.h
index 84831ecfdb6e..957dd0619f5c 100644
--- a/drivers/gpu/drm/drm_displayid_internal.h
+++ b/drivers/gpu/drm/drm_displayid_internal.h
@@ -115,20 +115,20 @@ struct displayid_tiled_block {
 struct displayid_detailed_timings_1 {
 	u8 pixel_clock[3];
 	u8 flags;
-	u8 hactive[2];
-	u8 hblank[2];
-	u8 hsync[2];
-	u8 hsw[2];
-	u8 vactive[2];
-	u8 vblank[2];
-	u8 vsync[2];
-	u8 vsw[2];
+	__le16 hactive;
+	__le16 hblank;
+	__le16 hsync;
+	__le16 hsw;
+	__le16 vactive;
+	__le16 vblank;
+	__le16 vsync;
+	__le16 vsw;
 } __packed;
 
 struct displayid_detailed_timing_block {
 	struct displayid_block base;
 	struct displayid_detailed_timings_1 timings[];
-};
+} __packed;
 
 struct displayid_formula_timings_9 {
 	u8 flags;
diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 03edf0e1598e..32807cefc819 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6760,23 +6760,23 @@ static void update_display_info(struct drm_connector *connector,
 }
 
 static struct drm_display_mode *drm_mode_displayid_detailed(struct drm_device *dev,
-							    struct displayid_detailed_timings_1 *timings,
+							    const struct displayid_detailed_timings_1 *timings,
 							    bool type_7)
 {
 	struct drm_display_mode *mode;
-	unsigned pixel_clock = (timings->pixel_clock[0] |
-				(timings->pixel_clock[1] << 8) |
-				(timings->pixel_clock[2] << 16)) + 1;
-	unsigned hactive = (timings->hactive[0] | timings->hactive[1] << 8) + 1;
-	unsigned hblank = (timings->hblank[0] | timings->hblank[1] << 8) + 1;
-	unsigned hsync = (timings->hsync[0] | (timings->hsync[1] & 0x7f) << 8) + 1;
-	unsigned hsync_width = (timings->hsw[0] | timings->hsw[1] << 8) + 1;
-	unsigned vactive = (timings->vactive[0] | timings->vactive[1] << 8) + 1;
-	unsigned vblank = (timings->vblank[0] | timings->vblank[1] << 8) + 1;
-	unsigned vsync = (timings->vsync[0] | (timings->vsync[1] & 0x7f) << 8) + 1;
-	unsigned vsync_width = (timings->vsw[0] | timings->vsw[1] << 8) + 1;
-	bool hsync_positive = (timings->hsync[1] >> 7) & 0x1;
-	bool vsync_positive = (timings->vsync[1] >> 7) & 0x1;
+	unsigned int pixel_clock = (timings->pixel_clock[0] |
+				    (timings->pixel_clock[1] << 8) |
+				    (timings->pixel_clock[2] << 16)) + 1;
+	unsigned int hactive = le16_to_cpu(timings->hactive) + 1;
+	unsigned int hblank = le16_to_cpu(timings->hblank) + 1;
+	unsigned int hsync = (le16_to_cpu(timings->hsync) & 0x7fff) + 1;
+	unsigned int hsync_width = le16_to_cpu(timings->hsw) + 1;
+	unsigned int vactive = le16_to_cpu(timings->vactive) + 1;
+	unsigned int vblank = le16_to_cpu(timings->vblank) + 1;
+	unsigned int vsync = (le16_to_cpu(timings->vsync) & 0x7fff) + 1;
+	unsigned int vsync_width = le16_to_cpu(timings->vsw) + 1;
+	bool hsync_positive = le16_to_cpu(timings->hsync) & (1 << 15);
+	bool vsync_positive = le16_to_cpu(timings->vsync) & (1 << 15);
 
 	mode = drm_mode_create(dev);
 	if (!mode)
-- 
2.48.0

