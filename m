Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBsBGZUWFGo4JgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:29:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DE35C89AC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 11:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228CC10E065;
	Mon, 25 May 2026 09:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="faT6yeFd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BC7D10E02E
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779701393; x=1811237393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9pJDfanPTyQeA/2EkL9J0UR4TAsCppTDlSwKsY84kT8=;
 b=faT6yeFd03yU3v0A18esf/QypGx581SluybSKhNpjRar64WUx05UcWSQ
 HByS8uuArZHdUit9T4AfNNBlUe0DDzPhLvHQU/vKJXaftUZi9/1r/A9lr
 1B/v64sJN3VuwmrJ8RAfcbzzyrQwAUsH5Zb0MF5QcBo8toYYJIpMeZI4t
 LkYJP64Lu+uTZGpwugz7QJscFl9yHnx/8Y7fpPnDb9PjFtSpeLo0H+fu+
 HNbT4IHj+Eu/3eqvFQUgIkFihwWF3SzTvb366Dz42sg5qBDxco83TLj8s
 r8ewVqJSREMV+yukJpIn0ZDFriBAH6l2IttstSvDw5lvO/lMfZ/hi1xxZ g==;
X-CSE-ConnectionGUID: 0/qq0o7JSXy5s6GquM5BRw==
X-CSE-MsgGUID: wdJ0nKWuQM6k4ROkMOKe2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="84373781"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="84373781"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:29:53 -0700
X-CSE-ConnectionGUID: 6B5YWCNfQlifbGmXO8qVbQ==
X-CSE-MsgGUID: n9EalIJ/RhmytJgy2LLCKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="241418199"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 02:29:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/dsb: handle always_use_vrr_tg in
 pre_commit_is_vrr_active()
Date: Mon, 25 May 2026 14:41:59 +0530
Message-ID: <20260525091159.564066-3-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 39DE35C89AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the VRR timing generator is always used, the hardware behaves
as VRR-active regardless of crtc_state->vrr.enable. Return true
early so DSB picks the VRR path for chicken bits and the delayed
vblank wait.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dae8ea33d069..6cbbd23f7327 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -154,11 +154,15 @@ static void dsb_buffer_flush_map(struct intel_dsb *dsb)
 static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
+	if (intel_vrr_always_use_vrr_tg(display))
+		return true;
+
 	/* VRR will be enabled afterwards, if necessary */
 	if (intel_crtc_needs_modeset(new_crtc_state))
 		return false;
-- 
2.45.2

