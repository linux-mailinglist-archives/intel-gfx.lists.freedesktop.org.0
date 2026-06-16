Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XBpfI354MWq0kAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39092692049
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 18:23:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aKgvUtfW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB8C10ECB7;
	Tue, 16 Jun 2026 16:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173DC10ECB7;
 Tue, 16 Jun 2026 16:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781627003; x=1813163003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/LpaxW5YFPVTMKPN0RdEBXimE8nCtqj+z3aOiloRgxw=;
 b=aKgvUtfWZWnsDCBHJoG62nt6FmzMpSDMUXquVg33t26DZqRg8/q8lyXS
 6P5MbNicpzenJmrEWVnRH/96VFRGdgC9Q8WXxfcWtRMDEQiVHV/3XIGc+
 8WW/ML6NlGf+dNOOI46UZa9I5o4RXIW2yXK1bJCdBclOmWVxFYsA5p6Jh
 KwYABay1BfY/g6nqrrdrXb/EzcGtyHM4OSr66G6Q2Ss0ytccMJNwuJsJ9
 lWZKaAqUB5skFbskIsMERRI1PkV1WbTRQHfDojMLgUmUS2jGoif4cYmQr
 TkYzA00Om8BSrhncYXqrFwaX+nGcY9pIbG6IFknSQPUYzK13V7Vlf52x+ Q==;
X-CSE-ConnectionGUID: 3VUera82RE2yk/ORPtraJQ==
X-CSE-MsgGUID: 9PKNPGWzSxCXrjjfILD1qA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93781320"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93781320"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:23 -0700
X-CSE-ConnectionGUID: QQ1/NjOJS5uRCmHrd3DHEg==
X-CSE-MsgGUID: mywvh8U4T/acJovQmyRR0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247693526"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 09:23:22 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, animesh.manna@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v6 09/16] drm/i915/display: Store DC3CO eligibility in PSR
 state
Date: Tue, 16 Jun 2026 21:51:47 +0530
Message-ID: <20260616162154.2630995-10-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39092692049

Store DC3CO eligibility in intel_dp->psr during
intel_psr_post_plane_update() so PSR configuration
can take DC3CO into account.

This will be used to control PSR2 parameters such as idle frames.

Changes in v2:
- Use intel_display_power_dc3co_allowed(display) instead
  of intel_dc3co_allowed(state)

Changes in v4:
- Update psr.dc3co_eligible before
  intel_psr_enable_locked() call (sashiko)

Changes in v5:
- rename eligible to allowed (Jani Nikula)

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
 drivers/gpu/drm/i915/display/intel_psr.c           | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f18b13f3e99e..30feed50a2d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1776,6 +1776,8 @@ struct intel_psr {
 	ktime_t last_exit;
 	bool sink_not_reliable;
 	bool irq_aux_error;
+	/* DC3CO allowed used to control PSR configuration */
+	bool dc3co_allowed;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 932aff386023..0f4263885416 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2330,6 +2330,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 	intel_dp->psr.active_non_psr_pipes = 0;
 	intel_dp->psr.pkg_c_latency_used = 0;
+	intel_dp->psr.dc3co_allowed = false;
 }
 
 /**
@@ -3120,10 +3121,13 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
+	bool dc3co_allowed;
 
 	if (!crtc_state->has_psr)
 		return;
 
+	dc3co_allowed = intel_display_power_dc3co_allowed(display);
+
 	verify_panel_replay_dsc_state(crtc_state);
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
@@ -3151,6 +3155,8 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 			keep_disabled = true;
 		}
 
+		intel_dp->psr.dc3co_allowed = dc3co_allowed;
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 		else if (psr->enabled && !crtc_state->wm_level_disabled)
-- 
2.43.0

