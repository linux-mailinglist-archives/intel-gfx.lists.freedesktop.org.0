Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE31997C7F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 07:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E0010E874;
	Thu, 10 Oct 2024 05:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RTHqSXIv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317D110E878;
 Thu, 10 Oct 2024 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728538473; x=1760074473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dJjAjikPyU3T0yDKvFtlnGP1qSs6wRJLbXqKVmVj/tA=;
 b=RTHqSXIvVyntP4eCb6G6RHnk7BaIMN3abPslMUtjyDO7Sf4NwmFbFItw
 7M5cF745xrGhRoHSEM8Ll+i1wTfM6ifJsge/FyjXD0XTXtwYM+28TRvjw
 4ONnVJ8SL2hZC+RnSfiu6UR9jKiwuM/YsJ9Xw5n+3NTLHBMw2fmkrIbFv
 oyVga3ONI9WNPELQLkobag6mlmumdsRkQGZWcTR3cKpDjE0CCVjPsogCZ
 unjAgtP6hTqU2c27hmaWoukpfbLAX3kq6HrO+mnECIPYprD3CBIx2WMIp
 Pt1xXntvCQPzr8yhdyJK1+dlwX7Lhj84sDf6KCXvTrZOFBRcjTmmRf9FX A==;
X-CSE-ConnectionGUID: KgAXlmi9RSiklEPCHWQ+5A==
X-CSE-MsgGUID: T42/dREQSqS9Wey6yOiwYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="30749373"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="30749373"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:33 -0700
X-CSE-ConnectionGUID: +NrZ+FpzTECwB9witIGxVA==
X-CSE-MsgGUID: qsoY14IeQLKGJELQM8CdUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76697324"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.162])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 22:34:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 7/7] drm/i915/display: Generate PSR frame change event on
 cursor update
Date: Thu, 10 Oct 2024 08:33:16 +0300
Message-Id: <20241010053316.1580527-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241010053316.1580527-1-jouni.hogander@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
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

On LunarLake and onwards we are using vrr send push mechanism to trigger
frame change event. Due to this we need to trigger it using
intel_vrr_psr_send_push provided by VRR code on legacy cursor update.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 050eacc709cc1..dc8629f843662 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -25,6 +25,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_vblank.h"
+#include "intel_vrr.h"
 #include "skl_watermark.h"
 
 /* Cursor formats */
@@ -790,6 +791,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_crtc_state *new_crtc_state;
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_vblank_evade_ctx evade;
 	int ret;
 
@@ -910,6 +912,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		intel_plane_disable_arm(plane, crtc_state);
 	}
 
+	if (crtc_state->has_psr)
+		intel_vrr_psr_send_push(display, crtc_state->cpu_transcoder);
+
 	local_irq_enable();
 
 	intel_psr_unlock(crtc_state);
-- 
2.34.1

