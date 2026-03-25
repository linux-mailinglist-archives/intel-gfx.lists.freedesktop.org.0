Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Go/BOhrw2k9qwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7F831FCAF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1E810E786;
	Wed, 25 Mar 2026 05:00:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Is+ZE8/P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09B7010E783;
 Wed, 25 Mar 2026 05:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414821; x=1805950821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fpGsazXKqzwGfS3NCXCC2/QTp8pTHqxngqzlgwv5Bk8=;
 b=Is+ZE8/P2K1F/zOE/4karfWlc4wLCvjeNPX6AMItblF7BLCwaUtGXTWw
 0WLqRLcYsjCtBzh5yeQINuVpEmtRXk6bfqZU9luY2mAAAMRcPRBVWYzUG
 imzzFXFcdoa1faEuAjV6fbmkR5/ZEY+WnrAiROOGEh/8+3sey0Trd1hHa
 0topQMBrp9f5yLlUN1vnlHQn1in6fPEVeBvaGguMgWieLCYhlEKejhJSq
 LtDj/du27s+687wthin54OtlkeQSfqCUCrFebVNS+gl9lcZw5XBI2KH2A
 DznVXb6Di525F9Usae1HResDWLqOWXJp0ieDkz5Ea9CHglVY57b9UIqoj Q==;
X-CSE-ConnectionGUID: 3EqBtjFqRDSHAnTbjsDAwQ==
X-CSE-MsgGUID: pnfMjZUoQ5CUNk9uTH5VjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922363"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922363"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:00:21 -0700
X-CSE-ConnectionGUID: Rl6NX7h2TFCe4dSM96+KdQ==
X-CSE-MsgGUID: RBl3tRR8RFmY0C150wOyCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580881"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 22:00:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 21/26] drm/i915/writeback: Configure WD_SURF register
Date: Wed, 25 Mar 2026 10:29:11 +0530
Message-Id: <20260325045916.984243-22-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CF7F831FCAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Get the ggtt_offset of the drm_framebuffer which needs to be
written to the surface base address bits of WD_SURF register.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c     | 4 ++++
 drivers/gpu/drm/i915/display/intel_writeback_reg.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index bbb3c776ecca..cca1757fa5ff 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -266,6 +266,7 @@ static void intel_writeback_capture(struct intel_atomic_state *state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	struct drm_writeback_job *wb_job = conn_state->writeback_job;
+	struct intel_writeback_job *job = conn_state->writeback_job->priv;
 	enum transcoder trans = wb_conn->trans;
 	u32 val = 0;
 	int bpp;
@@ -274,6 +275,9 @@ static void intel_writeback_capture(struct intel_atomic_state *state,
 	val = DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);
 	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
 
+	val = intel_get_ggtt_addr(job->vma);
+	intel_de_write(display, WD_SURF(trans), val);
+
 	val = 0;
 	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
 	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
index f526af0f9aff..403f9b64015b 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
+++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
@@ -81,6 +81,8 @@
 #define WD_SURF(tc)			_MMIO_WD(tc,\
 					_WD_SURF_0,\
 					_WD_SURF_1)
+#define  WD_SURF_ADDR_MASK		REG_GENMASK(31, 12)
+#define  WD_SURF_ADDR(val)		REG_FIELD_PREP(WD_SURF_ADDR_MASK, val)
 
 #define _WD_IMR_0			0x6e560
 #define _WD_IMR_1			0x6ed60
-- 
2.34.1

