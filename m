Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010FFA2AE0F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 17:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1705710E8DB;
	Thu,  6 Feb 2025 16:45:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N14QSqZX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0435610E8DA;
 Thu,  6 Feb 2025 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738860328; x=1770396328;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=72qDJph2VVNqEuPxxa4obWeCgVeSgyO0EEXur/yN5Cg=;
 b=N14QSqZXvH4sKUxW+TsUegNvO7d652sLfLl4Q+4ohVfRrBbTndteLV0b
 +Fjbq1PhJuIRROZy2WaXpbwa2fyl0gjtaxu6vGYXjI/R3uL8TnAoAoQ4/
 GkJkijYpid/AOV8S7+EnLKqpkLYWlJ4KktpolWpa1ycqv872YyAh6Tr1g
 mDKi7iZbLlE542EIem2KV9aeY6+gbAktL9QlE9iuFMNFPQ8bUtf8yvKay
 2MHTIhi0HOBA+9vL3yyG+At/3AhNNkBmk7aJvdWXu0idOry7LFo9M85Ji
 /1hhQr5ZWLJVfx3vuWTeWbA4ouDs7DSI41IX0MsKFMnBbOo7RV+LVi8ZZ A==;
X-CSE-ConnectionGUID: pmDyT95hRSSvaeKn5CMF0A==
X-CSE-MsgGUID: Qe5fhAtqTXih5Gbozc9rtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39499285"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="39499285"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 08:45:28 -0800
X-CSE-ConnectionGUID: mcC3rC1XRSGvslih8P6fvg==
X-CSE-MsgGUID: +EwGtkjGRxyZRP8BvPHoKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="116288409"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 08:45:26 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp_mst: Fix disabling the minimum HBlank time
Date: Thu,  6 Feb 2025 18:46:24 +0200
Message-ID: <20250206164624.3185280-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

Disable the minimum HBlank time only on LNL+, where this functionality
and corresponding register exists.

Fixes: a5ebe00c2ace ("drm/i915/dp: Guarantee a minimum HBlank time")
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ae2db983eff92..459440dd6e879 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1006,7 +1006,8 @@ static void mst_stream_disable(struct intel_atomic_state *state,
 
 	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
 
-	intel_de_write(display, DP_MIN_HBLANK_CTL(trans), 0x00);
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_write(display, DP_MIN_HBLANK_CTL(trans), 0);
 }
 
 static void mst_stream_post_disable(struct intel_atomic_state *state,
-- 
2.44.2

