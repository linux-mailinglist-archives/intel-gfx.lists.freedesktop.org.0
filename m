Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2SQjFkRiMGpzSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F4099689EA0
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WWqv8KoW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8471910E6DC;
	Mon, 15 Jun 2026 20:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5698E10E6DC;
 Mon, 15 Jun 2026 20:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555777; x=1813091777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wCA7xzCoptQTaXcQDF4S43uXGyoVWjIALTtvPCJzg9I=;
 b=WWqv8KoWeuFFwpJFEJBNDrksZJR9HflP5wFpWJYhapvE/1q/4dp3jDTr
 acjeHkF56B+xC5dEm78fgHg4ney2gZLp2QHYWs2mUcbSB2sUOVkYalRBY
 xLSne8sKsJIu9FEuY1J8ueZwUtriivs0DCEEKV3T0XrY8j5pekT1GaYp6
 E9GuYGMZeNoBL4uankgWY9vzNmsKlUxi0Qa3i2cXv3B08F5kZkf9xj0xg
 +kQAhiEw3PdT7ziDCmOjfx7Eu611gMDC9YR8RlUb3q5+lDlV+U3PsSSoR
 Yx2Y1MT28qZgIgz+wlIdka/9f7YjLRfo3uaupjVcuc+kPIyPNqPVT6t6z A==;
X-CSE-ConnectionGUID: 2KSaPFpCSlmlYmhfgUcfLQ==
X-CSE-MsgGUID: NxjGvxt1ReCWxtCCLCFdrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694766"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694766"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:36:17 -0700
X-CSE-ConnectionGUID: rl2v8BAUSZ6gNYJoN6LdPA==
X-CSE-MsgGUID: uotxjwGzRcqPN4JPkYKDIA==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jun 2026 13:36:15 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 11/22] drm/i915/display: Rename cpu_transcoder parameter to
 transcoder in VRR fixed-rr path
Date: Tue, 16 Jun 2026 01:33:28 +0530
Message-Id: <20260615200339.885190-12-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: F4099689EA0

intel_vrr_set_fixed_rr_timings() now takes the target transcoder as an
explicit argument rather than implicitly using crtc_state->cpu_transcoder,
so the parameter name 'cpu_transcoder' is misleading. Rename it to plain
'transcoder' to reflect that any transcoder may be programmed.

No functional change.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_vrr.h | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 60a92e8b1094..401a12aee700 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -320,18 +320,18 @@ int intel_vrr_fixed_rr_hw_flipline(const struct intel_crtc_state *crtc_state)
 }
 
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
-				    enum transcoder cpu_transcoder)
+				    enum transcoder transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
 		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
 		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_FLIPLINE(display, transcoder),
 		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 57c5e28378db..55e9c429f579 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -44,7 +44,7 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
-				    enum transcoder cpu_transcoder);
+				    enum transcoder transcoder);
 void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
 			 struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
-- 
2.29.0

