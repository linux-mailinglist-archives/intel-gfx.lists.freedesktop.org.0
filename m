Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DQTHT81tGn4igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 269D028691F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD5510E472;
	Fri, 13 Mar 2026 16:03:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jlCSbL3y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C438C10EC5B;
 Fri, 13 Mar 2026 16:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773417788; x=1804953788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6X8emtLxs0/lWqEqOtIb0yGZy4SH+PNi4wN+ZdGERf4=;
 b=jlCSbL3ybW+28k+rze1gZegkgD0StH1zSmdZoNznWQoO83GbQ7U+e0KP
 olX3UrW8SUGEukBl8S4ctRKToocY6WAmPTEL2hd8COV1VDGYhH758ce92
 b6yPJ9dCV4h7GpVrLJ7zPv5JYtSGOcyllofnZ7BlSCbxs2Fy1ORjY7Y7R
 pn7dCETDYi6iXXZy63PubqbJ0zJa8zAm+csC4NNRdmBg4/BeGJYvnpmX8
 J0lLZ/7MGJ+2jmTfrLQCz237wUjbd+GjEjCPhkUyur1Mhnqp0r2RUv7xJ
 /yoNPmYQBYQsv2S7RLbdwpIGVn8berqoWptz7S5YjxP+IvtuSSi44BI82 g==;
X-CSE-ConnectionGUID: rjus1NEYROCEVVy74QsfBg==
X-CSE-MsgGUID: HqCS58PCS7OshDdILlv1DQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74715336"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74715336"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:03:08 -0700
X-CSE-ConnectionGUID: baEp16fmQLyHTDZl0EP5bA==
X-CSE-MsgGUID: gdv4ZRn/RgiUJBdCdTRSvQ==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 13 Mar 2026 09:03:05 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com,
 dibin.moolakadan.subrahmanian@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 05/12] drm/i915/cmtg: set transcoder mn for CMTG
Date: Fri, 13 Mar 2026 21:02:53 +0530
Message-Id: <20260313153300.3530695-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260313153300.3530695-1-animesh.manna@intel.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 269D028691F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Program CMTG link M/N.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h      |  1 +
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h |  3 +++
 drivers/gpu/drm/i915/display/intel_display.c   |  1 +
 4 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 038927b8721b..0d4a8550be24 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -302,3 +302,16 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder), vrr_ctl);
 }
+
+void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	const struct intel_link_m_n *m_n = &crtc_state->dp_m_n;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	intel_de_write(display, TRANS_LINKM1_CMTG(cpu_transcoder), m_n->link_m);
+	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder), m_n->link_n);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index c92e3a62ff0d..6796eb727eef 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 3e94151e4daf..b91498ef5274 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -29,6 +29,9 @@
 
 #define TRANS_SET_CTX_LATENCY_CMTG(trans)	_MMIO(0x6F07C + (trans) * 0x100)
 
+#define TRANS_LINKM1_CMTG(trans)	_MMIO(0x6F040 + (trans) * 0x100)
+#define TRANS_LINKN1_CMTG(trans)	_MMIO(0x6F044 + (trans) * 0x100)
+
 #define TRANS_VRR_CTL_CMTG(trans)	_MMIO(0x6F420 + (trans) * 0x100)
 #define TRANS_VRR_VMAX_CMTG(trans)	_MMIO(0x6F424 + (trans) * 0x100)
 #define TRANS_VRR_VMIN_CMTG(trans)	_MMIO(0x6F434 + (trans) * 0x100)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 82e4d0524d54..35f5fd02c815 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1636,6 +1636,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
 					       &crtc_state->dp_m2_n2);
 	}
+	intel_cmtg_set_m_n(crtc_state);
 
 	intel_set_transcoder_timings(crtc_state);
 
-- 
2.29.0

