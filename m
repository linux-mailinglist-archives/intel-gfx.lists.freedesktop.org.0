Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WECnM5UCgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A055ADA6E0
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2A910E691;
	Tue,  3 Feb 2026 14:13:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NyrSc9KO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0AC110E695;
 Tue,  3 Feb 2026 14:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770128018; x=1801664018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cr0XNT+qsbwSgKZ5tRZYhG+2pbW3P9qDOaZyywZSC88=;
 b=NyrSc9KO/mp3Wx6gqSBMcVOLxIYoC4GUEE1mFloVWjSoaIV5z3L0uvJ7
 1lSUvyrnbt7bngvQpAVyTQvPXnmAcG+Wz4bXsz9JR6Cxtuhhrv3QuOLHL
 cl/g0BnfExBdkUSCN1ITM+iuDve1KTWLAIXxjtiq58X7vUNRKnibufFRs
 JAQ+Ey3Ixp0GfgIfrRjToFo8Xn5Z9sTzAYuVHjNAGJIvKj3+NRvcx2Wz6
 1WPHdzVKfAN00Wpc165VN0Q0YSVU6xpIneS/bhkR+WjtT7KVToxsyqjvb
 SST/1AfHW/QK1lP0d0eOu+hI2SMwV6f91fdMKomnFHUlLwt1S4cibIO5j A==;
X-CSE-ConnectionGUID: Xn1CWjZQSGOC7knEJlx/JQ==
X-CSE-MsgGUID: UUNBu6/DTKWnJNkASb+gJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156451"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156451"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:37 -0800
X-CSE-ConnectionGUID: eqBEf9geTrG94pnk4kS0Ag==
X-CSE-MsgGUID: N15mP9IMS0Kn9vRa+O5xYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956316"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:35 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 08/10] drm/i915/cmtg: enable cmtg ctl
Date: Tue,  3 Feb 2026 19:14:05 +0530
Message-Id: <20260203134407.2823406-9-animesh.manna@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A055ADA6E0
X-Rspamd-Action: no action

Enable CMTG through control register.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 3af4aefc760e..f7364c7408d5 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -244,6 +244,19 @@ static void intel_cpu_cmtg_transcoder_set_m_n(const struct intel_crtc_state *crt
 	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder), m_n->link_n);
 }
 
+static void intel_cmtg_ctl_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val = 0;
+
+	val = intel_de_read(display, TRANS_CMTG_CTL(cpu_transcoder));
+
+	val |= CMTG_ENABLE;
+
+	intel_de_write(display, TRANS_CMTG_CTL(cpu_transcoder), val);
+}
+
 void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -261,4 +274,7 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 
 	/* Program Cmtg Sync to Port Sync, TRANS_CMTG_CTL */
 	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_SYNC_TO_PORT, CMTG_SYNC_TO_PORT);
+
+	/* Program Enable Cmtg */
+	intel_cmtg_ctl_enable(crtc_state);
 }
-- 
2.29.0

