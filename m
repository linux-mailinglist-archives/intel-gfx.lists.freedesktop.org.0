Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E62BFAD5775
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 15:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6648C10E351;
	Wed, 11 Jun 2025 13:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6ZjJYex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B9A10E66C;
 Wed, 11 Jun 2025 13:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749649481; x=1781185481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YdvHn3HIwMhPhgJtkcxOvNsqgC62QyhHSOkasP2zrxs=;
 b=V6ZjJYexIhdt4kd9ti/9UwY6uXIvFg1vlaXTkVXIR12vuPdphalISRl8
 apF9+K+rtgO8qqL542/rotF67eUzzF6g5VAeEZcuVBd3GKMkNd8zwNcO/
 XURU2ka7dbgyfzsuZ3jGKAwhJH+WBoRfoKpuX7bQuJoftzyzXZox7V19h
 c5qvkP6iYpp4NDMDeA9i6gVM2roOl+ASwcw9ae9odDwRPM/OHc2pkm9Ix
 18v1+unzCE5PUlnAMh2xGFNdiJANLLlbgFsHcweKkKWSslvZ9u6bMuKp6
 dtxGr1GgChkxHBuS3flvvTrMn3uec44NDZ22VVUYzS8jE8HXhSF365/J1 g==;
X-CSE-ConnectionGUID: jl2YObEGQTW59WisYYNA6w==
X-CSE-MsgGUID: dDtlLk0LTg+M3MuwRU1ZLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51505814"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51505814"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 06:44:40 -0700
X-CSE-ConnectionGUID: M7Yz0ObyTsCAs8vWt4J1NQ==
X-CSE-MsgGUID: ZgANMLmYQiq4LWYfU4kSKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152360308"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 06:44:38 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 3/9] drm/xe/xe3: Add support for media IP version 30.02
Date: Wed, 11 Jun 2025 19:14:25 +0530
Message-Id: <20250611134431.2761487-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

Media version 30.02 should be treated the same as other Xe3 IP, but
will have a slightly different set of workarounds.

-v2: Extend the range in existing WA entry (Bala)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c        | 1 +
 drivers/gpu/drm/xe/xe_wa.c         | 4 ++--
 drivers/gpu/drm/xe/xe_wa_oob.rules | 4 ++--
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 8824a8016b1c..46d4d9af0ed0 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -196,6 +196,7 @@ static const struct xe_ip media_ips[] = {
 	{ 1301, "Xe2_HPM", &media_xelpmp },
 	{ 2000, "Xe2_LPM", &media_xelpmp },
 	{ 3000, "Xe3_LPM", &media_xelpmp },
+	{ 3002, "Xe3_LPM", &media_xelpmp },
 };
 
 static const struct xe_device_desc tgl_desc = {
diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
index 8693d098aa9b..8097b5e2a6f7 100644
--- a/drivers/gpu/drm/xe/xe_wa.c
+++ b/drivers/gpu/drm/xe/xe_wa.c
@@ -274,13 +274,13 @@ static const struct xe_rtp_entry_sr gt_was[] = {
 	/* Xe3_LPM */
 
 	{ XE_RTP_NAME("16021867713"),
-	  XE_RTP_RULES(MEDIA_VERSION(3000),
+	  XE_RTP_RULES(MEDIA_VERSION_RANGE(3000, 3002),
 		       ENGINE_CLASS(VIDEO_DECODE)),
 	  XE_RTP_ACTIONS(SET(VDBOX_CGCTL3F1C(0), MFXPIPE_CLKGATE_DIS)),
 	  XE_RTP_ENTRY_FLAG(FOREACH_ENGINE),
 	},
 	{ XE_RTP_NAME("16021865536"),
-	  XE_RTP_RULES(MEDIA_VERSION(3000),
+	  XE_RTP_RULES(MEDIA_VERSION_RANGE(3000, 3002),
 		       ENGINE_CLASS(VIDEO_DECODE)),
 	  XE_RTP_ACTIONS(SET(VDBOX_CGCTL3F10(0), IECPUNIT_CLKGATE_DIS)),
 	  XE_RTP_ENTRY_FLAG(FOREACH_ENGINE),
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index 5c0d8b720946..45d0cd917f6b 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -56,7 +56,7 @@ no_media_l3	MEDIA_VERSION(3000)
 1508761755	GRAPHICS_VERSION(1255)
 		GRAPHICS_VERSION(1260), GRAPHICS_STEP(A0, B0)
 16023105232	GRAPHICS_VERSION_RANGE(2001, 3001)
-		MEDIA_VERSION_RANGE(1301, 3000)
+		MEDIA_VERSION_RANGE(1301, 3002)
 		GRAPHICS_VERSION(3003)
 16026508708	GRAPHICS_VERSION_RANGE(1200, 3003)
-		MEDIA_VERSION_RANGE(1300, 3000)
+		MEDIA_VERSION_RANGE(1300, 3002)
-- 
2.34.1

