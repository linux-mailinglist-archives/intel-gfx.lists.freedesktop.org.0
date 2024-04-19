Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1688AAD4B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 13:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CCD10FAB9;
	Fri, 19 Apr 2024 11:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dIP32ZZ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE06B10FAB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 11:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713524708; x=1745060708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7Ml9lD3WK4Ao4UtE7MUkl757ZWpGu2AKFKv3HEzByqI=;
 b=dIP32ZZ8GEJfepwfegcZ68v6G48yYnpPmhGdBD8rjzfbfL4ZvRCaYi10
 WPU6CPev5zaUQdHG3vlhSBMHDP5UtI4BmJiAvu/j3KhRrW8ntgsJdaXKO
 9liQ3PCX8l0GdZTF8zC096mKxSSs9Q1y+41t5c7ZiLGnjs7SqPbgbtHlD
 yv/jTyFAFcU6O1yHDNvyIgFyLXJdJsVOOhKJhGyUtaWnaC7lsXgBCRi/Q
 nBK3/7izsBANeEoxKfjd8vJeqLezpxwJwEKt+MxRDX7gv34TDALlTm9b+
 tPcwHXUtR7PZyae+dc17VwjD/TVlTy/pY0NPv0Jac3Aji/KgxjmBbuO3T Q==;
X-CSE-ConnectionGUID: 66k/fvvuRaGQIG+1d4qbog==
X-CSE-MsgGUID: s7gHBFO1R8Svj7dSy1gzfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19815911"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19815911"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 04:05:07 -0700
X-CSE-ConnectionGUID: dVVqbjPtS7aaORJqOO64CQ==
X-CSE-MsgGUID: uc1HbNpGRuWEKuxwZwSeEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23320461"
Received: from mkuznet1-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.63.13])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 04:05:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/dp: Use always vsc revision 0x6 for Panel Replay
Date: Fri, 19 Apr 2024 14:04:53 +0300
Message-Id: <20240419110453.2618728-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We want to use vsc revision 0x6 for Panel Replay no matter if it is
selective update or full frame update mode.

Fixes: 5afa6e496098 ("drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3f1723f55e0d..7e97a92509d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2664,14 +2664,6 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
-	} else if (crtc_state->has_psr && crtc_state->has_sel_update) {
-		/*
-		 * [PSR2 without colorimetry]
-		 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
-		 * 3D stereo + PSR/PSR2 + Y-coordinate.
-		 */
-		vsc->revision = 0x4;
-		vsc->length = 0xe;
 	} else if (crtc_state->has_panel_replay) {
 		/*
 		 * [Panel Replay without colorimetry info]
@@ -2680,6 +2672,14 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 		 */
 		vsc->revision = 0x6;
 		vsc->length = 0x10;
+	} else if (crtc_state->has_psr && crtc_state->has_sel_update) {
+		/*
+		 * [PSR2 without colorimetry]
+		 * Prepare VSC Header for SU as per eDP 1.4 spec, Table 6-11
+		 * 3D stereo + PSR/PSR2 + Y-coordinate.
+		 */
+		vsc->revision = 0x4;
+		vsc->length = 0xe;
 	} else {
 		/*
 		 * [PSR1]
-- 
2.34.1

