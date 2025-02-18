Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE840A3AAA7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6045010E1C4;
	Tue, 18 Feb 2025 21:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IJY8RYhv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA08D10E1C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913560; x=1771449560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/34wpp6yakrzhidCMPsVjwf9R4U+PnmLvidB6UkYHjM=;
 b=IJY8RYhvJkD8HzoM8t2s4rBkvbtaTelFT8U6/4jWAM240GjGAJWeCEIg
 0+1Ik0CDzEWAKtqkaNWIrxUP1AIJC60iNRTHIqURFpNqUYaaAwrFgoNTG
 L1UE4u/ig+vFBxudEQG/whgZTNrPTwZtsCLI/70ClDFv/jr806Ep/G7z8
 gGOgvweLF9b4MJb2DcdrJrhEjoE4+mSvCu/x4/JJglM3DsXCzwDen3pfQ
 lV8zxpCgBTj05Ud1qBX36rJLEcPSunFwZaUlcJGtlxYP0Ad9ACc8Zuu/d
 KOXvM1VrwCGhwgaUcIgUlU4X4KR2iczWr772SQtvFpoONePnZZ4orzLJh g==;
X-CSE-ConnectionGUID: g+PTKja0TD+EcLIf0rh/gg==
X-CSE-MsgGUID: BTKbsZ90Q0iD4KwNBwv3zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862250"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862250"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:20 -0800
X-CSE-ConnectionGUID: dZrO6h3wQGq/tSVQ6OJ4tw==
X-CSE-MsgGUID: yO0yX1GAToSXyBlRtd5kmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693347"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH 01/19] drm/i915/cdclk: Do cdclk post plane programming later
Date: Tue, 18 Feb 2025 23:18:55 +0200
Message-ID: <20250218211913.27867-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

We currently call intel_set_cdclk_post_plane_update() far
too early. When pipes are active during the reprogramming
the current spot only works for the cd2x divider update
case, as that is synchronize to the pipe's vblank. Squashing
and crawling are not synchronized in any way, so doing the
programming while the pipes/planes are potentially still using
the old hardware state could lead to underruns.

Move the post plane reprgramming to a spot where we know
that the pipes/planes have switched over the new hardware
state.

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..cb9c6ad3aa11 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7527,9 +7527,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_program_dpkgc_latency(state);
 
-	if (state->modeset)
-		intel_set_cdclk_post_plane_update(state);
-
 	intel_wait_for_vblank_workers(state);
 
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
@@ -7606,6 +7603,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_verify_planes(state);
 
 	intel_sagv_post_plane_update(state);
+	if (state->modeset)
+		intel_set_cdclk_post_plane_update(state);
 	intel_pmdemand_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
-- 
2.45.3

