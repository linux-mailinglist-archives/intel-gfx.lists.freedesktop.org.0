Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOI6KdgS82k4xAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6354F49F3F0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28A010F293;
	Thu, 30 Apr 2026 08:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KV3toImH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E963E10F29C;
 Thu, 30 Apr 2026 08:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777537749; x=1809073749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f+mZmF+poPJ9JY7k7jDGbI/suk7+gBb6KlngWf4L0DI=;
 b=KV3toImH0IlYMPj6lBof8yBU6F4AsaW8lKERx2KAF8ml+scQf+mu560/
 qJkzhEdMjMPY38fBZx0Lcxaaw13NhE3Qn6lpFkcOWxVLgs5bMOK+mTQZQ
 +5rbfAUCE0dWY7fXRxJp7jTflg1fwoKPPRfiuT3gZBdN6QQO01CpLjwyj
 UYtX2h5wi9urBlVcRk4bn3/2F18YRR49WTCzMclKHwMismyPkJB1Qz2Zv
 KkDrWrJbejCsS6d5hTAg+j1HFZk99t/nCC66mLJTS9E59lusVrqdWMRFi
 drK2fVKcZMKP3PDd6l3J4fn6oPKQ0DUDiMd0b0qOMPlKf5chbcnceAVsW g==;
X-CSE-ConnectionGUID: 4Yvgfmm6QneTRYooOj6b3A==
X-CSE-MsgGUID: JCDGIJ1USyOmpEmXLhysZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="77646049"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="77646049"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:08 -0700
X-CSE-ConnectionGUID: ptqBZrdeQ6CeMmEvJb2EyA==
X-CSE-MsgGUID: rAQRQXgbS5Sql+XFoGoWfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="229911320"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/8] drm/i915/display: move fdi funcs under fdi sub-struct
Date: Thu, 30 Apr 2026 11:28:47 +0300
Message-ID: <c48bad63ec94259773d05ef056268b02e119d635.1777537663.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777537663.git.jani.nikula@intel.com>
References: <cover.1777537663.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 6354F49F3F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Move fdi related functions under fdi sub-struct of struct intel_display.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 6 +++---
 drivers/gpu/drm/i915/display/intel_fdi.c          | 8 ++++----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index db07e332af5a..0fdda5339e81 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -316,9 +316,6 @@ struct intel_display {
 
 		/* pm display functions */
 		const struct intel_wm_funcs *wm;
-
-		/* fdi display functions */
-		const struct intel_fdi_funcs *fdi;
 	} funcs;
 
 	struct {
@@ -418,6 +415,9 @@ struct intel_display {
 	} fbdev;
 
 	struct {
+		/* internal fdi functions */
+		const struct intel_fdi_funcs *funcs;
+
 		unsigned int pll_freq;
 		u32 rx_config;
 	} fdi;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 917f020650af..f5094655a63b 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -123,7 +123,7 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 
-	display->funcs.fdi->fdi_link_train(crtc, crtc_state);
+	display->fdi.funcs->fdi_link_train(crtc, crtc_state);
 }
 
 /**
@@ -1109,11 +1109,11 @@ void
 intel_fdi_init_hook(struct intel_display *display)
 {
 	if (display->platform.ironlake) {
-		display->funcs.fdi = &ilk_funcs;
+		display->fdi.funcs = &ilk_funcs;
 	} else if (display->platform.sandybridge) {
-		display->funcs.fdi = &gen6_funcs;
+		display->fdi.funcs = &gen6_funcs;
 	} else if (display->platform.ivybridge) {
 		/* FIXME: detect B0+ stepping and use auto training */
-		display->funcs.fdi = &ivb_funcs;
+		display->fdi.funcs = &ivb_funcs;
 	}
 }
-- 
2.47.3

