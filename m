Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5DBBF97A2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CABE10E6A9;
	Wed, 22 Oct 2025 00:32:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OBSf/1wf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2FAC10E6A5;
 Wed, 22 Oct 2025 00:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093168; x=1792629168;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=85ng2vVBqXHKPeZaXKgXRpAn+e+/4hAHdktUb7r2/h0=;
 b=OBSf/1wfsT2LdI98bFupb6v3McrKPoybALj8UhKGaLaYxUPhBe9/HfoG
 0r0hx7ptVeekuIPZ4LE4IPLFtNAJb2Pryc6FrMG8+M/PyY8EgJeORaaSV
 Tgo71JKp7g9/CBCOc3W2nrWh8QkFTB0h5gEbxgXmpXcmH/eiCA4fIDE3E
 Y4CP9C5l9BLkeYUmK3ZySgNYy/aU1uWnybgGyUOaJ8U1u8gfHxbwuOh/1
 5kYqcXDZsHA9ocuL7eyiW15VSsrGdtB2+GdwSweskArC/OSxsV/m+1kMS
 YhDGQVuYGJUoOK+b4fuGkk0SM852BV236IAFA9hxHglWexW9v2vSD24DL A==;
X-CSE-ConnectionGUID: ZEwOQCOPS5WYCxgxSjypAQ==
X-CSE-MsgGUID: zW1lMXHCRPiFJ8yyTrncBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67095545"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="67095545"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:47 -0700
X-CSE-ConnectionGUID: 3ldC+cQVR02cBfqgNjD6kw==
X-CSE-MsgGUID: i23yy+lKTPqTpXemvPiUpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132635"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:44 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:55 -0300
Subject: [PATCH v2 30/32] drm/i915/wm: don't use method1 in Xe3p_LPD
 onwards
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-30-10eae6d655b8@intel.com>
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
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5bb6cdc4ad2c..9a063637a9af 100644
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

