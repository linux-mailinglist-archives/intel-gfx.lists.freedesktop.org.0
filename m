Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B7EC2D6FF
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E9110E475;
	Mon,  3 Nov 2025 17:20:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIHqdDVV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E528A10E473;
 Mon,  3 Nov 2025 17:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190450; x=1793726450;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=gBSLN1M8qsiHIBHuhIqDs04lGg9AVi2bFvJIGZQPXaU=;
 b=hIHqdDVVXzRj0utoRCoFdYqk+XFS12ydUXyQNPBWpvCUXZij58TGw91+
 2YYx4IFmTVJ1rKPU/17Def5/v8Tl9jZHQakh32ZzNUcBzhdWjucNpB6x8
 tJkM1siTGvLsThenURvlWllD8P+1C9yEgy29VJF4QA/GvWANy5r4xPuA2
 OpdW6+I9ULflsjKoM9V6VzdKYnHWjddQ6VgVHsBDvf3hrF6HOtJFYmnh/
 etWRltFenvYDZdMb5rE7kkG7NNL1dMkefnGOXqcr2zHsICccifi/iKddl
 EKDDanpOCCk7IafiaQuVkAafXQSx+qgLEvaWZkY6FJ4C7a8Yl2DQeTuMl g==;
X-CSE-ConnectionGUID: k6bqGD1aQ7GtJNHtL5qEhQ==
X-CSE-MsgGUID: R4Na6w/RSkKhf3J2On9ZYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310121"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310121"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:50 -0800
X-CSE-ConnectionGUID: qnsfzDTnSaWMET3tfMmxlA==
X-CSE-MsgGUID: JO4snjYaRXCdc4aTDS3iPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606597"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:46 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:11 -0300
Subject: [PATCH v3 20/29] drm/i915/xe3p_lpd: Always apply WaWmMemoryReadLatency
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-20-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
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
add that value to the other levels.  Add the necessary code in
sanitize_wm_latency() so that WaWmMemoryReadLatency is always applied
for Xe3p_LPD and beyond.

v2:
  - Rebased after addition of prep patch "drm/i915/wm: Reorder
    adjust_wm_latency() for Xe3_LPD" (dropped in v3).
v3:
  - Back to the simpler approach of doing the 'wm[0] = 0' step without
    modifying the rest of the code, and that inside
    sanitize_wm_latency(). (Matt Roper, Ville)

Bspec: 68986, 69126
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index e13324af7afb..ed55fe84e930 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3184,6 +3184,13 @@ static void sanitize_wm_latency(struct intel_display *display)
 	u16 *wm = display->wm.skl_latency;
 	int level, num_levels = display->wm.num_levels;
 
+	/*
+	 * Xe3p and beyond should ignore level 0's reported latency and
+	 * always apply WaWmMemoryReadLatency logic.
+	 */
+	if (DISPLAY_VER(display) >= 35)
+		wm[0] = 0;
+
 	/*
 	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
 	 * need to be disabled. We make sure to sanitize the values out

-- 
2.51.0

