Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 211B091EECA
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 08:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F4C10E1B6;
	Tue,  2 Jul 2024 06:13:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0XMN3da";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78DC10E1B6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 06:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719900812; x=1751436812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tuSgcDc05gfdfC/9kzikpZHr0V3ap4/0ymILCnJYD24=;
 b=C0XMN3dae9a0UJII35EyWVJJ5KNQnlsz29wTE4VwE5mwvruClJJLheu6
 IMaR0dI9L+7AWV6s2u5BHyiNrr3tzIfagc56NcWttobBSqFng16d2K8yI
 T4Sv91PMZW8C/9wP/Cf1F05Vqg8NDjVdJ2V7BINWyo9DVqt8gTFBHQMVW
 IHrbnGJG3XFQvvNN6SRsVILPnHmLlrZLLvESHzyZQSl+yH5W7YoyCAMKM
 r+2ZjIrRo6WufQzIGVTk1D/Ry8UDy1bQHa3TlecudNWUivlk2qlhgioqK
 UxAHhjC0OLG9w/udmer5MTQcVOphFFcQhLnueke1RLoijZhOpP9R6hYjT g==;
X-CSE-ConnectionGUID: nxwVXuS/Sq2DnDSX1+UF4A==
X-CSE-MsgGUID: B6xPT+ZjR+eI0c/Rka3Obg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="12352191"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="12352191"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 23:13:31 -0700
X-CSE-ConnectionGUID: eIXJGgDxTHa+U6GJioIbLA==
X-CSE-MsgGUID: 8dqZGZkXRzS/wlUb2EK0fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="50228870"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa005.fm.intel.com with ESMTP; 01 Jul 2024 23:13:29 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 2/2] drm/i915/display: Set Context Latency at least 1 for
 psr1/psr2 during vrr
Date: Tue,  2 Jul 2024 11:26:31 +0530
Message-Id: <20240702055631.3722013-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240702055631.3722013-1-animesh.manna@intel.com>
References: <20240702055631.3722013-1-animesh.manna@intel.com>
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

Bspec: 71956

The SCL window (i.e. Window 2) must be non-zero if using
VRR + PSR1/PSR2/PR.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cdab71f81eaa..05462af6805f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3946,12 +3946,12 @@ void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
 	/*
 	 * wa_14015401596 for display versions 13, 14.
 	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
-	 * to at least a value of 1 when Panel Replay is enabled with VRR.
+	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR.
 	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
 	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
 	 * by 1 if both are equal.
 	 */
-	if (crtc_state->vrr.enable && crtc_state->has_panel_replay &&
+	if (crtc_state->vrr.enable && crtc_state->has_psr &&
 	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
 	    IS_DISPLAY_VER(to_i915(crtc->base.dev), 13, 14))
 		adjusted_mode->crtc_vblank_start += 1;
-- 
2.29.0

