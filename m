Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F119B0D70A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 12:13:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A96E10E64B;
	Tue, 22 Jul 2025 10:13:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="imb/k7Sa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C89210E64B;
 Tue, 22 Jul 2025 10:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753179218; x=1784715218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F7/nbp4sU+LtIFfAxpEvhYerkA+fO82rXg6RxNLfcbQ=;
 b=imb/k7SaVYpZ9I1cTKlJwrhUpakljJORPKwCbSNPkQY9n5EhyTWATyYI
 AzNCVOWfBKEJAjxFBzNp40/sh8WrideSCfY0UfJYNoMzegVDN+8RwlN/U
 7WOlW9100klbB6mQJZQ8H/O2ETrQpJaaJXwTqSkJe+p6zI6sXKKrKKre6
 RIa0gFNqgFcvnmg8nb3hh0s/BiSMCkNy+CDEh/BbQCzgG61z9Ob7WYyjs
 +kGhAs0zi9+kE6wez0Ii0Ib9U89ewCTtsTcLZlI2X96EqCyzDSMLxqUes
 DIhT74jgqMHWq60NjQvojW0DY0qidbzZlSDXUpzaL/y3d05+i62DR0V6c g==;
X-CSE-ConnectionGUID: RXW2vKGLQ6uM3pg5vtRI8Q==
X-CSE-MsgGUID: pIaTuqPCRLObv2zA/a8xjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55266639"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55266639"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:38 -0700
X-CSE-ConnectionGUID: V9I2zRP1QzCY1lSWBgco/w==
X-CSE-MsgGUID: j+XmV6LBQrWA4sUhkvUbIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159418575"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.223])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/4] drm/i915/display: Avoid unnecessarily calling
 intel_cx0_get_owned_lane_mask
Date: Tue, 22 Jul 2025 13:13:15 +0300
Message-ID: <20250722101317.1728499-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722101317.1728499-1-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
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

Currently we are always calling intel_cx0_get_owned_lane_mask when
intel_lnl_mac_transmit_lfps is called. Avoid this in cases where it's not
needed.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2b0305bb04cd..2993dabdbee6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3239,13 +3239,14 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	int i;
+	u8 owned_lane_mask;
 
 	if (DISPLAY_VER(display) < 20 ||
 	    !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder), crtc_state))
 		return;
 
+	owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	for (i = 0; i < 4; i++) {
 		int tx = i % 2 + 1;
 		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
-- 
2.43.0

