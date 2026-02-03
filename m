Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QC8HL48CgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C26DA6CB
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09A510E681;
	Tue,  3 Feb 2026 14:13:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jkkZI3ti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91C710E68E;
 Tue,  3 Feb 2026 14:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770128011; x=1801664011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4O24omxODgCCjyppIhrufdcFQnFRXL5CUUFvYipKpZk=;
 b=jkkZI3ti4+5RMQ+Uzt6Tyj5WKAW8k9S8KtIG6uod2GsMJKCd8iU4BG86
 oZyw2HfRxgjHv2tKtElZpj7nBrgSGLrPUJYXrhKCqEElEx3mqwDSUzGkq
 XM0cp2d4ZSI/1z0jAkdrcCBmCzBaxmbMo++7NvFsdKEUs/ICQuQ5j4Iw0
 +EAhe6aEG0ENGCjeCW6aFHyz1dqY+BIJAHnu1oq4XESmiK+7SIKq6iaJ8
 SXL+MFMb3W/UVIleWMu6tH6s+l7dLp39a05LN8kaXcDcT9JARBcw4yZcB
 1KuG8PdSSv0DQiojRKSH4zF47lUu28v7b5RWLSL8uZKqpjDQ0bQUfAiIB Q==;
X-CSE-ConnectionGUID: eW8ZADrDSAWJfqXOVRFW5w==
X-CSE-MsgGUID: uVCDngLuRXyM4uHB6H5FEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156444"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156444"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:30 -0800
X-CSE-ConnectionGUID: VzECrJF6S0GjqqAyt57Bxg==
X-CSE-MsgGUID: yyS6P7alSBSIJrdlKudsHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956306"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:28 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 05/10] drm/i915/cmtg: program set context latency of cmtg
Date: Tue,  3 Feb 2026 19:14:02 +0530
Message-Id: <20260203134407.2823406-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260203134407.2823406-1-animesh.manna@intel.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
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
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 55C26DA6CB
X-Rspamd-Action: no action

Program context latency for delayed vblank timings to create window2.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 4 ++++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 26adf70cdd00..cb1376f4c13f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -236,10 +236,14 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
 
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (cpu_transcoder != TRANSCODER_A && cpu_transcoder != TRANSCODER_B)
 		return;
 
 	intel_cmtg_set_timings(crtc_state);
+
+	intel_de_write(display, TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder)));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index eab90415d0da..3cfd8eedb321 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -32,4 +32,6 @@
 #define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) * 0x100)
 #define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) * 0x100)
 
+#define TRANS_SET_CTX_LATENCY_CMTG(id) _MMIO(0x6F07C + (id) * 0x100)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
-- 
2.29.0

