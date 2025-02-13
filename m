Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C51CA3382E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 07:48:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4036610EA1C;
	Thu, 13 Feb 2025 06:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fyto5JDa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EBE10EA1B;
 Thu, 13 Feb 2025 06:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429315; x=1770965315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+VsBnNzpaWj4YQHAqFZUKTQcX1JErgWOfCVlJJgoZ0=;
 b=fyto5JDa00eMhxJXc4zVtpw6irDZWx/0ZphDBnZ0alcQJ9+pbD0ETK5D
 lyAKbbnoYoj0EZ8aJtNZlRbiCQ6s7aNV4cvX1mAufA2FmHsr2N91kjCqD
 ORConclGhJPDIuW9fhy15mpi1z3UzdsJf4OPulOnnNAevfo4KegeNdw4Y
 ZFfPHUKBXPSEznqO7Jrsl7WmuIRa8S7ChB5q3TpQcJOCKI26wpB4wsJgt
 Pc+sW6+Ou8kIMxJwOWUWzwxnS4gVLtBb16qhBqRDbPErxmQPvnYe9Ryrg
 OCprXWf+M6Vxz0Uml1n13pgGy8Q/KMZTbbyS6rhKbCAfUhaR3pZyD1yKf A==;
X-CSE-ConnectionGUID: ojdlU+k1SqG0Wi0dMbOHVA==
X-CSE-MsgGUID: 7K/L87R1QViwKFZkjLgf4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50764125"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50764125"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:33 -0800
X-CSE-ConnectionGUID: 5r7XhMPUSDmO85LayRQkrw==
X-CSE-MsgGUID: z0j4rutmT7y7U/Bm13c2qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118237283"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.234])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:31 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v8 10/13] drm/i915/display: Evade scanline 0 as well if PSR1
 or PSR2 is enabled
Date: Thu, 13 Feb 2025 08:48:01 +0200
Message-ID: <20250213064804.2077127-11-jouni.hogander@intel.com>
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

PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
wake-up scanline counting starts from vblank_start - 1. We don't know if
wake-up is already ongoing when evasion starts. In worst case PIPEDSL could
start reading valid value right after checking the scanline. In this
scenario we wouldn't have enough time to write all registers. To tackle
this evade scanline 0 as well. As a drawback we have 1 frame delay in flip
when waking up.

v2:
  - use intel_dsb_emit_wait_dsl
  - add evasion of scanline 0 also for Panel Replay

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 4c067bf9ac4c..9fc4003d1579 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -564,6 +564,18 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
 	int start, end;
 
+	/*
+	 * PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
+	 * wake-up scanline counting starts from vblank_start - 1. We don't know
+	 * if wake-up is already ongoing when evasion starts. In worst case
+	 * PIPEDSL could start reading valid value right after checking the
+	 * scanline. In this scenario we wouldn't have enough time to write all
+	 * registers. To tackle this evade scanline 0 as well. As a drawback we
+	 * have 1 frame delay in flip when waking up.
+	 */
+	if (crtc_state->has_psr)
+		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
+
 	if (pre_commit_is_vrr_active(state, crtc)) {
 		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
 
-- 
2.43.0

