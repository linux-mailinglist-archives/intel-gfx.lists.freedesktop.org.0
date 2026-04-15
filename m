Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOsoMHj932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE90407E43
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D672210E751;
	Wed, 15 Apr 2026 21:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xo55/INe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99F310E751;
 Wed, 15 Apr 2026 21:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776287088; x=1807823088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+F/Mh8hUtG1x16HTVJ5WFantGv11rI9/q/DoK0YafFQ=;
 b=Xo55/INe40Ll/F9ctm+OSkhKh9RXg+02m+xzyzeiqM8RqfwtXsxNPoah
 S8MaG9ZlW4xJ+6cEJJiECIZKd4HPPEi8UYhiRc1FvyBOVzf8Fb9mdsK26
 ULjutwwYHeIMcGRZtxRaQT0O4E81DRDeha//mAbuHb2Mk8abNlZ7G6Obh
 HSJU+4nzBXRAvJe6Okawkq1/CCERHiJ4SQm40rrS4algwzOG44OJYXnKg
 kx4DuOV7CWUS85RCKBJbltg8wlmVBiryZpKHjK/T/xyv9ZCEVpkQtgYte
 XEILVUM1TwTi0aKBEUVwXvsXD1CNAs1aN7hhNxlDpKyO7nE0+XI2+1vT3 w==;
X-CSE-ConnectionGUID: uvaBtMXASyK1yOPgGzs2WA==
X-CSE-MsgGUID: 9ZMxLXPDRsKhTuCHg9UsjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="99926324"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="99926324"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:48 -0700
X-CSE-ConnectionGUID: lVXCAj4PRPqYkpj8L1FcyA==
X-CSE-MsgGUID: jXaloJfkTOyC5rwD0IUGeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="234561934"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:47 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 7/7] drm/i915/reset: Disable execlist per-engine reset for
 display reset tests
Date: Thu, 16 Apr 2026 00:04:11 +0300
Message-ID: <20260415210411.24750-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
References: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5AE90407E43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The display reset only happens from the full reset path. We must
therefore force execlist submission to always take the full reset
path and not the per-engine reset path. Currently the display
reset tests are in fact not testing display resets at all on
platforms using execlist submission. Ring submission and GuC
submission always take the full path anyway.

Also disable the engine reset inside __intel_gt_set_wedged() so
that we simulate the intel_gt_gpu_reset_clobbers_display() behavior
as closely as possible also when taking the full wedge path.

The slight race between the separate intel_display_reset_test()
calls in the overall reset path is harmless. kms_busy will keep
the modparam fixed during the test, and even if someone were to
fiddle with the modparam manually nothing bad should happen if
the calls return different values.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index a1e6aaca8c9b..0b5f3fc58009 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -967,6 +967,7 @@ static void nop_submit_request(struct i915_request *request)
 
 static void __intel_gt_set_wedged(struct intel_gt *gt)
 {
+	struct intel_display *display = gt->i915->display;
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t awake;
 	enum intel_engine_id id;
@@ -984,7 +985,8 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 	awake = reset_prepare(gt);
 
 	/* Even if the GPU reset fails, it should still stop the engines */
-	if (!intel_gt_gpu_reset_clobbers_display(gt))
+	if (!intel_gt_gpu_reset_clobbers_display(gt) &&
+	    !intel_display_reset_test(display))
 		intel_gt_reset_all_engines(gt);
 
 	for_each_engine(engine, gt, id)
@@ -1506,9 +1508,10 @@ void intel_gt_handle_error(struct intel_gt *gt,
 
 	/*
 	 * Try engine reset when available. We fall back to full reset if
-	 * single reset fails.
+	 * single reset fails. Display reset test needs a full reset.
 	 */
-	if (!intel_uc_uses_guc_submission(&gt->uc) &&
+	if (!intel_display_reset_test(gt->i915->display) &&
+	    !intel_uc_uses_guc_submission(&gt->uc) &&
 	    intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
 		local_bh_disable();
 		for_each_engine_masked(engine, gt, engine_mask, tmp) {
-- 
2.52.0

