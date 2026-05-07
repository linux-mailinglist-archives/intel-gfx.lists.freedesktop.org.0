Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKo4K7Xr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 623504E2014
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD58110EF69;
	Thu,  7 May 2026 01:32:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P9TeuE1o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A47D210EF67;
 Thu,  7 May 2026 01:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117554; x=1809653554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SZSKMdDic9oa7kZa7FBUA4P58RDbzQ7dJKwrYVX06Ng=;
 b=P9TeuE1oMppTg18dE+8en7EqtVBJtsMhhWzG7n+Ngt00khu/ymxOD3P+
 RUlIIi7KfOE7cskeyyTGbA01+v6qaEqxpobtgri123h57qz/vDXhMQvL9
 8kPiVD7q9Z6qHyBZRmeTkgDC1TaWI/JFvejrMhMciFOigdllbgmgMehWv
 KwYRwUF0epRS25SBlt6wxJr9fR2IyeOGP+egQbfv+26q9iMgx+OYmBV+v
 0ceH2XftonprvjZaFiOochSA3MsxVIJ7xS4Lb0CG5MmJ/dWhRsBsWYabt
 33pEyY0H6TMbtN3cB0XkHqvX0uHidAYBeaTnr+ps11dBEz+GrpFU/Sxpn w==;
X-CSE-ConnectionGUID: bwrbphx7TJemx5g3n+yQgg==
X-CSE-MsgGUID: /zn+xd6WTM6IUCIOvSF4CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089062"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089062"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:34 -0700
X-CSE-ConnectionGUID: sN940FhXSlu513RPrhwZYA==
X-CSE-MsgGUID: K7AfZ6mjR3aC8WU63ZX7ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692895"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:33 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 28/31] drm/i915/buf_trans: enumerate EHL's VS/PE-O indices
Date: Thu,  7 May 2026 03:31:34 +0200
Message-ID: <20260507013137.527510-29-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 623504E2014
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

Encapsulate EHL's VS/PE-O's indices in enum ehl_vspeo_index.

Use index of -1 as an indication of error case. Refer to it as EHL_ERR.

1st VS/PE-O's table is used for external DP with modes below HBR2
(exclusive). With same supported modes, it is also used for eDP that
does not use low vswing. 1st table is also used as a fallback for
non-DPs. Refer to it as EHL_DP_HBR.

2nd table is used for external DP with modes above HBR2 (inclusive).
With same supported modes, it is also used for eDP that does not use low
vswing. Refer to it as EHL_EDP_HBR2.

3rd table is used for eDP supporting HBR3 and using low vswing. Refer to
it as EHL_EDP_HBR3.

Indices for other tables have not yet been observed to be used as of
now.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h |  8 ++++++++
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 36ba0ed4ddc68..067ab47c00883 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,31 +1786,31 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
-static int
+static enum ehl_vspeo_index
 ehl_compute_index(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state)
 {
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
 		if (use_edp_low_vswing(encoder)) {
 			if (crtc_state->port_clock > 540000)
-				return 2;
+				return EHL_COMBO_EDP_HBR3;
 			else
-				return 1;
+				return EHL_COMBO_EDP_HBR2;
 		}
 	}
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (crtc_state->port_clock > 270000)
-			return 1;
+			return EHL_COMBO_EDP_HBR2;
 		else
-			return 0;
+			return EHL_COMBO_DP_HBR;
 	}
 
 	drm_WARN(to_intel_display(crtc_state)->drm, 1,
 		 "non-DP (%d) encoder asks to compute VS/PE-O index\n",
 		 crtc_state->output_types);
 
-	return -EINVAL;
+	return EHL_ERR;
 }
 
 static enum snps_c10_vspeo_index
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index a8c998fa339e6..aa2a47445af76 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -107,6 +107,14 @@ enum snps_c10_vspeo_index {
 	C10_EDP_HBR3
 };
 
+enum ehl_vspeo_index {
+	EHL_ERR = -1,
+
+	EHL_COMBO_DP_HBR = 0,
+	EHL_COMBO_EDP_HBR2,
+	EHL_COMBO_EDP_HBR3
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
-- 
2.45.2

