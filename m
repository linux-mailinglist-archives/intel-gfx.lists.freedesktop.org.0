Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBoKKYkj4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5793F4090F6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17C110E7D5;
	Wed, 15 Apr 2026 23:47:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OcTdQ2+j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9168B10E7D5;
 Wed, 15 Apr 2026 23:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296839; x=1807832839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j1OPGTc+FWTeKUy7TxESJAJdqi4UMJvZMdBOlApiD2Y=;
 b=OcTdQ2+jVBkrGM6pENMcdUfGzuo3jyIMxquOgAjvFLBa7troSiK3ytvF
 m9Oy0lXsxbJzBL9XHHtXfzsJq52QLPmgLxtbVAvdSkUF8cHDzyPq/S7fm
 8t9MczLbY/0PrkXFeCP1p2hdKgAzWvxDAu1qn/PaeR4dH6t/tyveVu7Dy
 wczbWc8qKXh6tAaoXl2s1c5xh8OTsuB+v/0lpjXw23cu4YSlglMe/fTzJ
 zrmufXN+FPKGc0HL8yEMFsirEuM83kBdUYpewkU+g35Sk8xAd6c89JDZO
 E1e3llfcjz30HTRHqJBfVYZ0yHQStLWMK30YfguMRv3YOXTb29yjXhhf5 g==;
X-CSE-ConnectionGUID: zC/kOSjWRIuDod7QwtWUKQ==
X-CSE-MsgGUID: 8B82c1XVSJicqA/A9iORdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403512"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403512"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:18 -0700
X-CSE-ConnectionGUID: EeuI/MpeRNSWz+204Tn27A==
X-CSE-MsgGUID: WoaWFcsTQsGDLanbMfLvpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511207"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:17 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 19/32] drm/i915/buf_trans: enumerate LT's VS/PE-O indices
Date: Thu, 16 Apr 2026 01:46:26 +0200
Message-ID: <20260415234639.3577774-20-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 5793F4090F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 62bd91e64f574..c344680d5b93e 100644
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
 
-	return -1;
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

