Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB4oH81L1ml8DQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:36:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232C93BC351
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:36:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4545A10E636;
	Wed,  8 Apr 2026 12:36:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eY02agFc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 919DC10E631;
 Wed,  8 Apr 2026 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775651786; x=1807187786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sG3+FkpfiFVHa1w8+mVl0fyAEP7CXuTUmLL6F3zYpWc=;
 b=eY02agFcTLdTXyuC6D6aXGBWntNDFaiNsZp/TLLx9y/i0F/VgTVMitc+
 L78o2/Jx82bLr3FNKy2tGVk8JZHjEOFH3XPCmFjHAvL7brfMzwyBV0Vxs
 jKuusT5DNP5vmsdjeDbPp+lG/+nyE0ilUZmJder2QWK2pMHaFO3ZrC5a/
 hYLIk0Ue1YHcvnbAPp0QRJDBpQuPLMVuU2wVuoNt8XI6Vbbj1xQjtDAAv
 89e8PqkygVuFYk2fg5hJmvDhgsKarSjN4aH0NVK4P9MuCavmIe0/odT4D
 tA1ufhAFTE7Z9j4mAOM2ccAFip1ClY36YM/1R2zPfRL5rEPVs7ofFqZAi A==;
X-CSE-ConnectionGUID: WmHgRGqDQdGXKxtrOs8rww==
X-CSE-MsgGUID: w+JhDOOIR+SAVzi3EYLwBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="88016855"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="88016855"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:58 -0700
X-CSE-ConnectionGUID: loyNrQ8uSrOQjQY1g4p4yw==
X-CSE-MsgGUID: aq8db6L+T1i1a2QEChF7nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="224159198"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 05:31:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 8/9] drm/i915/cdclk: Use a more optimal min_cdclk for
 vblank length check
Date: Wed,  8 Apr 2026 15:31:13 +0300
Message-ID: <20260408123115.15716-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
References: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 232C93BC351
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Adjust intel_cdclk_prefill_adjustment() to give out a potentially more
optimal value, purely based on the final minimum CDCLK (also considering
planes/pfit/etc.) for the current pipe. We can't actually check against
the current CDCLK frequency as that might be much higher due to some
other pipe, and said other pipe might later reduce the CDCLK below
what the current pipe would find acceptable (given which WM levels
are enabled). Ie. we don't consider any global constraints (other
pipes, dbuf bandwidth, etc) on the mimimum CDCLK frequency here.

We must also make sure crtc_state->min_cdclk doesn't exceed the
platform max or else _intel_cdclk_prefill_adj() will get confused
when trying to find the corresponding platform specific cdclk
frequency.

v2: check min_cdclk against platform max

Reviewed-by: Luca Coelho <luciano.coelho@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 17 +++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++++++
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8feba2e0333b..9a9b86769118 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -4225,8 +4225,21 @@ static unsigned int _intel_cdclk_prefill_adj(const struct intel_crtc_state *crtc
 
 unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 {
-	/* FIXME use the actual min_cdclk for the pipe here */
-	return intel_cdclk_prefill_adjustment_worst(crtc_state);
+	int clock = crtc_state->hw.pipe_mode.crtc_clock;
+	int min_cdclk;
+
+	/*
+	 * Only consider the current pipe's minimum cdclk here as a safe
+	 * lower bound. This must *not* be based on the actual/logical cdclk
+	 * frequency here as that may get reduced later due to eg. a modeset
+	 * on a different pipe, and that would completely invalidate the
+	 * guardband length checks we did on this pipe previously. That
+	 * could lead to prefill exceeding the guardband which would result
+	 * in underruns.
+	 */
+	min_cdclk = crtc_state->min_cdclk;
+
+	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
 }
 
 unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 37df9676a207..3b13f08bb417 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5819,6 +5819,12 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 		int ret;
 
 		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
+		if (new_crtc_state->min_cdclk > display->cdclk.max_cdclk_freq) {
+			drm_dbg_kms(display->drm, "[CRTC:%d:%s] required cdclk (%d kHz) exceeds max (%d kHz)\n",
+				    crtc->base.base.id, crtc->base.name, new_crtc_state->min_cdclk,
+				    display->cdclk.max_cdclk_freq);
+			return -EINVAL;
+		}
 
 		if (DISPLAY_VER(display) >= 9) {
 			ret = intel_atomic_setup_scalers(state, crtc);
-- 
2.52.0

