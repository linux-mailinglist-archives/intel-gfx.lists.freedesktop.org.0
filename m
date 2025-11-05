Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F6DC36F4E
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 18:10:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B07BE10E070;
	Wed,  5 Nov 2025 17:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QSLXHheH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484B610E070;
 Wed,  5 Nov 2025 17:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762362619; x=1793898619;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e40xFR6tQfR7PJ5Wsjq2Qgq1xP5o8XykAqV6jk3uYIE=;
 b=QSLXHheHEsLQrVAcQ90S5OyJgOUU5XUdKdN1ty1CFmqmaaCgUpEhRyB2
 YL1QnnScseINkYOIbJS2ycOX2euQxVxCkPdOIdG1pI3oLMUTOn0381FJ1
 J1IK6Bzdu0rk1vSQfeprLGhZ9MZPXTx2vuLdRzrhCm9TMF5fHgsxqlK1w
 CqE7deMmPc/TNKlKo4DbHGDo47ut+lrl+fpPxYDKWN3+0GrXXA647CvtJ
 xNeEhMC+xA+UmclcL/kyjyhDeB6hyYcuLzEfvI15anTDcm5BEiICY79cO
 TEVUQzjIET2u2qM4k5UZs4TnDtQdi+yohTcBJJCd310HVo5CBbn/AZD0U Q==;
X-CSE-ConnectionGUID: OCULwTzzT/OlsUPWghXDjw==
X-CSE-MsgGUID: Ct9Yk0XDTZarAdtesioCrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="74776569"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="74776569"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 09:10:19 -0800
X-CSE-ConnectionGUID: Slyr9WPCS9mkMWzl/9S0+g==
X-CSE-MsgGUID: hXWzaHjIQL+9jfglbQ6EyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187354703"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 09:10:17 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	stable@vger.kernel.org
Subject: [PATCH] drm/i915/psr: Reject async flips when selective fetch is
 enabled
Date: Wed,  5 Nov 2025 19:10:15 +0200
Message-ID: <20251105171015.22234-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The selective fetch code doesn't handle asycn flips correctly.
There is a nonsense check for async flips in
intel_psr2_sel_fetch_config_valid() but that only gets called
for modesets/fastsets and thus does nothing for async flips.

Currently intel_async_flip_check_hw() is very unhappy as the
selective fetch code pulls in planes that are not even async
flips capable.

Reject async flips when selective fetch is enabled, until
someone fixes this properly (ie. disable selective fetch while
async flips are being issued).

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_psr.c     | 6 ------
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 42ec78798666..10583592fefe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6020,6 +6020,14 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 		return -EINVAL;
 	}
 
+	/* FIXME: selective fetch should be disabled for async flips */
+	if (new_crtc_state->enable_psr2_sel_fetch) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] async flip disallowed with PSR2 selective fetch\n",
+			    crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
 		if (plane->pipe != crtc->pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 05014ffe3ce1..65d77aea9536 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1296,12 +1296,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (crtc_state->uapi.async_flip) {
-		drm_dbg_kms(display->drm,
-			    "PSR2 sel fetch not enabled, async flip enabled\n");
-		return false;
-	}
-
 	return crtc_state->enable_psr2_sel_fetch = true;
 }
 
-- 
2.49.1

