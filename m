Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4143D8C211C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC80810E7EF;
	Fri, 10 May 2024 09:38:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XFWLTah+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F23610E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715333925; x=1746869925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NJz6VLoOPUSJFcWBxoNRHVN/bAwPRBndmcZ8nIdaqNE=;
 b=XFWLTah+LUpa6HDHnpXWhEFmHICtjuC4OqLiCij+XX8nDQeem9XzL0/M
 YUBvdDUG15V+gfQRdvJ5XfhkhDAd0tePmQOqE03+3w1JAy4qHJ6Gz061+
 2UydVomVfuU4mwZf+iy8COCjGtuBwWZUyXY/zXZvi9Oh2FXw6M+BTuVEb
 liJP4ILU1YbYEXYJnKmRBvwGkLk8ZEwUbkb5zHNCr5bpxCMPRREhXdB5A
 v6Bpv6zzr28yGVoUy5NXdVeA4k4Hg+sPfkMQZ41qUDo1DjNS6VkhlKmd1
 6D4TCEdvoZy92EJrMb2RUllm98BApMLrW+0tRojAQSOCjPEr0PHcsbjjZ Q==;
X-CSE-ConnectionGUID: DICffSmcSeyXTXzsUNgUJQ==
X-CSE-MsgGUID: QbOZldVnTBmrIaaisVVLiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36684690"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="36684690"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:45 -0700
X-CSE-ConnectionGUID: PUO1RwdsTMeHYuyYJB+ZrQ==
X-CSE-MsgGUID: 8YnT+VBuSUqWd+vC0bJtEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34075469"
Received: from dlazzaro-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.148])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v10 03/12] drm/i915/dp: Use always vsc revision 0x6 for Panel
 Replay
Date: Fri, 10 May 2024 12:38:14 +0300
Message-Id: <20240510093823.3146455-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240510093823.3146455-1-jouni.hogander@intel.com>
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f87af83c9bd1..303376d3aff2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2663,14 +2663,6 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
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
@@ -2679,6 +2671,14 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
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

