Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EFAA33831
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 07:48:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7333110EA09;
	Thu, 13 Feb 2025 06:48:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WYPDDzKY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBFA10EA10;
 Thu, 13 Feb 2025 06:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429319; x=1770965319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kV/vHBzjdKxT6XwXTpQznDxbzJdpOdgiXA6rHnUcAm0=;
 b=WYPDDzKYS0s7gZVpspARw+jt0BdcoMNMwCNAyv26HCSHR5x2qNmhwf3L
 ABu0AfdXY3Ubu/RNKHSeqKmUz60yCNhdFgMk5gbyhWXygTPje41wUL0/1
 SzB+BXlGk0dotUb/5jYdCj58iPRtKNJsMKiWz57IiOucMJiL2FIYemkHB
 nI5uzfzZcVWXh2BoKmLc7kepyB4Jmb3WsGil2hX8mefso9A3wrUJ0BGyV
 s6k9HKUpiPH4uy0Vinm2vNVCd+KD9lYTKw4EdpvaOYAcHwlkq6Pc2mW7i
 ulES6aJQTCviuimJg5zb6EmBvmSLHsQvPWepOwNuwgaiQRkzXmrJP++jK A==;
X-CSE-ConnectionGUID: 91F2idVET2GXyfjGyFFltA==
X-CSE-MsgGUID: lcbXaTiCR7SoudpuNXO64Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50764149"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50764149"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:39 -0800
X-CSE-ConnectionGUID: GA5Xa2iOQ2uIlAaJuuSY0g==
X-CSE-MsgGUID: 3wcxB2QXRBOfQCfVrW6BOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118237338"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.234])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:37 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 13/13] drm/i915/psr: Allow DSB usage when PSR is enabled
Date: Thu, 13 Feb 2025 08:48:04 +0200
Message-ID: <20250213064804.2077127-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250213064804.2077127-1-jouni.hogander@intel.com>
References: <20250213064804.2077127-1-jouni.hogander@intel.com>
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

Now as we have correct PSR2_MAN_TRK_CTL handling in place we can allow DSB
usage also when PSR is enabled for LunarLake onwards.

v2: rebase

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f0cfd291eba5..19228230fca9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7684,6 +7684,7 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -7699,7 +7700,7 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 	new_crtc_state->use_dsb =
 		new_crtc_state->update_planes &&
 		!new_crtc_state->do_async_flip &&
-		!new_crtc_state->has_psr &&
+		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
 		!new_crtc_state->scaler_state.scaler_users &&
 		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
-- 
2.43.0

