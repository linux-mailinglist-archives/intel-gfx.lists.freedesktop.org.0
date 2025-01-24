Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD14CA1B43F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE4910E948;
	Fri, 24 Jan 2025 10:57:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MYFLDeRe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6D410E959;
 Fri, 24 Jan 2025 10:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716225; x=1769252225;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=foD52U1cVz8tk/kRGB7Axf/fxYLAjxjvIRNb2jY/Fy8=;
 b=MYFLDeRerI0NIt9AMebPA4py+BtfMcBeeY5cNfKXPY5kG97p2WQeJOch
 Dx8Xeoat4lW/nX0t6IxV8MTY7S3Ff8NomMDVfzUStmIj0LcczX44bvJ4k
 osLvy/EjLOg+2kXYKCjbrux/JOgmrH7ra15szV7V9m190l2TTHO8WwnM7
 VdZtsnHy2N0nP+3ZRBvwacvBbRABM/fta9q14Vxqp3OLGYqv/IDQ4fN/j
 Pq6mdGIoNgce8YFyUGKi/J7ZLRupTN/cVauHP/MD6nL4n+cMhgseU7epP
 ujzryQ3wCdAxpP2qMHj8cXJ3WuHH9yppLqj4xiZ//kp22bnajPtYDjNFS w==;
X-CSE-ConnectionGUID: WEYXU0trR5WIGK7yOjeeuw==
X-CSE-MsgGUID: WZTPIyuWT7aXJEy1D61AmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660097"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660097"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:04 -0800
X-CSE-ConnectionGUID: PUT76XHRT8yaXpiyM6c51A==
X-CSE-MsgGUID: 6NO8/a+qTAiL6afqCIA4bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864278"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 09/13] drm/i915/display: Don't use DSB if psr mode changing
Date: Fri, 24 Jan 2025 12:56:20 +0200
Message-ID: <20250124105625.822459-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124105625.822459-1-jouni.hogander@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
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

Changing PSR mode using DSB is not implemented. Do not use DSB when PSR
mode is changing.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3ac1cc9ac08a8..a189aa437d972 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7682,7 +7682,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		!new_crtc_state->scaler_state.scaler_users &&
 		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
-		!intel_crtc_needs_fastset(new_crtc_state);
+		!intel_crtc_needs_fastset(new_crtc_state) &&
+		!intel_psr_is_psr_mode_changing(old_crtc_state, new_crtc_state);
 
 	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
 		return;
-- 
2.43.0

