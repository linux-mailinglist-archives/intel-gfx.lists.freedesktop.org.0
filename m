Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEE5C2D6FC
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EC810E472;
	Mon,  3 Nov 2025 17:20:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NbtnzjbJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D5610E474;
 Mon,  3 Nov 2025 17:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190446; x=1793726446;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=TH9PcFygxBXNCHqrOlMNn4rQPynBMcTX6I1xasGylC0=;
 b=NbtnzjbJly7S0AHOqni/8oD0qEMziT2yLWMtZ1xAR/9vQwlB2B1bVO37
 zjomiWYnq3G/zEmL6//+xzzErqHwI2CJYQUAtBjNDYnJYNqSwlVNy126q
 PDKLywIZ2AXUTBjCyUDxvB5zkWdi0aqF5nOoOlgpnQM8VuzO3RFrOVMyI
 fy/RFvGRrQTgpz1wmL0k/FR8RZbOnO+dmE+FFqKcG7tosCr8lhjXNTnTn
 7EFNpzgZZIy6GR7caeo+Z+Prd3jCc9M7m+uDKlwGfuNyvsaJxX2ta9qVl
 mvwOpnHUali82HCoQo4En1IU+1eRwMNZpk+J1hMkziWjQFQ5VyifmPArg w==;
X-CSE-ConnectionGUID: 2gT86w9pRpW9HwdXR4LDrg==
X-CSE-MsgGUID: cdSCZ3deQXKR5eyNf0eHOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310102"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310102"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:46 -0800
X-CSE-ConnectionGUID: svg1CLYDSaqjrrkugIbKJQ==
X-CSE-MsgGUID: 742rUja9QOiKszRpyyRWYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606590"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:42 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:10 -0300
Subject: [PATCH v3 19/29] drm/i915/wm: Do not make latency values monotonic
 on Xe3 onward
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-19-00e87b510ae7@intel.com>
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

The Windows driver is rejecting non-monotonic ranges latency values for
Xe3.  Let's make sure that we do not call make_wm_latency_monotonic()
for Xe3 and beyond.

Also, because of that, let's add a check at the end of
adjust_wm_latency() to ensure we raise a warning if the final list of
latency values is not monotonic.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d20c88ebe919..e13324af7afb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3211,6 +3211,18 @@ static void make_wm_latency_monotonic(struct intel_display *display)
 	}
 }
 
+static bool is_wm_latency_monotonic(struct intel_display *display)
+{
+	u16 *wm = display->wm.skl_latency;
+	int level, num_levels = display->wm.num_levels;
+
+	for (level = 1; level < num_levels; level++)
+		if (wm[level] < wm[level - 1])
+			return false;
+
+	return true;
+}
+
 static void
 adjust_wm_latency(struct intel_display *display)
 {
@@ -3221,7 +3233,8 @@ adjust_wm_latency(struct intel_display *display)
 
 	sanitize_wm_latency(display);
 
-	make_wm_latency_monotonic(display);
+	if (DISPLAY_VER(display) < 30)
+		make_wm_latency_monotonic(display);
 
 	/*
 	 * WaWmMemoryReadLatency
@@ -3241,6 +3254,8 @@ adjust_wm_latency(struct intel_display *display)
 	 */
 	if (need_16gb_dimm_wa(display))
 		increase_wm_latency(display, 1);
+
+	drm_WARN_ON(display->drm, !is_wm_latency_monotonic(display));
 }
 
 static void mtl_read_wm_latency(struct intel_display *display)

-- 
2.51.0

