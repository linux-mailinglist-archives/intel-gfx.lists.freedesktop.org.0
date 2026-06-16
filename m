Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QOzJBntFMWoyfwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A791E68F807
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=X6sXV00M;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E67110EB16;
	Tue, 16 Jun 2026 12:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C0DD10EAF0;
 Tue, 16 Jun 2026 12:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613934; x=1813149934;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=shWMo4gtHn4eOek/tQl7dtf0lsaj+iaI5qVXJR4LAP0=;
 b=X6sXV00MBzRCRcW53VQMwVjSoOs75RJk5pU9Xfde4xsynqM2TUDmjGhs
 nDQ9mZkDrK04k226aCiLMrfBp0po06/mCoaCC7EYdsYsRmnEdSdVPAMqq
 FgvYXOD8FGyMmpvigd0pNE1yWSJAUv05tzi/+E9HJwCedWRJbJiwjmfwu
 COYe/lEgaEKzRiX7wO6vPRLopavnSA6Oh8N+prLqhVJ35Yak1UK3aYHKZ
 OLWDiN6MDw60VEkzMjIB9VnxkcWADeupjlA/wui4PkXTGrhOLTTpJCFEZ
 fRKUNDiHC870CDvH/nUf4Lmz7QpHVedrNP/VO1HanStDYS5teuB2vIeJw A==;
X-CSE-ConnectionGUID: f0Rp9kmYRsO1ZQa/9rmbpQ==
X-CSE-MsgGUID: bJ09/MEKQzaY4XppEvhUcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513245"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513245"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:34 -0700
X-CSE-ConnectionGUID: uCBIYAZNSZWC09fY5tU1Dw==
X-CSE-MsgGUID: Gkhmmc2dTyCDQGjBnOIHWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876268"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:33 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 13/39] drm/i915/cmtg: Program VRR control register for CMTG
 transcoder
Date: Tue, 16 Jun 2026 18:13:49 +0530
Message-ID: <20260616124416.2442161-14-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A791E68F807

From: Animesh Manna <animesh.manna@intel.com>

Add intel_cmtg_set_vrr_ctl() to program TRANS_VRR_CTL for the
CMTG transcoder. Purposefully avoid using the existing VRR enable
path, as many of its operations are not needed for CMTG.

v2: Use sw state instead of reading from hardware. [Jani]
v3: Program cmtg vrr control register along with vrr transcoder
registers. [R-b from Uma]
v4: Split out from vrr timing registers programming.

Bspec: 68989
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c  |  2 ++
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index c5fff66f0d9e..87198de8dfed 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -17,6 +17,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_vrr.h"
+#include "intel_vrr_regs.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -258,3 +259,22 @@ void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state)
 
 	intel_vrr_set_fixed_rr_timings(crtc_state, cmtg_transcoder);
 }
+
+void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
+	u32 vrr_ctl;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	vrr_ctl = VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN |
+		  XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
+
+	/* TODO: The code below may need to be revisited once CMRR is enabled */
+	if (crtc_state->cmrr.enable)
+		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index e64a26aa5a1c..76ab908c6e61 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -17,6 +17,7 @@ enum set_timing_type {
 };
 
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
+void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, enum set_timing_type type);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 74094f4335f0..cd380fe8fd01 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -933,6 +933,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
+
+	intel_cmtg_set_vrr_ctl(crtc_state);
 }
 
 static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
-- 
2.43.0

