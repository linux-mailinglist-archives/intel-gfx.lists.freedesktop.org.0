Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2CD9FF701
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 09:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A2110E3B6;
	Thu,  2 Jan 2025 08:37:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S26KKA97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66D510E3DD;
 Thu,  2 Jan 2025 08:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735807024; x=1767343024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v1QFL6o5Li7q5MODzqdjMS4Em47Rwg31qz4uxz00Bjs=;
 b=S26KKA97oKfweE63fre8Vpz/DU7d9xASKr7IZyVaxiJUtDRD1Vi1sETw
 qJL9jRkcufcZqRjcBly56p6r9Hp5bIbTzDQRsf4v6BUys/hG9h0N2I1n+
 UQPpNerdPjjsbZNtk0bvAPG/t1bkutg2rnGFyYaTVv73MnbTe61piw48c
 Mz0Gjuqr+0cF76B4O8TgKied89T3VI4R+K1fj2CcKG/EpGmcNs+jDkmJf
 pFYoCxwkecMdEeC/12XgkCgblFYrgkT8atODaFXMTg1q/AbAPhTh7besR
 j5Ni6CWk8jlV5e9Jsj+Ua4EXI1Z0D9ec1nVeWTkV8h7hiJUJlVJAu+Udb A==;
X-CSE-ConnectionGUID: xwnK6cRJQ/2rKAPNbNqZOg==
X-CSE-MsgGUID: 6PmIrRHDTEyZKjAOoScKGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="23626921"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="23626921"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:37:03 -0800
X-CSE-ConnectionGUID: 9ZgeEs4yQcSulCqcYeadbw==
X-CSE-MsgGUID: +gQFzsFKQGqHMTmPHkKdeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="106314169"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.76])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:37:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 9/9] drm/i915/psr: Allow DSB usage when PSR is enabled
Date: Thu,  2 Jan 2025 10:36:38 +0200
Message-ID: <20250102083638.2552066-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250102083638.2552066-1-jouni.hogander@intel.com>
References: <20250102083638.2552066-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d76454a69399..8ea56bba9deb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7631,6 +7631,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_display *display = to_intel_display(crtc);
 
 	if (!new_crtc_state->hw.active)
 		return;
@@ -7643,7 +7644,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		new_crtc_state->update_planes &&
 		!new_crtc_state->vrr.enable &&
 		!new_crtc_state->do_async_flip &&
-		!new_crtc_state->has_psr &&
+		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
 		!new_crtc_state->scaler_state.scaler_users &&
 		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
-- 
2.43.0

