Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1329A5BCB7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DDC910E55A;
	Tue, 11 Mar 2025 09:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SsgxExVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA92710E55D;
 Tue, 11 Mar 2025 09:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741686606; x=1773222606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6dZ2OpBbtUUXXDeUeQ9msPYZevlCi12xW4A1jqA90FU=;
 b=SsgxExVg+YCaAREawPzpXb2+h0jCqdiI2olUUeJqbuk3bnU+DoOpKU8I
 B/LJkGxbQkbhfft/Gs3pExRiQg6NWxuYeEtKsOblF4OMq3IJiBgshyb2H
 sgJkq+Cx9W7i7Gxj1ZaeF4bT2s06mozaEsxR7vEfymp0IaVLuaCSa7Pds
 kjHD6QNBZRnPaMW9S0mCLVIZMKCFp5BUhXu/eYqQOeLKQm+Ge40MUHvlr
 NSNm3D4/gMqdKdZ+ZKaLppX39lXpJ2F3GD5L0kcHMUF1+Kbti6+/ga/X2
 OathF1JoC6iNw0QzRWHLrAGhpZ4CkO0L0H0rTchYqDJWyYLt9LE0JcoNP Q==;
X-CSE-ConnectionGUID: t5NflHM5QUSKKvQZQHmBbg==
X-CSE-MsgGUID: iD2m/2s3TVC1Q7B6+pBFtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45499819"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45499819"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:50:06 -0700
X-CSE-ConnectionGUID: 654sOen6SLW5YdbO2S0CZA==
X-CSE-MsgGUID: EU9Xo/xVTzuj5i2nPDvEHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125319676"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:50:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [RESEND PATCH 8/8] drm/i915/display: Enable MSA Ignore Timing PAR
 only when in not fixed_rr mode
Date: Tue, 11 Mar 2025 15:07:51 +0530
Message-ID: <20250311093751.1329043-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
References: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
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

MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
refresh rate.

Currently for link training we depend on flipline to decide whether we
want to ignore the msa timings. With fixed refresh rate we will still
fill the flipline in all cases whether panel supports VRR or not.

Change the condition for link training to ignore the msa timings if
vrr.in_range.

v2: Add more documentation and a #TODO for readout of vrr.in_range.
(Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 2966f5b39392..ea225496a96e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -711,8 +711,21 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
+	 /*
+	  * Currently, we set the MSA ignore bit based on vrr.in_range.
+	  * We can't really read that out during driver load since we don't have
+	  * the connector information read in yet. So if we do end up doing a
+	  * modeset during initial_commit() we'll clear the MSA ignore bit.
+	  * GOP likely wouldn't have set this bit so after the initial commit,
+	  * if there are no modesets and we enable VRR mode seamlessly
+	  * (without a full modeset), the MSA ignore bit might never get set.
+	  *
+	  * #TODO: Implement readout of vrr.in_range.
+	  * We need fastset support for setting the MSA ignore bit in DPCD,
+	  * especially on the first real commit when clearing the inherited flag.
+	  */
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, crtc_state->vrr.in_range);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

