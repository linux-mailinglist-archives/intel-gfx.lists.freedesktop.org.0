Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEuQNZQWFGqFJgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:29:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4FC5C89A6
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCDC10E02E;
	Mon, 25 May 2026 09:29:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z4XGkVHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A072710E023
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 09:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779701392; x=1811237392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1HeWvyoozWdvPsHXI9p9uCC3TMSszMx74+xZHpL3R0s=;
 b=Z4XGkVHhqJc6hwt0bbFUUomHM8o9kT/zava/yK9LuTqJLAc2wG8rl9yW
 Gnzw7pjpsE5Vdx6S9YSEiQBaUubjaQsK1awq5F2AzgATmNTUrxtLWHmHE
 Z0DN64fhK0D7Z7706oASgsAqk6N+AknUyoBDnYaxV3xrQucMeEj8pe51v
 jHUyT7QG0uneAM3RRnSb1Q6rVUIXH1uaYx/Ckm3ZHk5123ol3UIk4OlR1
 ZwMfL503bt7BiXAz8n90r7iMXX5SV2IotL65XbyOg7/GHypsZWfazb2e9
 2tzN0kOj8wXoYkcce6eSujEhjJ5kBnLrdBx5faA2Ao97TlUJVx9CZk5Se w==;
X-CSE-ConnectionGUID: XDcMCrmoT0axD1o5BnNRPA==
X-CSE-MsgGUID: L74FuYDRQFqR+eVjcZB3tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="84373778"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="84373778"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:29:51 -0700
X-CSE-ConnectionGUID: E5IMPoPYTKWfEoTI8wX3jA==
X-CSE-MsgGUID: 19c4IB1NSJusoy2kGhU5ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="241418192"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:29:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/2] drm/i915/dsb: wait one scanline before delayed-vblank DSL
 wait
Date: Mon, 25 May 2026 14:41:58 +0530
Message-ID: <20260525091159.564066-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260525091159.564066-1-ankit.k.nautiyal@intel.com>
References: <20260525091159.564066-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: AC4FC5C89A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In intel_dsb_wait_for_delayed_vblank() the VRR path issues a
WAIT_DSL_OUT(safe_window_start, vmin_safe_window_end) followed by a
WAIT_USEC for SCL+1 scanlines to land on the delayed vblank.

Experimentally, when PIPEDSL is exactly at safe_window_start as the
WAIT_DSL_OUT is reached, the wait is skipped and the DSB falls
through immediately. The following WAIT_USEC then runs from too
early a reference and the DSB interrupt (flip-done event) fires
roughly one frame ahead of the delayed vblank.

Wait one scanline first so PIPEDSL has moved into the window before
WAIT_DSL_OUT runs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fec8a56e21ea..dae8ea33d069 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -902,7 +902,15 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
 		 * the hardware itself guarantees that we're SCL lines
 		 * away from the delayed vblank, and we won't be inside
 		 * the vmin safe window so this extra wait does nothing.
+		 *
+		 * Experimentally, when PIPEDSL is exactly at
+		 * safe_window_start as the next WAIT_DSL_OUT is reached,
+		 * the wait is skipped immediately.
+		 *
+		 * Wait one scanline first so PIPEDSL has moved into the
+		 * window before WAIT_DSL_OUT runs.
 		 */
+		intel_dsb_wait_usec(dsb, intel_scanlines_to_usecs(adjusted_mode, 1));
 		intel_dsb_wait_scanline_out(state, dsb,
 					    intel_vrr_safe_window_start(crtc_state),
 					    intel_vrr_vmin_safe_window_end(crtc_state));
-- 
2.45.2

