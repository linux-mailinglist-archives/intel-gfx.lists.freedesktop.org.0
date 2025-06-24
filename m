Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE72AE6D2C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 19:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7F310E602;
	Tue, 24 Jun 2025 17:00:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H6zDY3gn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3B4310E601;
 Tue, 24 Jun 2025 17:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750784456; x=1782320456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gpKFAtcJRQadd52fmQL0Yr0jMj0GOHPOgHFF7KB4j9Q=;
 b=H6zDY3gnuKVA7HWufHUvSSrZh7BZEyVWghCG4Bd90g8RloMywOI4zhA0
 mqIkcdMvv+4DKmh+tcjk1vAV1IVY9oNY6Xe5rzH5vFWH0Vf8E+yK6YgN9
 6bs3uPqa7/+OvbPC6zOk/E+fcDBuQb5wpJutfr0QEFzbZzNoeJ3A+bJwh
 oOWlOiAab9PPZQA4/1s+vzwJqoY+xdTMRpXXbfdcdAgKDPqwMY0ZQLwIo
 1eeF3voe88guTrfXx+OuFkJdA20yAnWQC+Ek2Wgjw36Rt4IDSI5F8oqSb
 Dm6fxqweaTZSTGBfIQeVsGCU7xacLPe74NxsPvXgC5Zgm/g+5GSlUKpZX g==;
X-CSE-ConnectionGUID: Mw6C621HRkS0KqjhtxUZKg==
X-CSE-MsgGUID: Mf1N0/zWTjiT2C8oNZjX3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56820837"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56820837"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 10:00:56 -0700
X-CSE-ConnectionGUID: s2TaRTpGQsCSF5p9gnqy3Q==
X-CSE-MsgGUID: 6zPtm+6cTieIrCsKAnv1rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157749607"
Received: from vpanait-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.73])
 by orviesa005.jf.intel.com with SMTP; 24 Jun 2025 10:00:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jun 2025 20:00:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v5 1/9] drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
Date: Tue, 24 Jun 2025 20:00:41 +0300
Message-ID: <20250624170049.27284-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
References: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

AFAIK PKG_C_LATENCY.added_wake_time only matters for flip queue.
As long as we're not using that there's no point in adding any
extra wake time.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 85327cd627dd..a71605e3a535 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -33,12 +33,6 @@
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
-/*It is expected that DSB can do posted writes to every register in
- * the pipe and planes within 100us. For flip queue use case, the
- * recommended DSB execution time is 100us + one SAGV block time.
- */
-#define DSB_EXE_TIME 100
-
 static void skl_sagv_disable(struct intel_display *display);
 
 /* Stores plane specific WM parameters */
@@ -2945,9 +2939,6 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	}
 
 	if (fixed_refresh_rate) {
-		added_wake_time = DSB_EXE_TIME +
-			display->sagv.block_time_us;
-
 		latency = skl_watermark_max_latency(display, 1);
 
 		/* Wa_22020432604 */
-- 
2.49.0

