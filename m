Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHgIDZQj4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D72FD40912F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41CDB10E7F3;
	Wed, 15 Apr 2026 23:47:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fpl+E6VI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E99110E7E5;
 Wed, 15 Apr 2026 23:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296846; x=1807832846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lA6hwtjhFiH4MX8dhqj1gTamkJgmpIw0l9b3vlzjiFA=;
 b=Fpl+E6VIT2km7Pkcon1lJjwX8b2WEN8I3aYRy0Db6L5bof3Npp552DIw
 A+SNT0IhsSmUWJjybi/Tpvlr1qNsLvPf5tVrdN0i5GXlOIi6MYwAeI+B6
 fXCKPRf/sO2wbaStsecSoqZXn/xqtvVzFptiGxG2fYTQpOdTfVAhNcXwr
 aV53i21WdbzyyjryEKSxeWx5pL734xgZl4tZ+i9vhz05ayov3FRJ21Zu9
 Cn/ik+8XI6wQtkFp2Prac7a9u/+7oRMdjqyDKX3g9dNnGNO93V5fiIwHD
 r9x4WOPsNHceyNKSZoVz6vkJym28cwemc49+Iaqec9P4WUuEPjEs9df9M Q==;
X-CSE-ConnectionGUID: EwjkLQ5mTIC7DPoRRX5d5g==
X-CSE-MsgGUID: z7pcUfHWQwa1iIroaabGKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403522"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403522"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:26 -0700
X-CSE-ConnectionGUID: Zf24Kf5uTkGsEKt0N+mJrw==
X-CSE-MsgGUID: JrLuTdGAQQ67RQ3ygjEjfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511238"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:25 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 25/32] drm/i915/buf_trans: enumerate C10's VS/PE-O indices
Date: Thu, 16 Apr 2026 01:46:32 +0200
Message-ID: <20260415234639.3577774-26-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: D72FD40912F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Encapsulate C10's VS/PE-O's indices in enum snps_c10_vspeo_index.

Use index of -1 as an indication of error case. Refer to it as C10_ERR.

1st VS/PE-O's table is used for external DP with modes below HBR2
(exclusive). 1st table is also used as a fallback for non-DPs. Refer to
it as C10_DP14_RBR_HBR.

2nd table is used for external DP with modes higher than HBR2
(inclusive). Refer to it as C10_DP14_HBR2_HBR3.

3rd table is used for eDP with modes lower than HBR3 (exclusive). Refer
to it as C10_EDP_NON_HBR3.

4th table is used for eDP with modes higher than HBR3 (inclusive). Refer
to it as C10_EDP_HBR3.

Indices for other tables have not yet been observed to be used as of
now.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h |  9 +++++++++
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index d163a021569bc..a016256d07bc9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,28 +1786,28 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
-static int
+static enum snps_c10_vspeo_index
 snps_c10_compute_index(const struct intel_crtc_state *crtc_state)
 {
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
 		if (crtc_state->port_clock > 540000)
-			return 3;
+			return C10_EDP_HBR3;
 		else
-			return 2;
+			return C10_EDP_NON_HBR3;
 	}
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (crtc_state->port_clock > 270000)
-			return 1;
+			return C10_DP14_HBR2_HBR3;
 		else
-			return 0;
+			return C10_DP14_RBR_HBR;
 	}
 
 	drm_WARN(to_intel_display(crtc_state)->drm, 1,
 		 "non-DP (%d) encoder asks to compute VS/PE-O index\n",
 		 crtc_state->output_types);
 
-	return -1;
+	return C10_ERR;
 }
 
 static enum snps_c20_vspeo_index
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index e182fbe9590c5..a8c998fa339e6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -98,6 +98,15 @@ enum snps_c20_vspeo_index {
 	C20_DP20
 };
 
+enum snps_c10_vspeo_index {
+	C10_ERR = -1,
+
+	C10_DP14_RBR_HBR = 0,
+	C10_DP14_HBR2_HBR3,
+	C10_EDP_NON_HBR3,
+	C10_EDP_HBR3
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
-- 
2.45.2

