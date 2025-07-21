Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0379B0C03B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E25910E4BA;
	Mon, 21 Jul 2025 09:25:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TME3jbhm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5235510E4BA;
 Mon, 21 Jul 2025 09:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089953; x=1784625953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=24B2U07tg2VyHeg2sWkuoNUckK2MwPw9QHv+e7pPlmM=;
 b=TME3jbhm7egmuVJAXdFeCyp8ZQAht+9Pon+ip71UYViDfWPeQ+tF2bm5
 XSERrFtoUAATvCpTrYwG0zPhqJ5NgKV5BtnBGdmFtht15nWVSMSiSMj3e
 yCYyBjePqlR4mNds9l8vDx79iKJ7iC6koAuXytEfvaiHZkwFbmEmFfX1v
 DYnjq1vWT1hQUtz30257mp1yuQmAnpd5N5XFV2mHaxth/iqByCvzqJKnv
 wRLI6M/0LTuW6/XBn2cPTKDm7RLpG79nKxjdPWSZJawkQJ6Waz/ZYoLKQ
 ILvDSFOl0IN9sC7rLGrBanlZnZeJIUIhKzq8LY5ByNK65XUT6CA6pZZKQ g==;
X-CSE-ConnectionGUID: Qg0cpcobQySsDNnW4iKCKw==
X-CSE-MsgGUID: 2r9UCjFBQuWPmyXtYJK7Yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455368"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455368"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:53 -0700
X-CSE-ConnectionGUID: 5xNIEjSGSZWsquJ/U6b6/g==
X-CSE-MsgGUID: xFot7SrHR3+YlNJuxMcjcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335137"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/9] drm/i915: Add helper to compute link M/N ratio for reuse
Date: Mon, 21 Jul 2025 14:45:21 +0530
Message-ID: <20250721091529.3864004-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
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

Introduce `intel_display_get_link_m_n()` to compute the link M/N ratio
based on pixel clock and link clock. This logic was previously embedded
within `intel_link_compute_m_n()`.

The new helper allows reuse of link M/N computation in other contexts
without requiring the full data M/N calculation.

No functional changes intended.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 456fc4b04cda..671491a2a3b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2506,13 +2506,24 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
 	intel_reduce_m_n_ratio(ret_m, ret_n);
 }
 
+static
+void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
+				u32 pixel_clock,
+				u32 link_clock)
+{
+	u32 link_symbol_clock = intel_dp_link_symbol_clock(link_clock);
+
+	compute_m_n(link_m, link_n,
+		    pixel_clock, link_symbol_clock,
+		    0x80000);
+}
+
 void
 intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 		       int pixel_clock, int link_clock,
 		       int bw_overhead,
 		       struct intel_link_m_n *m_n)
 {
-	u32 link_symbol_clock = intel_dp_link_symbol_clock(link_clock);
 	u32 data_m = intel_dp_effective_data_rate(pixel_clock, bits_per_pixel_x16,
 						  bw_overhead);
 	u32 data_n = drm_dp_max_dprx_data_rate(link_clock, nlanes);
@@ -2529,9 +2540,8 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 		    data_m, data_n,
 		    0x8000000);
 
-	compute_m_n(&m_n->link_m, &m_n->link_n,
-		    pixel_clock, link_symbol_clock,
-		    0x80000);
+	intel_display_get_link_m_n(&m_n->link_m, &m_n->link_n,
+				   pixel_clock, link_clock);
 }
 
 void intel_panel_sanitize_ssc(struct intel_display *display)
-- 
2.45.2

