Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9P1GB05iMGp4SQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CB0689EB0
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PEo0bFs8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3BD10E6E5;
	Mon, 15 Jun 2026 20:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D40710E711;
 Mon, 15 Jun 2026 20:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555787; x=1813091787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dl9qSCVKdt/yj+YFY2HktGfCOZ4rTTpdQae9Ba+G3P0=;
 b=PEo0bFs8a7niCCi2fWOsfP+mbHnnMQoZxh7qWLqzCb5XuRzxLFmFG5KB
 Pb2cZOee3RGJ/xorToaoh7OhIDdZUY8Mx0bNeIRkW4NjYMcRZ9ZNypUjT
 yHzUMFIdYWS6wRatMVvLyLywUIiqX1UJukP4oO/6fpsQnlRcx2QhV8d31
 h/2Jp2JPNf9XFcuhEUrRYpCwHfLEvhJENlZJs0wzZ+MaYtK0XzE3B1Ln0
 Ie3Sqz3CA6aHXXtKSB14AFZQidxhqlu/IrCl7wmi1dGCEzP6NJ7OQXcv6
 8uhsiDqESB5YiKUj2VpHTnwkQGPFbYGWEMUI8eWDwQiSY40GxRna8eySI w==;
X-CSE-ConnectionGUID: aVA6me0MQKGx79WdJtTlWQ==
X-CSE-MsgGUID: lh1SX9WURaC7xSwNs/iLIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694772"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694772"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:36:26 -0700
X-CSE-ConnectionGUID: A6nTzd7HTI+jN7aLOGi0OQ==
X-CSE-MsgGUID: d5CHKvw2R/CbDjHEZa5BmA==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jun 2026 13:36:24 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 14/22] drm/i915/cmtg: Set link M/N for CMTG transcoder
Date: Tue, 16 Jun 2026 01:33:31 +0530
Message-Id: <20260615200339.885190-15-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260615200339.885190-1-animesh.manna@intel.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3CB0689EB0

Program CMTG link M/N.
Not much to reuse so add a separate function for CMTG.

Bspec: 68989
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  5 ++++-
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 87198de8dfed..533e58d90bb6 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -278,3 +278,16 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
 }
+
+void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
+	const struct intel_link_m_n *m_n = &crtc_state->dp_m_n;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	intel_de_write(display, PIPE_LINK_M1(display, cmtg_transcoder), m_n->link_m);
+	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n->link_n);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 76ab908c6e61..de852fc2405d 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -16,6 +16,7 @@ enum set_timing_type {
 	LRR
 };
 
+void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, enum set_timing_type type);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3eb93853da9e..62dc2b414f3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1635,6 +1635,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 					       &crtc_state->dp_m2_n2);
 	}
 
+	intel_cmtg_set_m_n(crtc_state);
 	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
 	intel_cmtg_set_timings(crtc_state, MODESET);
 
@@ -6687,9 +6688,11 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	    display->platform.broadwell || display->platform.haswell)
 		hsw_set_linetime_wm(new_crtc_state);
 
-	if (new_crtc_state->update_m_n)
+	if (new_crtc_state->update_m_n) {
 		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_transcoder,
 					       &new_crtc_state->dp_m_n);
+		intel_cmtg_set_m_n(new_crtc_state);
+	}
 
 	if (new_crtc_state->update_lrr) {
 		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state->cpu_transcoder);
-- 
2.29.0

