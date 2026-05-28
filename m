Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKMPIWDMF2o7RAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAD65ECA0C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C168810EC0D;
	Thu, 28 May 2026 05:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EtlsZubX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0C410EC06;
 Thu, 28 May 2026 05:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779944540; x=1811480540;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=j4IRDBKWWVd3Hx5eMzYZUuswfQAqEg144JkteJSeb0A=;
 b=EtlsZubXJ5vhNgqJOIQA6V2+EQKBd4mNeLp2dOuz05U4b55C4Ssvrt15
 UjUYqbLYTCw8rDvpZ4EWYPOvW+1hetQJkK3hrwbbhoKihhZExtnVag9Qn
 uYWcvpWqFsdUxJwB0xszCjz22bdlV15+yiTTgyt1eonG0vK1x+QfJwtdn
 DctOawh4cgYlwW9HoFe6iiJrkjYmmT5pa23PUTDnqxlb1aQ/YnQGLmOln
 Qrj2i/nqbl0uQ8MLwQTc6cX3hAAMYoam4lQZ4klRkPf4OnnEoyNco0jgs
 wbrnIKBMPybUobecgw+C4g5R9466+W1znc30LvUCzkrnw4ELFK1N1yhTh w==;
X-CSE-ConnectionGUID: QUTI858kRPCC04/qT31/dQ==
X-CSE-MsgGUID: mnKaVG5RQbmZ8zY9ZR6Prw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80895722"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80895722"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:20 -0700
X-CSE-ConnectionGUID: 00NWhH4JQc6FADIVxG6qsw==
X-CSE-MsgGUID: b2R/sP9cQ0ieDSXZ4D9bAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="238025981"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:19 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v2 15/17] drm/i915/display: program CMTG before DC3CO enable
Date: Thu, 28 May 2026 10:31:29 +0530
Message-ID: <20260528050131.466351-16-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260528050131.466351-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260528050131.466351-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 5BAD65ECA0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CMTG provides the clock required in DC3CO state.
Gate the DC3CO enable on successful CMTG enable.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f4d11bd91e72..f04ca01dbf30 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7518,6 +7518,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
 	struct ref_tracker *wakeref = NULL;
 	u32 target_dc_state;
+	bool cmtg_status = false;
+	bool dc3co_allowed = intel_display_power_dc3co_allowed(display);
 
 	/*
 	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
@@ -7635,7 +7637,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
-	intel_cmtg_program(state);
+	if (dc3co_allowed)
+		cmtg_status = intel_cmtg_program(state);
 
 	intel_wait_for_vblank_workers(state);
 
@@ -7732,7 +7735,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	if (intel_display_power_dc3co_supported(display)) {
-		if (intel_display_power_dc3co_allowed(display)) {
+		if (dc3co_allowed && cmtg_status) {
 			/*
 			 * Use minimal re-enable delay to allow DC3CO entry on
 			 * the next idle frame, unlike the 17ms guard needed to
-- 
2.43.0

