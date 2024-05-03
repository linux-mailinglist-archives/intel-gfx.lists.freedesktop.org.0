Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D87B08BA71E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16934112835;
	Fri,  3 May 2024 06:34:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUW3LQi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079BF1122C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714718069; x=1746254069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bIjNGpLd442lBCqK3+yWagH4iUW7/8KdiGmklZCH+7U=;
 b=eUW3LQi2et85DnkfBNWBd32ExmoCB1qA8U8azlc5yvGKmtb1ztAL9Ry7
 dCIonYZ3T4SvjCTXtNGxeeoCpmZqYTUQyZT/LMVKYIfgZtKdclvU7tEuG
 1u0tMOxnXLsfA7DVRvVBvj991ocReDy1EtLH4vQRy3/BCTjq7Nsh0iE7L
 zpj41TYIfCZrwh6hkB4j0cpqmb4Iqc7ntxcVmOLMspEhQB3eGhqTj6zru
 IShKZD0+B8XyYPQ9ogZfM0ghY9z7GDaMVO6cYZAx6oi9i7VhGGe7tq6Y4
 1755Dht3uGHOChPWZfDwIhonHJM0L7VO8kcFaegMUvetsh/3whc9BU7Mt w==;
X-CSE-ConnectionGUID: O0ozxCpOSyiffdoGZZEimw==
X-CSE-MsgGUID: A6z38nVIQJ25TD2nVsxCuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14302306"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14302306"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:29 -0700
X-CSE-ConnectionGUID: S8cm6OAkTpGN/CS5P64dqg==
X-CSE-MsgGUID: Tm/qc5+ASxmZghKSRa+GGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="50558688"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 03/12] drm/i915/dp: Use always vsc revision 0x6 for Panel
 Replay
Date: Fri,  3 May 2024 09:34:04 +0300
Message-Id: <20240503063413.1008135-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503063413.1008135-1-jouni.hogander@intel.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
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

We are about to enable Panel Replay Selective update mode. Vsc revision 0x6
for Panel Replay no matter if it is selective update or full frame update
mode. Take this into account when preparing VSC SDP package.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0755bdfc8d3d..5731aa84992e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2660,14 +2660,6 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 		intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
 						 vsc);
-	} else if (crtc_state->has_sel_update) {
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
@@ -2676,6 +2668,14 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 		 */
 		vsc->revision = 0x6;
 		vsc->length = 0x10;
+	} else if (crtc_state->has_sel_update) {
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

