Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09750832768
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31F410E9C1;
	Fri, 19 Jan 2024 10:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E8010E9B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659067; x=1737195067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OnVaPaF3ScuD0UMPV1NksUjlX1bRZKTJpfl4KIJ9ohw=;
 b=DyIpnRYJzJ+AbN4I5+AiLIY5PB3CJjjGR1ypvCFWdb2cSOT5cXg5yhZg
 s1Whg3sIWBk7aUm6ubLJH27BGiuYStUjqK6D2t5wvrsQpMRLhsB16/6t5
 8cnTGaQ9maCshYpSC4z+tT1drxuAGb2bdc8RodbtRJuksEu1cQ8ZIkjLk
 TP3RBEZhNIDAT4SZe5I2ULDt4iDVxPBZs+csTrpfp6JGuU5liGzPH8VNy
 k7jl8uHeEnDVXs7N++dVfTWe3878F35xCysnI5oFOq5uKLU8IAGiPrYPk
 6tbtukgV0npOhFHmauSGLvaT3x4FXlCBQACF5jy+Pdr4UejI7N34QMZpp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070788"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070788"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563261"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 11/21] drm/i915/psr: Modify VSC SDP calculation to support
 panel replay + su
Date: Fri, 19 Jan 2024 12:10:14 +0200
Message-Id: <20240119101024.1060812-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Current VSC SDP calculation doesn't support panel replay + su. Change it to
support this combination as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4e01182662ff..ae368d9999b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2633,14 +2633,6 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
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
@@ -2649,6 +2641,14 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
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

