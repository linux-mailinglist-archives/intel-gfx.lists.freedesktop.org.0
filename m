Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E3DBF9772
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E6810E681;
	Wed, 22 Oct 2025 00:31:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jthAVH76";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63FE410E681;
 Wed, 22 Oct 2025 00:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093110; x=1792629110;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=s5DxKcBn/De6Bv9DI4R3LYZIjDuld2jy+He83LX5mYw=;
 b=jthAVH76TE+eHi5FQVo/puqi7ljPrWZoE5IUZZ2URZLO+QSwmqAbz91E
 SSsNaBaBhUmJdQ6GAWIa9QpZNY65WItHzbRgjhvcxmi/vdUAuwkYl8zk+
 5/Kg75B8zt7xET2IM4SACgsVm9vDdQ3pr+NHXxUZQ7uTir0//KI9DYb5u
 YDlFt5dUlSQT0cj7SaQpJ6SXLF1QtDVBvbdcLck4WlJY+Y0fpXCNQyVIh
 MjUDJDDh/rV+eFjh6679w/bmzIMeTwLiQg1b+TXJYuXKRyUNe/swgD1iH
 7WO1mx7Kw+8OOd/Y+zok3tpjPuHIQsq6Qx9eGJccMbrE9cUeaJRvEjFqg g==;
X-CSE-ConnectionGUID: HOzLCHV/RtiXOf0tvD6p/w==
X-CSE-MsgGUID: HSInzQK7RjeihbZQJUjleQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855740"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855740"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:50 -0700
X-CSE-ConnectionGUID: ctDmJOlPSfWHzQ734HG+1w==
X-CSE-MsgGUID: vWmTpQmpSSyShW9r3Nku5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132415"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:46 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:39 -0300
Subject: [PATCH v2 14/32] drm/i915/wm: Reorder adjust_wm_latency() for Xe3_LPD
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
X-Mailer: b4 0.15-dev
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

In an upcoming change related to Xe3p_LPD, we will need to (i) update
wm[0] in adjust_wm_latency() and (ii) do the same increase_wm_latency()
that is currently done when (wm[0] == 0).

Because make_wm_latency_monotonic() depends on wm[0], part (i) needs to
be done before it gets called.  In order to keep (i) and (ii) as a
contiguous logical sequence, let's reorder adjust_wm_latency(), making
make_wm_latency_monotonic() the last thing to be done.

Also take this opportunity to simplify the code by doing the call to
increase_wm_latency() only once.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c141d575009f..57260a2a765a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3213,14 +3213,13 @@ static void
 adjust_wm_latency(struct intel_display *display)
 {
 	u16 *wm = display->wm.skl_latency;
+	int inc = 0;
 
 	if (display->platform.dg2)
 		multiply_wm_latency(display, 2);
 
 	sanitize_wm_latency(display);
 
-	make_wm_latency_monotonic(display);
-
 	/*
 	 * WaWmMemoryReadLatency
 	 *
@@ -3229,7 +3228,7 @@ adjust_wm_latency(struct intel_display *display)
 	 * from the punit when level 0 response data is 0us.
 	 */
 	if (wm[0] == 0)
-		increase_wm_latency(display, wm_read_latency(display));
+		inc += wm_read_latency(display);
 
 	/*
 	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
@@ -3238,7 +3237,12 @@ adjust_wm_latency(struct intel_display *display)
 	 * to avoid any underrun.
 	 */
 	if (need_16gb_dimm_wa(display))
-		increase_wm_latency(display, 1);
+		inc += 1;
+
+	if (inc)
+		increase_wm_latency(display, inc);
+
+	make_wm_latency_monotonic(display);
 }
 
 static void mtl_read_wm_latency(struct intel_display *display)

-- 
2.51.0

