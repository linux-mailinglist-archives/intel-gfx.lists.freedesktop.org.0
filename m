Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD00A33830
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 07:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 476C210EA16;
	Thu, 13 Feb 2025 06:48:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SKWfHXXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4C3A10EA17;
 Thu, 13 Feb 2025 06:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429318; x=1770965318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CVv82TV7cOFKrb8wxUovYgI9t2qQiTkDOaLDI+wlEBw=;
 b=SKWfHXXlXxy/osYfxncS3erDwibOWYAbUoV7zSAAJz1ouCGIb+2ZuyTL
 7N6TfxIgkZ/RIaTWn0pYXpWkhqKzBOwFzWJhH9p8v+fPxOWdmMgyP4ZXM
 HkOYLnyN4ticBoyvLSDygqX8q+1cwIGC7Ywko0uqYukKjCT/vDvEhz8ti
 LseLepsfumL/CZ3ItKILT1iCFcHVqwj6Y5DRXO3BSeMACtVGe7gQ/uVbk
 lfMgN7ZZRsMEPsZ5tDT+dptUl7Ja414p4gRiKU5nWfNQWXvDdQ+B0B2zY
 MC2qaXclfqKHou/RQLnnN/Ilw//XFFO0I2z8B42V5WW75WoIiCQXh8gBg g==;
X-CSE-ConnectionGUID: qclP4vDdSX+eVM+1y0/o+w==
X-CSE-MsgGUID: bZHg0+FgRnW/1MgNULZrFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50764145"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50764145"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:38 -0800
X-CSE-ConnectionGUID: I8a7pxsaTRWSFKW0vfb+ZA==
X-CSE-MsgGUID: 53/fHe8uTcyFHtpQxCgqqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118237322"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.234])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:48:35 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v8 12/13] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Date: Thu, 13 Feb 2025 08:48:03 +0200
Message-ID: <20250213064804.2077127-13-jouni.hogander@intel.com>
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
index dbb8dc318471..f0cfd291eba5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7737,6 +7737,14 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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

