Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AD08AAE28
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0776D10FE7C;
	Fri, 19 Apr 2024 12:12:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WPGAEhoY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4353510FA0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 12:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713528718; x=1745064718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t9FvUDnb0gwgGyHfiXCiedDlTaG7xz+DKbeUCJPLZfY=;
 b=WPGAEhoYMToGKwg1Qk61BbaK5W6aYbDW2XkuGfdk8rXkS3eGGWLJOmMD
 FvCKm2zHsXG35aCkvM4QTyrW6AjWd7SYLkNbRYNVp5Hyoxm8ocGNobWZn
 T+nsuPiyjT8QPbaJUa6Blukjnv/xiIMobURdnfnLOuAZZ86PCQuLNJ9S8
 pf5Lu17w9VHyfgITzzsP1E1t4IwR5HHNA76iimOEWGEFq1Pg1jJ1vAzeQ
 /wqSb1kKg471P79mbZTklFNwpH/cHmojhdgDcR74J31BmhYfTTnmuUtHw
 WWcNRomIIdTGWEbzJ3p02VmOdGvOJC4QFQs0ZcrY0TjLELdAKCdmKq8eq Q==;
X-CSE-ConnectionGUID: mi1oweW2RV6g5pOi+JMmBg==
X-CSE-MsgGUID: y1Crxqd4Ri2ydnU9dWudgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19735912"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19735912"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:11:58 -0700
X-CSE-ConnectionGUID: OOzOf3rRTDCW0qRxAnJ86A==
X-CSE-MsgGUID: Ez7zJgagTJmJmYcKCaiCTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28149489"
Received: from mkuznet1-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.63.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:11:57 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 02/11] drm/i915/dp: Use always vsc revision 0x6 for Panel
 Replay
Date: Fri, 19 Apr 2024 15:11:32 +0300
Message-Id: <20240419121141.2665945-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240419121141.2665945-1-jouni.hogander@intel.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cdb4ad23b94a..3dd5e6238ca2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2664,14 +2664,6 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
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
@@ -2680,6 +2672,14 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 		 */
 		vsc->revision = 0x6;
 		vsc->length = 0x10;
+	} else if (crtc_state->has_psr && crtc_state->has_sel_update) {
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

