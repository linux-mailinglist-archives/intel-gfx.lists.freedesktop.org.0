Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D30099C3A7F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7742E10E458;
	Mon, 11 Nov 2024 09:10:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3iUIQh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8EBB10E455;
 Mon, 11 Nov 2024 09:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316212; x=1762852212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zncuaAMmtH+9OuWwILGNDw1WtqbblCggUX1AX498fDQ=;
 b=W3iUIQh+h9e/P6vWH2pUjawahrdAF388tE6J2asZ6q/Z5DFevxYKMsUH
 GkuBc/SVKbOvfAzx0YIEh0APcQTm6msl7/TaFf08QRT/TM325RtNkcWe3
 a4oGk3nGz8wcePMS/ONdBVSX0HqLbB0LdNzPma8akD0jlqDxjWj3PUn14
 9YjmzYTG1jRIP9jcd3nBB0b31jiVTgw0heUlwxos71s53SYpaGU/2hlI5
 Tu7XDM2gMJL9toQV8fNqVxTOxLcrEABUcQfOcRLqCb49iDmtETQj48FqP
 8eXH4LSUoxoRRO2o6fmfJpQGvfQtP9a/Qxsm0jP7wHq41Aq04NLajBllI w==;
X-CSE-ConnectionGUID: syokIN+9Sl2R4jeFB2MDHA==
X-CSE-MsgGUID: 2rs/F50zRcSWb7cFjg4aGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052347"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052347"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:12 -0800
X-CSE-ConnectionGUID: tE7esOzOTGW2ygFMaE1taw==
X-CSE-MsgGUID: fBTYG6IqSWWd98xbhi3SLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762632"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:09 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/23] drm/i915/vrr: Compute vrr vsync if platforms support it
Date: Mon, 11 Nov 2024 14:42:07 +0530
Message-ID: <20241111091221.2992818-10-ankit.k.nautiyal@intel.com>
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

Previously, TRANS_VRR_VSYNC was exclusively used for panels with
adaptive-sync SDP support in VRR scenarios. However, to drive fixed refresh
rates using the VRR Timing generator, we now need to program
TRANS_VRR_VSYNC regardless of adaptive sync SDP support. Therefore, let's
remove the adaptive sync SDP check and program TRANS_VRR_VSYNC for
platforms that support the register.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 0c0e78622073..5a7a4dbf699c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -278,7 +278,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	else
 		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.tg_enable) {
+	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
-- 
2.45.2

