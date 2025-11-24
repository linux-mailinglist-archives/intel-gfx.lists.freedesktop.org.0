Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FF2C7F333
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 08:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649B010E1D4;
	Mon, 24 Nov 2025 07:38:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SxyuvHes";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0881010E1D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Nov 2025 07:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763969879; x=1795505879;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/6d9rkXCJFY/dnp2Imt0zR2do7jMmY+G/KQssFncji4=;
 b=SxyuvHesjavIUZhw4rmIAnVCKfQNIscyA2ml0XbrXFgrrnnNIm9EqyG+
 Hgo1Giw8PdB9Ot0aul5b6BIEUDS8HnmrAfxh0T3VBUfN08kwZx825kacT
 uMsShGwBu5N6ojvUndSxZ0/S/JZHRrq5JJJZPxVeVKFpeD8HNNHreV2Ti
 sZ0iniU5fXaEQYmfO5uEDRn8MQFYEJiy1OJ0j+H5M0dnaRvAgP0mJvcXJ
 hqSxlv9PE3oLHin5YQbKVfDTTcr8oYwivs70LU5CfGzcq1Fu4eelAuKIO
 UyG/7ywPUiCbejjQep8KB0WWteUc1yr+CBmORkK2cyAvsQmPi1Zt3grkm g==;
X-CSE-ConnectionGUID: r1RflNTnSWeQA6gFS9RWPw==
X-CSE-MsgGUID: xqnBEk8BSwyMRvDOnqnBbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="76575225"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="76575225"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 23:37:56 -0800
X-CSE-ConnectionGUID: e0CQhQJ6QpG2MePauXlv9A==
X-CSE-MsgGUID: oduqEi8xQ9eBik8Z/NrQ2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="215609406"
Received: from kunal-x299-aorus-gaming-3-pro.iind.intel.com ([10.190.239.13])
 by fmviesa002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2025 23:37:54 -0800
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Kunal Joshi <kunal1.joshi@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/dp: document DisplayPort link training design
Date: Mon, 24 Nov 2025 13:23:40 +0530
Message-Id: <20251124075340.662428-1-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
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

Add a top-level kernel-doc DOC block to intel_dp_link_training.c that
describes the overall DisplayPort/eDP link training design and flow.

No functional changes.
Signed-off-by: Kunal Joshi <kunal1.joshi@intel.com>
Suggested-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 115 ++++++++++++++++++
 1 file changed, 115 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index aad5fe14962f..e8efe4290e57 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -37,6 +37,121 @@
 #include "intel_hotplug.h"
 #include "intel_panel.h"
 
+/**
+ * DOC: DisplayPort link training
+ *
+ * Introduction
+ * ============
+ * This file implements DisplayPort/eDP link training on Intel platforms for
+ * both legacy 8b/10b (DP 1.4 era) and UHBR 128b/132b (DP 2.x). Training covers
+ * capability discovery, parameter selection, execution (CR/EQ or EQ/CDS), and
+ * fallback policy. While training runs, HPD is blocked to avoid races.
+ *
+ * Design goals
+ * ============
+ * * Choose the lowest-power tuple that satisfies bandwidth (SST), or the
+ *   highest budget (MST).
+ * * Prefer early retry on transient failures before reducing bandwidth.
+ * * Provide deterministic fallback order and terminal-failure flagging.
+ * * Keep HW state consistent (always restore patterns/idle state).
+ *
+ * Entry points
+ * ============
+ * * Modeset / initial enable: pick (rate, lanes), then train before enabling
+ *   the main link.
+ * * HPD IRQ retrain: status/adjust changes trigger a retrain.
+ * * CI / debug: failures can be forced; long HPDs may be ignored in CI.
+ *
+ * Capability probe & preparation
+ * ==============================
+ * 1. Detect LTTPRs (when platform AUX timing allows) and, if supported, switch
+ *    to non-transparent LT mode without toggling an *active* link.
+ * 2. Read DPRX DPCD caps: revision, max rate/lane, TPS, UHBR, FEC/DSC/SSC,
+ *    repeater count.
+ * 3. intel_dp_prepare_link_train computes link_rate, lane_count,
+ *    spread, and FEC/DSC policy. intel_dp_link_training_set_mode
+ *    sets 8b/10b vs 128b/132b before programming rate.
+ *
+ * Training sequences
+ * ==================
+ * UHBR (128b/132b)
+ * ----------------
+ * * Lane EQ: write TPS1 then TPS2; apply per-lane TX FFE as requested.
+ * * Interlane align check; then CDS phase (TPS2_CDS) to symbol lock.
+ * * Optional SDP CRC16 can be enabled afterward.
+ *
+ * Legacy 8b/10b
+ * -------------
+ * * Clock Recovery (TPS1): poll status; apply voltage swing + pre-emphasis.
+ * * Channel EQ (TPS2/3/4): source/sink dependent; check EQ, symbol lock, and
+ *   interlane alignment; then exit patterns.
+ *
+ * Policy: configuration selection & fallback
+ * ==========================================
+ *
+ * SST
+ * ---
+ * Start at the *minimum* bandwidth tuple that fits the stream. On failure:
+ *
+ * 1) Reduce link_rate to the next lower supported value (down to RBR).
+ * 2) If rates are exhausted and lanes > 1, halve lane_count and reset rate to
+ *    the *maximum* supported; signal userspace to modeset and retry.
+ * 3) If neither can be reduced → terminal failure.
+ *
+ * MST
+ * ---
+ * Start at the *maximum* bandwidth tuple (max rate + lanes). On failure:
+ * reduce configuration in effective-bandwidth order
+ * (reduce_link_params_in_bw_order), signal userspace to modeset and
+ * retry; after success at lower BW, recompute VC payloads and down-bin/drop
+ * streams if needed.
+ *
+ * eDP
+ * ---
+ * Prefer panel/VBT-preferred tuple; otherwise minimum bandwidth within panel
+ * limits. On failure, consult intel_dp_can_link_train_fallback_for_edp
+ * to decide whether fallback is allowed and if it is rate-only. If disallowed
+ * → terminal failure; otherwise iterate allowed tuples.
+ *
+ * Cross link-layer fallback
+ * -------------------------
+ *
+ * UHBR → HBR (128b/132b → 8b/10b) is considered only if:
+ *
+ * * Sink supports both layers and at least one HBR rate,
+ * * All UHBR rates are exhausted,
+ * * Required bandwidth fits an HBR tuple with current FEC/DSC policy,
+ * * Platform allows link-layer switching.
+ *
+ * Call flow (summary)
+ * ===================
+ *
+ * #. Block HPD.
+ * #. Detect LTTPR / read DPRX caps → prepare params.
+ * #. Branch: UHBR (EQ→CDS) or 8b/10b (CR→EQ).
+ * #. On success: clear failure counter, stop training.
+ * #. On failure: update counter → early retry or schedule fallback via modeset.
+ *
+ * Debugging interfaces (per-connector debugfs)
+ * ============================================
+ *
+ * * i915_dp_force_link_rate: pin specific rate or auto.
+ * * i915_dp_force_lane_count: pin lane count (1/2/4) or auto.
+ * * i915_dp_max_link_rate / i915_dp_max_lane_count: current ceilings.
+ * * i915_dp_force_link_training_failure: inject up to 2 failures.
+ * * i915_dp_force_link_retrain: trigger retrain via IRQ.
+ * * i915_dp_link_retrain_disabled: show terminal-failure state.
+ *
+ * Notes
+ * =====
+ *
+ * * Do not change LTTPR transparent/non-transparent mode on an *active* link.
+ * * Pre-DP 1.4 devices use a tolerant CR retry ceiling to avoid infinite loops.
+ * * TPS selection follows source+sink capabilities (TPS2/3/4 for 8b/10b;
+ *   128b/132b-specific TPS for UHBR).
+ *
+ */
+
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
 #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
 					(_intel_dp)->attached_connector->base.name, \
-- 
2.25.1

