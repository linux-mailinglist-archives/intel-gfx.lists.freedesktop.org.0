Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4AAAB9B21
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFDE10EA65;
	Fri, 16 May 2025 11:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cmEu5xrl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED8710EA64;
 Fri, 16 May 2025 11:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395265; x=1778931265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wfB4kyx/cgqg4ilICWHgccRgpc+BbSsy9b+QFkKO4FM=;
 b=cmEu5xrlk7EO0FwP7DnXAI5+MxVSegfiHnvfbRO2NSjFS+VwjiYpmXO7
 b0ujOsPpY2dZFGL9hWz8hy70nsAh6xp9TuQYO3zZCUY/c+tdedQKLPT0v
 FUwBIgw28BPxe0RcxapGI7OXCZTp+nId8c0BDh5I5O5KX90+4Aujl8Arp
 oc+LkbTrFTb9tLoJ+NGR32hriPX1F52+Ztqn0RPlFuGA1KDlJLfEF3KeG
 cyaeWOpNDKah9Jykr7FNZhOkOl6rTB7BFTZEmxd6mFugJP+LdIzy9cEMW
 Qn5DU3a/6ubW+uAYZ/l0Qo4u5WV+0sudZu5cddvCFc0v1EliMup8b7tZt A==;
X-CSE-ConnectionGUID: EOiQX4gwS1iag6HQ2XneTg==
X-CSE-MsgGUID: iH/PZkEsQROiBm9Vv/JfoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349812"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349812"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:25 -0700
X-CSE-ConnectionGUID: g0VbUWevS52a2Ea27I4TgA==
X-CSE-MsgGUID: AEVnoVIdS0G92TduWqxXRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779521"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915/dsb: Extract intel_dsb_{head,tail}()
Date: Fri, 16 May 2025 14:34:00 +0300
Message-ID: <20250516113408.11689-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Extract the code that calculates the DSB_HEAD/TAIL register
values into small helpers. We already have two copies of this,
and soon there will be a third.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index b7d11eb1ce80..b54fb6170364 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -237,6 +237,16 @@ static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
 	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
+static unsigned int intel_dsb_head(struct intel_dsb *dsb)
+{
+	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
+}
+
+static unsigned int intel_dsb_tail(struct intel_dsb *dsb)
+{
+	return intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + dsb->free_pos * 4;
+}
+
 static void intel_dsb_ins_align(struct intel_dsb *dsb)
 {
 	/*
@@ -627,7 +637,6 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state->base.dev);
 	struct intel_crtc *crtc = dsb->crtc;
 	enum pipe pipe = crtc->pipe;
-	u32 tail;
 
 	if (drm_WARN_ON(display->drm, dsb->id == chained_dsb->id))
 		return;
@@ -635,8 +644,6 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	if (!assert_dsb_tail_is_aligned(chained_dsb))
 		return;
 
-	tail = chained_dsb->free_pos * 4;
-
 	intel_dsb_reg_write(dsb, DSB_CTRL(pipe, chained_dsb->id),
 			    ctrl | DSB_ENABLE);
 
@@ -657,10 +664,10 @@ static void _intel_dsb_chain(struct intel_atomic_state *state,
 	}
 
 	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
-			    intel_dsb_buffer_ggtt_offset(&chained_dsb->dsb_buf));
+			    intel_dsb_head(chained_dsb));
 
 	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
-			    intel_dsb_buffer_ggtt_offset(&chained_dsb->dsb_buf) + tail);
+			    intel_dsb_tail(chained_dsb));
 
 	if (ctrl & DSB_WAIT_FOR_VBLANK) {
 		/*
@@ -705,13 +712,10 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	struct intel_crtc *crtc = dsb->crtc;
 	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u32 tail;
 
 	if (!assert_dsb_tail_is_aligned(dsb))
 		return;
 
-	tail = dsb->free_pos * 4;
-
 	if (is_dsb_busy(display, pipe, dsb->id)) {
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d is busy\n",
 			crtc->base.base.id, crtc->base.name, dsb->id);
@@ -729,7 +733,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			  dsb_error_int_en(display) | DSB_PROG_INT_EN);
 
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
-			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
+			  intel_dsb_head(dsb));
 
 	if (hw_dewake_scanline >= 0) {
 		int diff, position;
@@ -751,7 +755,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	}
 
 	intel_de_write_fw(display, DSB_TAIL(pipe, dsb->id),
-			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
+			  intel_dsb_tail(dsb));
 }
 
 /**
-- 
2.49.0

