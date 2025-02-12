Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E256A3206F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0476910E7F2;
	Wed, 12 Feb 2025 07:58:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cBAXzkVr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1795510E7F4;
 Wed, 12 Feb 2025 07:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347093; x=1770883093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h/0KXOBQIXwpzqYp10LcaFuBVBYL0LKhEjPYDxtRxvA=;
 b=cBAXzkVrzenCirmoXTXesV8rcfVmnbMB366IzFC3osPFxpmDTYPHjvoG
 wpZPD3GT+Nu+r79HmlIbYnkfaAI1qei5Akw0mDqflTyGd7U18ZWYZoy4m
 +yHQ9EJbmPgUISG6RJl4mqifI3gCoxTpt88f3fUItE2unfFPuF3p+N+v5
 mv+EJdeELu1ZIelCxHZKgqHKBy6Ki60W2ffH4EarZdpYHQ0bzceQfXWq5
 tgV/d9hxbbBoxa50Mt2iIbwwJmS+zU8bxzHkUHqXujmG+QoyqoZcfRdce
 3eQRicJnVegKxPArrMKrdGWQGxfIK5pEvqTjyAkUXU75ATMNJvRyblIac w==;
X-CSE-ConnectionGUID: GIF+7mcCRk+noayc9S2vpA==
X-CSE-MsgGUID: bPRV9gi+S32quSc0Iybvig==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973655"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973655"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:12 -0800
X-CSE-ConnectionGUID: r6HnNiLFRBuWAStE1I6wDw==
X-CSE-MsgGUID: J9rN5ZOYRxOY+t3gqZSp+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836946"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:11 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v7 12/13] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Date: Wed, 12 Feb 2025 09:57:41 +0200
Message-ID: <20250212075742.995022-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
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

We may have commit which doesn't have any non-arming plane register
writes. In that case there aren't "Frame Change" event before DSB vblank
evasion which hangs as PIPEDSL register is reading as 0 when PSR state is
SRDENT(PSR1) or DEEP_SLEEP(PSR2). Handle this by ensuring "Frame Change"
event at the begin of DSB commit if using PSR/PR.

v3: dsb_commit as a first parameter
v2: use intel_psr_trigger_frame_change_event

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 79b8d2ad3b9c..0ba85623835c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7742,6 +7742,14 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
 					       state, crtc);
 
+		/*
+		 * Ensure we have "Frame Change" event when PSR state is
+		 * SRDENT(PSR1) or DEEP_SLEEP(PSR2). Otherwise DSB vblank
+		 * evasion hangs as PIPEDSL is reading as 0.
+		 */
+		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
+						     state, crtc);
+
 		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
-- 
2.43.0

