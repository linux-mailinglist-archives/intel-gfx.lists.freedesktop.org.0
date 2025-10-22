Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CC9BF9775
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D30110E686;
	Wed, 22 Oct 2025 00:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IBXT6g0y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A7B10E683;
 Wed, 22 Oct 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093114; x=1792629114;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=H9uflkyZ7Q73+qJDcn/dpduAcSdHrcyGxA4lY/an36I=;
 b=IBXT6g0yrvBiPZMrNRxExG1giizrP9ZXX0/ASm3PVGFmS0etdU/p3lSZ
 hOFPJEF3X9dC8bb1LqfDlhHn+NCbJXWgaOz3hPXnLIykhNEUgbZoWAtqV
 r7Gb9hm4PVyqLOJT1KiXukcHqW617fEgVw9aYW1O7i/fYcvB0yesMTYsc
 pEayQNEQmGmDCHrDawIo8UHHPcYEyI1OtuT4NCPt6XMCDCd4HGyTtXf6p
 L4ItjLlZl6oH162WeGexvljCpWzuzimISA8YZ+AaEwSWIFyUy61qqZtA0
 56tWcj5US85XDzzWEx/F0/qlJEAu2qg4LKRlNR3Jk1yent3DRgQEpjoW8 g==;
X-CSE-ConnectionGUID: lq7FivV0T5iZqVqe1fzzAw==
X-CSE-MsgGUID: 3tz/RGiGRwaVrlGLz7/YjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855747"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855747"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:53 -0700
X-CSE-ConnectionGUID: 3qNJotiRRRW6+PQpUwLYKQ==
X-CSE-MsgGUID: TgHTMoetSni+pYSmHDgXPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132423"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:50 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:40 -0300
Subject: [PATCH v2 15/32] drm/i915/xe3p_lpd: Always apply level-0 watermark
 adjustment
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-15-10eae6d655b8@intel.com>
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

When reading memory latencies for watermark calculations, previous
display releases instructed to apply an adjustment of adding a certain
value (e.g. 6us) to all levels when the level 0's memory latency read
from hardware was zero.

For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
add that value to the other levels.  Update adjust_wm_latency()
accordingly.

While previously the adjustment was considered a workaround by the
driver, for Xe3p_LPD that is part of the formal specification.  So,
let's make sure that we differentiate those two in the driver code, even
if there is a bit of redundancy with "inc += wm_read_latency(display)"
appearing twice in the code.

v2:
  - Rebased after addition of prep patch "drm/i915/wm: Reorder
    adjust_wm_latency() for Xe3_LPD".

Bspec: 68986, 69126
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 57260a2a765a..5bb6cdc4ad2c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3220,15 +3220,24 @@ adjust_wm_latency(struct intel_display *display)
 
 	sanitize_wm_latency(display);
 
-	/*
-	 * WaWmMemoryReadLatency
-	 *
-	 * punit doesn't take into account the read latency so we need
-	 * to add proper adjustment to each valid level we retrieve
-	 * from the punit when level 0 response data is 0us.
-	 */
-	if (wm[0] == 0)
+	if (DISPLAY_VER(display) >= 35) {
+		/*
+		 * Xe3p asks to ignore wm[0] read from the register and always
+		 * use the adjustment that adds the read latency to all valid
+		 * latency values.
+		 */
+		wm[0] = 0;
 		inc += wm_read_latency(display);
+	} else if (wm[0] == 0) {
+		/*
+		 * WaWmMemoryReadLatency
+		 *
+		 * punit doesn't take into account the read latency so we need
+		 * to add proper adjustment to each valid level we retrieve
+		 * from the punit when level 0 response data is 0us.
+		 */
+		inc += wm_read_latency(display);
+	}
 
 	/*
 	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+

-- 
2.51.0

