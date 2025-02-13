Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508AEA33DA0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 12:16:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC2E10EA5A;
	Thu, 13 Feb 2025 11:16:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTy4EPLN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF96310EA59;
 Thu, 13 Feb 2025 11:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739445400; x=1770981400;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nZBlrNS27qOVLZC91N9y1mglzgDlLWqjGSQSQ6xA4j8=;
 b=LTy4EPLNGpFYOC0RtxEwoNziEzBCbB1ZKtapmKnkHOCelbCB3ls7QRgX
 CK85HxwhX10lZp7C4sOS76OYt4Q73+xNbpF1A4Mdh5Az9zJqRZlMlRz7U
 OCRNZSWv+fSapn3IU7/0xsOdSYKR2jLhDrQdCdl3bNyWOmQpeVxwjZy0s
 3Yoh1Gy/UVqhahKFIj27NM2mTQkzxekqtioYdMiRd48imhnVRl5kR6eLP
 aNL8CbD1PcXpcQKMhqdKQxqn6RdTbiHK7o86J1mBfo0CCYZ09o4Ld3ZcF
 UVi6+I7lt7+tEiVuo6BhXLjzVk8GpdASowc7ll0d38C2jfPKsdnedKA2H w==;
X-CSE-ConnectionGUID: NcZiKX63RdmDGYic2OLTmA==
X-CSE-MsgGUID: RfspdXEmT6SknsHOowcM6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="57675565"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57675565"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 03:16:40 -0800
X-CSE-ConnectionGUID: cP/FmppPTze4yRuFvnZnQA==
X-CSE-MsgGUID: /3NltjMPR4OgfNM4uNY03w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117740610"
Received: from jhogande-mobl1.fi.intel.com ([10.237.72.66])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 03:16:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Date: Thu, 13 Feb 2025 13:16:28 +0200
Message-ID: <20250213111628.2183753-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

Currently intel_psr_disable is dumping out warning if PSR is not
supported. On monitor supporting only Panel Replay we are seeing this
warning. Fix this by checking Panel Replay support as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 861e50ceef85..c77eb1ba3db3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2186,7 +2186,8 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 	if (!old_crtc_state->has_psr)
 		return;
 
-	if (drm_WARN_ON(display->drm, !CAN_PSR(intel_dp)))
+	if (drm_WARN_ON(display->drm, !CAN_PSR(intel_dp) &&
+			!CAN_PANEL_REPLAY(intel_dp)))
 		return;
 
 	mutex_lock(&intel_dp->psr.lock);
-- 
2.43.0

