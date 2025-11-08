Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AA9C4217A
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:06:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ABF210EBB4;
	Sat,  8 Nov 2025 00:06:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bqXAGIqF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD6E10EBB3;
 Sat,  8 Nov 2025 00:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560395; x=1794096395;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=RVC2HA1NYQ8aPdebup7wuhdH3KKvSzxM/yMtKReW01M=;
 b=bqXAGIqFOU4BcqMA0cgumV1lvSqkjNoxl//wvTOIwZH5nXTMDs8YGguD
 H/UJ9gDZn93SfJaAd3AKhK27kMryhiqpsH/LerGK/JF68JFTPnX84ma1W
 lKzop6N1xsR0UYKeDZTnKEV06YxM8X5BTMd4xUZ5tWwuIAksmcwzro6vv
 Ct2yJB8jPEdLrk/m1iPdRQCqBTfjzu0GSYyVjc0C2sc/I1FNXh+mpssm1
 IX6XBoAqDfGkmXH1ATuMD5hjVVRsi9ohc9ky2ktkZ4ciKxOCcle/v0vWk
 7M6GRafjvDGX1FZVQNnHwtcQ0iyvZu0P8pO9AnZLq6E9gxsF0vsEVfbIg A==;
X-CSE-ConnectionGUID: 5YvOeGnsQf+dz2aku9cvCQ==
X-CSE-MsgGUID: j7p0QmYiSYe6ig3spC8p8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621254"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621254"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:35 -0800
X-CSE-ConnectionGUID: Ec0sHNiWQK+AiPC0XaqJKQ==
X-CSE-MsgGUID: RCUUMW8fRuWICEU3F4RuTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822587"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:06:32 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Nov 2025 21:05:34 -0300
Subject: [PATCH v4 01/11] drm/i915/wm: Do not make latency values monotonic
 on Xe3 onward
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-1-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
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
index 36a266f882d1..ed55fe84e930 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3218,6 +3218,18 @@ static void make_wm_latency_monotonic(struct intel_display *display)
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
@@ -3228,7 +3240,8 @@ adjust_wm_latency(struct intel_display *display)
 
 	sanitize_wm_latency(display);
 
-	make_wm_latency_monotonic(display);
+	if (DISPLAY_VER(display) < 30)
+		make_wm_latency_monotonic(display);
 
 	/*
 	 * WaWmMemoryReadLatency
@@ -3248,6 +3261,8 @@ adjust_wm_latency(struct intel_display *display)
 	 */
 	if (need_16gb_dimm_wa(display))
 		increase_wm_latency(display, 1);
+
+	drm_WARN_ON(display->drm, !is_wm_latency_monotonic(display));
 }
 
 static void mtl_read_wm_latency(struct intel_display *display)

-- 
2.51.0

