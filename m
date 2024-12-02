Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714359E0487
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104F210E754;
	Mon,  2 Dec 2024 14:14:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U4gov9SL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF1F10E754
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148873; x=1764684873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0jaAPrMg+IFj33xyzBuBecQikpjcacHRb8w7ISkJauc=;
 b=U4gov9SLOlluO5QMjN9ZGsKqHzPCsoUdR+6kS667yHf/JiWEeTULOhvF
 NjCuEM9J9JnfMmJZ0S2ZSABVmDzbtVBWupMdgVsYR0Iy8DhzJVqyLATM1
 P4muix8ugvcovwl71UpcAMe0Y5hiy95sTyjL82BfCaYMIMPDPx0SUEJya
 DPv2uDaxW3rfdWoux770QQ1afjCNFP4ZV3nWDHPWkIMqQ1XdFoY7kcy5r
 56cfLGYuTBrEryYw9WhsZNPA62Axhu+9CMuJgwXhJFJXEY2dFUhvYJxU4
 LQZsdcKHv3OzvswrUNNAZpMcLldmHx+sQG8wTQeCCHDR2tc8prRSQurE6 Q==;
X-CSE-ConnectionGUID: oQRKGN3SSgSUW3XOBLU+XQ==
X-CSE-MsgGUID: twlXGH/dQImBpIx8YHHZ9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807242"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807242"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:33 -0800
X-CSE-ConnectionGUID: FrRNuKF5TDOb+veJx1DopQ==
X-CSE-MsgGUID: 5i/DbQh+RwGBN0HfZB3Yow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287723"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/9] drm/i915: Allow async flips with compression on ICL
Date: Mon,  2 Dec 2024 16:14:17 +0200
Message-ID: <20241202141424.21446-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
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

Apparently ICL can do async flips with CCS. In fact it already
seems to work on GLK, but apparently can lead to underruns there
so we'll only enable it for ICL.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 77405a7c706b..8b19008202e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6536,7 +6536,26 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 				return -EINVAL;
 			}
 			break;
-
+		case I915_FORMAT_MOD_Y_TILED_CCS:
+		case I915_FORMAT_MOD_Yf_TILED_CCS:
+			/*
+			 * Display WA #0731: skl
+			 * WaDisableRCWithAsyncFlip: skl
+			 * "When render decompression is enabled, hardware
+			 *  internally converts the Async flips to Sync flips."
+			 *
+			 * Display WA #1159: glk
+			 * "Async flip with render compression may result in
+			 *  intermittent underrun corruption."
+			 */
+			if (DISPLAY_VER(i915) < 11) {
+				drm_dbg_kms(&i915->drm,
+					    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip on display ver %d\n",
+					    plane->base.base.id, plane->base.name,
+					    new_plane_state->hw.fb->modifier, DISPLAY_VER(i915));
+				return -EINVAL;
+			}
+			break;
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.45.2

