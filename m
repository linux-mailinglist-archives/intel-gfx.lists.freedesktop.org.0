Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJVVE5Aj4GmtcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CC240910C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48AAA10E7E6;
	Wed, 15 Apr 2026 23:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+Eqk7rp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D1710E7D5;
 Wed, 15 Apr 2026 23:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296837; x=1807832837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o5CRhCMeEOZq2KcA7SE44j9SuUZTPmW9WaujM5vQyTQ=;
 b=c+Eqk7rpsH9eag6DKseTWH0UYEB4Nb//MI6+84mcCs+9FiTJonCsJGlW
 naZiVmNj+k3PAwaj2O6l+QARqzSKNTKJc6hq/Uaec66wHiixhGe5NCxQ1
 pYq9gQqyOSc10DjyxLPuSOSA6n5SHFswL8yGvNm33t/URKVHLNmh4Vwo4
 xzrORyMjVi8hy257Naeyb7obpbRlgtB26YCXiYGIiujaPOp6v9vpSXq2M
 cOoiqIzbwIuudfey3D3YSjvlKYOHJEj89ANkxRg2xqNOuEdv0MHYHLO63
 acuY8nxWZ5EUpYHO/oYc5RlvqOjlcVj1gcFYuKt5QQ+j3ciMVYpYogn/O g==;
X-CSE-ConnectionGUID: 9x4yFD7QSriEFHnabA9q+A==
X-CSE-MsgGUID: MhII+xOxSaO++sN45dBSYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403511"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403511"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:17 -0700
X-CSE-ConnectionGUID: nlX4tD6BQZmheDw8TZOnbg==
X-CSE-MsgGUID: GIh7iyDLRHKRe+JZfsU8VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511204"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:16 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 18/32] drm/i915/buf_trans: compute LT's VS/PE-O index
Date: Thu, 16 Apr 2026 01:46:25 +0200
Message-ID: <20260415234639.3577774-19-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260415234639.3577774-1-michal.grzelak@intel.com>
References: <20260415234639.3577774-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 00CC240910C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Compute the most appropriate VS/PE-O index for LT basing on highest
available DP mode.

Use 6th table if encoder supports DP 2.0 or higher. Otherwise use 5th
table for DP.

Warn if encoder does not support DP. In that case fallback to using
default VS/PE tables.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 44 ++++++++++++++++---
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 955d64b2e9b67..62bd91e64f574 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1787,9 +1787,33 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 }
 
 static int
-vspeo_compute_index(struct intel_encoder *encoder)
+lt_compute_index(const struct intel_crtc_state *crtc_state)
 {
-	drm_dbg_kms(to_intel_display(encoder)->drm, "VS/PE-O unsupported, using default VS/PE tables");
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_dp_is_uhbr(crtc_state))
+			return 5;
+		else
+			return 4;
+	}
+
+	drm_WARN(to_intel_display(crtc_state)->drm, 1,
+		 "non-DP (%d) encoder asks to compute VS/PE-O index\n",
+		 crtc_state->output_types);
+
+	return -1;
+}
+
+static int
+vspeo_compute_index(struct intel_encoder *encoder,
+		    const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (HAS_LT_PHY(display)) {
+		return lt_compute_index(crtc_state);
+	}
+
+	drm_dbg_kms(display->drm, "VS/PE-O unsupported, using default VS/PE tables");
 
 	return -1;
 }
@@ -1867,10 +1891,20 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
-	if (!encoder->vspeo)
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_ddi_buf_trans *buf_trans;
+	int idx;
+
+	buf_trans = (void *) encoder->vspeo;
+	if (!buf_trans)
+		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+
+	idx = vspeo_compute_index(encoder, crtc_state);
+	if (idx < 0)
 		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 
-	vspeo_compute_index(encoder);
+	buf_trans->entries = display->vbt.vspeo.bufs_mtrx[idx];
+	buf_trans->num_entries = display->vbt.vspeo.num_rows;
 
-	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+	return intel_get_buf_trans(buf_trans, n_entries);
 }
-- 
2.45.2

