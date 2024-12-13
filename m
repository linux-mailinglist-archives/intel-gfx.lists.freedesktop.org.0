Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7733A9F04DF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2B710EF1D;
	Fri, 13 Dec 2024 06:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxhQnchN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27FE110EF1B;
 Fri, 13 Dec 2024 06:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071755; x=1765607755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1/Pm1lHwU0LUwvYs9EbssI7tALO4e8JJXkqdRlQtZBo=;
 b=GxhQnchNLX9fat7Pn+K0uLRWHRzaOxKisFO5XeIbu9X9tlclSAHC/4Tx
 51TpxJcG8T0P10FPscvtQ9Fuktyhd4aRXLw7v85h2oGeds2cHTp8GjaxZ
 CbAHt6VZOz6AJPA81zWWC+WXLldTlhuZ6QymBeABvBal6ZeRvNK7BKy9P
 ND5hl6bO/xYybodRWkTrA/3RpcwxWNt8Mw6gWVoqOoie8EMPp04J+K/TB
 UKLY2icopqareI+nQ9+iaECVB6C1hRKw78q6NgerrcBVsqo8yuaC8rLuF
 H9IO5kk9lXb6AhyS6oVbQnhtspa3JN3cv3O7pO+J8ze9rCtTN1e59ZrvX Q==;
X-CSE-ConnectionGUID: 2t82F/kwRp6zBykwqtLwsQ==
X-CSE-MsgGUID: lXZx4Ca4QRit9EqXqmMlxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="33846856"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="33846856"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:55 -0800
X-CSE-ConnectionGUID: 0f3FHzlqR5G70xHmgic7Cg==
X-CSE-MsgGUID: y5CvpYpASyCRL244U41iQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96307772"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:54 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 09/10] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
Date: Fri, 13 Dec 2024 08:35:27 +0200
Message-Id: <20241213063528.2759659-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213063528.2759659-1-jouni.hogander@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
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
index e6f8fc743fb4..8b7438032878 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -177,13 +177,12 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
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
2.34.1

