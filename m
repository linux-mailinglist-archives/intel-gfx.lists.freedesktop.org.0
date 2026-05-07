Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFguLaPr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664214E1FC2
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2CE10EF4C;
	Thu,  7 May 2026 01:32:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iD2RYV+6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBE710EF4C;
 Thu,  7 May 2026 01:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117536; x=1809653536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JlNoMxK30FLSlXwJZydbPNj10PGVtw82JJuTZQbnsxg=;
 b=iD2RYV+6d7ZF8PNvRCad8LQGlB+q07fQDu6h9t22UgJaaiZ5VtEPt20n
 gmpwzJ7mGfvSAqOV6HKnq+Qw7toumqULLjzKiSB3geTRMKIpxW+WIIt/e
 hJ4+JEi7CGgkeaD0Gz2US1ctESxGTu+eJ09L1D8O324DjszoLKeb/bbJr
 2iU01dalgwvrTmXh2h4zgmqKBRxsm15MU3Va+JAd+lO+09ZfUckuzIJw1
 lqbtSk+5SwZEo4iwWTy6YBBoKa4oL8ijChgLpsuPcfwfsJ8b08q2OcsIW
 MZS4/Qz/6ym7EILe85TPZBdEmia6VDw6cwGWIWNG71yNIZEjppalRMSBO g==;
X-CSE-ConnectionGUID: 8bfgRtB2SM6swObmO7j8dw==
X-CSE-MsgGUID: TfFp0CyyS1G19ublBgO2sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089040"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089040"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:15 -0700
X-CSE-ConnectionGUID: PMxr14erQ9WV0n6K90pesg==
X-CSE-MsgGUID: jFiF0N1USj+GZh/gNs3CdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692809"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:14 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 17/31] drm/i915/buf_trans: compute LT's VS/PE-O index
Date: Thu,  7 May 2026 03:31:23 +0200
Message-ID: <20260507013137.527510-18-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260507013137.527510-1-michal.grzelak@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 664214E1FC2
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Compute the most appropriate VS/PE-O index for LT basing on highest
available DP mode.

Use 6th table if encoder supports DP 2.0 or higher. Otherwise use 5th
table for DP.

Warn if encoder does not support DP. In that case fallback to using
default VS/PE tables.

Fill encoder's VS/PE-O buffer with chosen table when overriding
defaults. Return the buffer likewise other _get_buf_trans() hooks.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

v2->v3
- remove unnecessary braces from if block (Suraj)
- return -EINVAL instead of -1 (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 43 ++++++++++++++++---
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 9ae7a780a7639..b6129bcc1996e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1787,9 +1787,32 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 }
 
 static int
-vspeo_compute_index(struct intel_encoder *encoder)
+lt_compute_index(const struct intel_crtc_state *crtc_state)
 {
-	drm_dbg_kms(to_intel_display(encoder)->drm,
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
+	return -EINVAL;
+}
+
+static int
+vspeo_compute_index(struct intel_encoder *encoder,
+		    const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (HAS_LT_PHY(display))
+		return lt_compute_index(crtc_state);
+
+	drm_dbg_kms(display->drm,
 		    "VS/PE-O unsupported, using default VS/PE tables");
 
 	return -EINVAL;
@@ -1868,10 +1891,20 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
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

