Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8757A1B442
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 11:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 279A210E914;
	Fri, 24 Jan 2025 10:57:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YHAaBd7p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342C810E960;
 Fri, 24 Jan 2025 10:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737716226; x=1769252226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sWzoXGBzqCrChWMwBt1xLWnBpNa0pJUz+uVAxJLzQqo=;
 b=YHAaBd7pRbGREIwCWWINSyAxNhooZZGbWH2usJRPCmXoyxlXQzqQWWgm
 hctEhWDfj6efMBxlZ38eeEaqRIZry76tKHar+xqvUfF3iw1JHLYqJ2gw7
 9QzTXBCdbCN3T/foLAn9D7vio9V9JsABFyOdQIUUK2o8MaD1njoRsRK2d
 g4M5eNxSsfdBnjgE4qu60SGkHN5XmGX0pG7tI+b5welzbAI01EpU347sv
 UTnhaytuSo223Z9R1O9rEAopHcpi5B9lqSU7I6jNQ9LciKl0iCFWxL4cL
 oCZEbYkCGDf64Z5KgOeFwNUHlPjxaOCfG2XW/+J2MkKFYLDWMnPFDxnTp w==;
X-CSE-ConnectionGUID: Mqt4Qqy5QOaOqEFZOwmqIg==
X-CSE-MsgGUID: c++FFoM9R8ul+O+ah0wA9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55660100"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55660100"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:06 -0800
X-CSE-ConnectionGUID: KkBekeT8T/WOkbMueMRN3Q==
X-CSE-MsgGUID: K4XrcvSCSuKvTpKdGViShg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107864283"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 02:57:04 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 10/13] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
Date: Fri, 24 Jan 2025 12:56:21 +0200
Message-ID: <20250124105625.822459-11-jouni.hogander@intel.com>
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

We have different approach on how flip is considered being complete. We are
waiting for vblank on DSB and generate interrupt when it happens and this
interrupt is considered as indication of completion -> we definitely do not
want to skip vblank wait.

Also not skipping scanline wait shouldn't cause any problems if we are in
DEEP_SLEEP PIPEDSL register is returning 0 -> evasion does nothing and if
we are not in DEEP_SLEEP evasion works same way as without PSR.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 89d3496bcbdbd..bb77ded8bf726 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -168,13 +168,12 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
 	if (pre_commit_is_vrr_active(state, crtc))
-		return DSB_SKIP_WAITS_EN |
-			DSB_CTRL_WAIT_SAFE_WINDOW |
+		return DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
 	else
-		return DSB_SKIP_WAITS_EN;
+		return 0;
 }
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
-- 
2.43.0

