Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AC1A1B4E2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025C910E94E;
	Fri, 24 Jan 2025 11:39:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nScxOSZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6DCB10E921;
 Fri, 24 Jan 2025 11:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737718778; x=1769254778;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=avdctDaP2if7r4Y49/E+KAJDLvg9UbNnQZL9zv7lvBA=;
 b=nScxOSZyx+W3gS0spvvoNcRL23E9Bfp1zhYHUveC1svr3b3YQVfK/3hN
 +GjWUsgxTIRDHU7k3xPhsyCCQj470HScJC2Jkty30Nqm8z3/vCrjiD3E+
 es0Pzgd4cpSbK/7g1GTpRAP6+1OHzrEEemGxCMlUZIx92JSrSrmgT/lCM
 wLyhlT3fQZ5TZGiEnHm7a4AwcWQJWSVXK2Oa3j4dnHlpM2opfzZwf9FmM
 SRfu7HnbOycekP62T4P1Qrnq/TEnW6UDxYh2dbBrBGAseaQBKu2dAbmYA
 xMyBqvrLmgPl3JWaRWW58FHHcEVGF9DRDV0m2AWrNkCRFCa90LQKM4lnq Q==;
X-CSE-ConnectionGUID: YfFAjE+dTmOpeQRSYJbMRQ==
X-CSE-MsgGUID: 8Y0JW/clSwSdDdRnvhESZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="49237792"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="49237792"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:38 -0800
X-CSE-ConnectionGUID: K1WLjECvTzSFUkqENMs/Ww==
X-CSE-MsgGUID: 8D2AzWF2SP+VQtZfZhtDlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="112757842"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.138])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:39:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 09/13] drm/i915/display: Don't use DSB if psr mode changing
Date: Fri, 24 Jan 2025 13:39:02 +0200
Message-ID: <20250124113906.850488-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250124113906.850488-1-jouni.hogander@intel.com>
References: <20250124113906.850488-1-jouni.hogander@intel.com>
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
index 5db2af86d0c8a..623ca5215ed44 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7700,7 +7700,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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

