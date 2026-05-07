Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIRHIaXr+2llIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DF84E1FCB
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79AD10EF56;
	Thu,  7 May 2026 01:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TsAiJK9Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA89810EF50;
 Thu,  7 May 2026 01:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117539; x=1809653539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ATzOneEhIRBz3Z3m+tLQorVi/ZujqLOsRlXU9Mb1Xy4=;
 b=TsAiJK9Yh91cTbmCLj3DEBLtLujkj0rPnSOgcicgr3++zu6RL4iM/2a/
 g1+lq+TnicB37OexmctnxSUvyZNadXyyKMDVtlAehy/go/I/5WRCnAriZ
 7y+tLP7Wz1vMzmn843S0CPbPBn0lQfGMcA4+36QLBZHMz83FbRfqnLNHG
 tkSE+NmadkN1MjiI4RTDaMQQcrbKhH26/n8cMw1qaC2v+3KGy7+9K0TsR
 lMzapn5goIe69FRh7JrAcpCaVwTlmjrmEnyknhrQm1CLY2r+lC5LKkQ6Q
 /3+SzseDXpifVheftIXUtKHx0Pt7yQXA5b+Jppqi/EHckE5J5+pkZc0Kj g==;
X-CSE-ConnectionGUID: UoeK5IcXTEmdtupXOzKfQA==
X-CSE-MsgGUID: r4oJ564fT9WeZKgvSNEEMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089041"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089041"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:16 -0700
X-CSE-ConnectionGUID: KOA4fpafRBazSoIuOlQx1Q==
X-CSE-MsgGUID: P6yM579yRsqaWrnRhFo2Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692836"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:16 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 18/31] drm/i915/buf_trans: enumerate LT's VS/PE-O indices
Date: Thu,  7 May 2026 03:31:24 +0200
Message-ID: <20260507013137.527510-19-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 38DF84E1FCB
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

Encapsulate LT's VS/PE-O's indices in enum lt_vspeo_index.

Treat error case as referring to index -1. Refer to it as LT_ERR.

Tables 1-4 are not used at all and are most likely to be zeroed. Refer
to them as _LT_unusedN.

5th table is used for any mode below DP 2.0 (exclusive). Refer to it as
LT_DP14.

6th table is used for any mode above DP 2.0 (inclusive). Refer to it
as LT_DP21.

Indices for other tables have not yet been observed to be used as of
now.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  8 ++++----
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 12 ++++++++++++
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index b6129bcc1996e..54ad46643fb5c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,21 +1786,21 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
-static int
+static enum lt_vspeo_index
 lt_compute_index(const struct intel_crtc_state *crtc_state)
 {
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (intel_dp_is_uhbr(crtc_state))
-			return 5;
+			return LT_DP21;
 		else
-			return 4;
+			return LT_DP14;
 	}
 
 	drm_WARN(to_intel_display(crtc_state)->drm, 1,
 		 "non-DP (%d) encoder asks to compute VS/PE-O index\n",
 		 crtc_state->output_types);
 
-	return -EINVAL;
+	return LT_ERR;
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index ac9acdec6d298..30fafeeaf62f2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -74,6 +74,18 @@ struct intel_ddi_buf_trans {
 	u8 hdmi_default_entry;
 };
 
+enum lt_vspeo_index {
+	LT_ERR = -1,
+
+	_LT_unused0 = 0,
+	_LT_unused1,
+	_LT_unused2,
+	_LT_unused3,
+
+	LT_DP14 = 4,
+	LT_DP21
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
-- 
2.45.2

