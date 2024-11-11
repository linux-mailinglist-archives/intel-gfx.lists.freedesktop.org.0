Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6726C9C3A90
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F1210E450;
	Mon, 11 Nov 2024 09:10:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyjshuBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C158710E468;
 Mon, 11 Nov 2024 09:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316245; x=1762852245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=82x9Y9EKtdy8nwicUC/V3G0QgrAqKVsVokfpdEPZ1Kc=;
 b=VyjshuBHZ7tfXJ3tvVs7s6LDG3BXrOzIe4M1urHPlNdtw4NhV3JzqK1/
 9mcGtu7qy42otg8q0XhO5UTyBZAlGXthGWhb++095yEeRcRjzLbuiL+/L
 tIWR7DUHN5gnCGeQ7Xhw4huObyBv75G4DRLtQbc5OadrYL6OIMAdFKLG4
 6RaRcySkfQi6euUV5C6NoRgncUyoZ5XKNZBY5byMRf1pOToNk5vNdZDEZ
 4JU6qny1abKTIJ77LsYQ1+ja7mi+C433KdccPM2rGkeGUV7bxVHBhZab3
 LyleadVOB/153zSsykNsonRpK5S0ilYKD8ggiStXrCK8tbEY3Fy6huOWo Q==;
X-CSE-ConnectionGUID: rX+j3CwrQ82jE36rtr3b6w==
X-CSE-MsgGUID: Kq9rWksWTsW1L2wVF0N+Yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052500"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052500"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:42 -0800
X-CSE-ConnectionGUID: aGX0mlpDQkeHVSDhT7DiwQ==
X-CSE-MsgGUID: l0qL29gISSyEBho0yGAhrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762727"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:34 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 21/23] drm/i915/psr: Allow PSR for fixed refrsh rate with VRR
 TG
Date: Mon, 11 Nov 2024 14:42:19 +0530
Message-ID: <20241111091221.2992818-22-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

At the moment PSR/PSR2 are not supported with variable refresh rate.
However it can be supported with fixed refresh rate while running with
VRR timing generator.
Enable PSR for fixed refresh rate when using the VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bf005daa7bb2..2b200a6fd685 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1674,8 +1674,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	/*
 	 * Currently PSR/PR doesn't work reliably with VRR enabled.
+	 * Avoid PSR/PR when not in fixed refresh rate mode.
 	 */
-	if (crtc_state->vrr.tg_enable)
+	if (crtc_state->vrr.tg_enable && crtc_state->vrr.mode != INTEL_VRRTG_MODE_FIXED_RR)
 		return;
 
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
-- 
2.45.2

