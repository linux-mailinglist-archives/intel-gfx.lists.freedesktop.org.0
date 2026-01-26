Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uP4CLS8fd2ntcQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 09:00:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8D185345
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 09:00:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E508E10E3AF;
	Mon, 26 Jan 2026 08:00:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9sVDDK3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C2A10E3AB;
 Mon, 26 Jan 2026 08:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769414445; x=1800950445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yk3PGSqnx0Cg5Rn6D06Kx9lmaCK8Ad0bXxWcolUihcc=;
 b=A9sVDDK31dtRxgVcVwhQJw4BOmON/3IEEQbFeh3KkPqh+i6Nvn8kOyBF
 dZhnwCCcW1vblcsQWusguY+t3KAWbW6aCz0+rdUR8nADr7hz/EJHRugwT
 LqyC2x1D0K0LpEebG5ugwarz5UHrl5JFgQ0usxuxGrDVnaxGB5IeqIIsM
 inVkRn/6kaCLY+MsLEohW0gIJQchILn/Z3/0xwVGvdZ1mM6FXaVtLYKUi
 I2AlMzO8M9UADCuHzqKG2POQ1In6EJeha4td3E8qCwIGxRFxzZmS01Z+A
 1f6APH0aozPAdpE5qjTAUnwoaYqMPKEVLy0eJVPHpNcrUgYQZMBEKz+VO A==;
X-CSE-ConnectionGUID: QEzARdluQ568i4uaYJpa4Q==
X-CSE-MsgGUID: l0xIkEUrSzCebjis/XK1tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="70682859"
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="70682859"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 00:00:45 -0800
X-CSE-ConnectionGUID: yOTXgrppQZiSqRr+Bk5opw==
X-CSE-MsgGUID: rSeDJpPBTf2do/gzAaVKjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="207867704"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.56])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 00:00:43 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v10 07/10] drm/i915/psr: Wait for idle only after possible
 send push
Date: Mon, 26 Jan 2026 09:59:56 +0200
Message-ID: <20260126075959.925413-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126075959.925413-1-jouni.hogander@intel.com>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
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
X-Rspamd-Server: lfdr
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6A8D185345
X-Rspamd-Action: no action

We are planning to move using trans push mechanism to trigger the Frame
Change event. In that case we can't wait PSR to idle before send push
happens. Due to this move wait for idle to be done after possible send push
is done.

This should be ok for Frame Change event triggered by register write as
well. Wait for idle is needed only for corner case where PSR is
transitioning into DEEP_SLEEP when Frame Change event is triggered. It just
has to be before wait for vblank. Otherwise we may have vblank before PSR
enters DEEP_SLEEP and still using old frame buffers for first frame after
wake up.

v2: some typos fixed

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b47c9d3d0d85..d7267c926c40 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7357,9 +7357,6 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
-		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
-					    new_crtc_state);
-
 		if (new_crtc_state->use_dsb)
 			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
@@ -7399,6 +7396,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 
+		/*
+		 * Wait for idle is needed for corner case where PSR HW
+		 * is transitioning into DEEP_SLEEP/SRDENT_OFF when
+		 * new Frame Change event comes in. It is ok to do it
+		 * here for both Frame Change mechanism (trans push
+		 * and register write).
+		 */
+		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
+					    new_crtc_state);
+
 		/*
 		 * In case PSR uses trans push as a "frame change" event and
 		 * VRR is not in use we need to wait vblank. Othervise we may
-- 
2.43.0

