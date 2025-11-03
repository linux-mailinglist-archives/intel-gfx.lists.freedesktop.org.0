Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B391C2D6E7
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE3C10E46A;
	Mon,  3 Nov 2025 17:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQe5VYnf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FFE410E46A;
 Mon,  3 Nov 2025 17:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190426; x=1793726426;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=DsSsL4EYU2Bmgrgrt0+W45M4t6ey7U2yAdsyDLh86CI=;
 b=TQe5VYnf/MTdI7ch0+JOBqFREDJfgQWxOyhv0vWiy6+/bIkDXmtavDQT
 4EuYIhUzuZk3XxrizbH/ZcBZNvSleCdrMMmRmw8C5aOg8/nsIa/e+34Zu
 hhIWoN2J+uszq9gNw6ln4rP9j3rI5I1nTcK5wBwQaMJbvjMflda2GSQTs
 YrTJX9Qdw/VqKFWXz5jPHJ+eXvm182bUAHduvIC5GCmq21KejXog0+Ggl
 BSHmsLd3nqKY3RoLyhQ71frDdxeo5omagrJXQ8rhki1xvfVxXkf18A4GA
 2S5atMmyD/elfM11h1qTdTM3q0HFjLZpVhDQXSEpi4FDTCIm0eS6SjCRP g==;
X-CSE-ConnectionGUID: ZXYXHjjbRmScfzHWeCncBg==
X-CSE-MsgGUID: xM33xSwkSx2rLbp+iZQ2tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64310042"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64310042"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:26 -0800
X-CSE-ConnectionGUID: 1+VRWA6gQoGMEuIgeMIsxA==
X-CSE-MsgGUID: 2U2fmyVZQjupvwkXIEgMdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606511"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:20:22 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:05 -0300
Subject: [PATCH v3 14/29] drm/i915/wm: don't use method1 in Xe3p_LPD
 onwards
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-14-00e87b510ae7@intel.com>
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
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

From: Luca Coelho <luciano.coelho@intel.com>

Starting from display version 35, we don't need to use method1 to
calculate the watermark values anymore, so skip it.

Bspec: 68985
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6d050408618c..c888b0896d89 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1812,6 +1812,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 	if (wp->y_tiled) {
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
+	} else if (DISPLAY_VER(display) >= 35) {
+		selected_result = method2;
 	} else {
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
 		     wp->dbuf_block_size < 1) &&

-- 
2.51.0

