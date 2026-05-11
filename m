Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2zUgLkJLAWqnUAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 05:21:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B27507913
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 05:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B493010E47E;
	Mon, 11 May 2026 03:21:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M9Kuk9+u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5111410E47B;
 Mon, 11 May 2026 03:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778469694; x=1810005694;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JfH4eUXBbXm1Ti6a1y4NOnZ5GqQfJf6fuJRioJfza4E=;
 b=M9Kuk9+u0UNVAhOkeCt4JJMfI78sdhB62HQHpnyqP0PaXqBJveDChrHd
 /voSbVI+2zsc59PJJChR55WJ3BiDdQvk3s3o8YF2ltD1+jhuo7wfS2jZq
 qE34SnSWcdvP1D/Kx33HgtAaeU6FeGZ25wXAMzhzmZBd242WhS3EV2Pot
 lPRCbnPVF+3jYIDJMePjEGOcwn1hVmAJ4TenoYaMMitqlSa2APns2bxZ1
 RUwPadmRS+PwqOjs1/O/KR0oAhLSA33Kr3iVCiwAi3GqPJcBq2+xXzXkA
 o0yB9i25qZjKAqlmoLRii15s5kAmsE36V8J4uXLD92LXsq6Dqk92ZXG5I A==;
X-CSE-ConnectionGUID: 9LIDqsWaQGatfkk1au7JgA==
X-CSE-MsgGUID: 1zV9iHlaS5OzOApH+jDgtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="96917110"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="96917110"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 20:21:34 -0700
X-CSE-ConnectionGUID: 8XOG73MpQAO736Hp+omqDQ==
X-CSE-MsgGUID: qK2fhH7STliWBbtfL9IM1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="260796676"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa002.fm.intel.com with ESMTP; 10 May 2026 20:21:32 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, imre.deak@intel.com, ville.syrjala@intel.com,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/i915/dp: On DPCD read failure skip LT
Date: Mon, 11 May 2026 08:50:07 +0530
Message-Id: <20260511032007.104081-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 00B27507913
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

The commit e42e7e585984 ("drm/i915: Fix modesetting in case of
unexpected AUX timeouts") continue the LT even if DPCD read failed.

But doing so will blot the dmesg with multiple AUX Tx errors, so skip
the LT but continue the modeset seq for the reason said in the above
mentioned patch.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f78..2598e4ba9712 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1776,9 +1776,12 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 
 	lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
 
-	if (lttpr_count < 0)
-		/* Still continue with enabling the port and link training. */
-		lttpr_count = 0;
+	if (lttpr_count < 0) {
+		/* skip LT but complete the modeset seq */
+		lt_dbg(intel_dp, DP_PHY_DPRX,
+		       "Reading LTTPR/DPRX caps failed, skip LT\n");
+		goto retry;
+	}
 
 	intel_dp_prepare_link_train(intel_dp, crtc_state);
 
@@ -1795,6 +1798,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
+retry:
 	intel_dp->link.seq_train_failures++;
 
 	/*
-- 
2.25.1

