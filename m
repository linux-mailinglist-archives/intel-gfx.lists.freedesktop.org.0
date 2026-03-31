Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPFuGMoTzGkvOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C11370085
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D3610EB30;
	Tue, 31 Mar 2026 18:34:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LWO5VHln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BB810EB35;
 Tue, 31 Mar 2026 18:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982087; x=1806518087;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GvymCEhcbfDRlsmJG/pyC77U67kcCR8vN6NYq8dtFfM=;
 b=LWO5VHlnAHPxSWgFM/tgU0zR/K/5FFCi4Qcn1zQFEB5v/E2Mz42Hx5E8
 IPHBHUaJBm4OSCvEkXaY/ybzjoT6KY5STzcBmpux+B9lHrFVcjFZSdS6L
 A/8Ar94BZ4hyqNinvXAJ8mmIKl4dUWKwAXCoCadj5rO34eUh4PbBsuwty
 Ha17KILV1CZ0PI8m5h8XnBv5tNcVsadpzuJGivoxsSzlz/R6NFVYrGMHR
 XE5ixH5aY+O45hJcAQsCzb9K6jraErcSLczuWfT2siZ8RRTKzn66VOPzn
 uhzqGa6cP/LeZdjhZ1z6nOXaycC3XMfTLkmOpKb63sXhRfjMnRXy9IEjE g==;
X-CSE-ConnectionGUID: 4FeDGKJfQP6NNmfpJ7wviQ==
X-CSE-MsgGUID: wZx7hcRbT+6CBp709bfFJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705198"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705198"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:46 -0700
X-CSE-ConnectionGUID: xpSLWUKqTlWi59A2rOuYIg==
X-CSE-MsgGUID: bsYZQnszRR2BU+lWRULoow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944523"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:46 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 13/16] drm/i915/buf_trans: compute Snps's VS/PE Override
 index
Date: Tue, 31 Mar 2026 20:33:29 +0200
Message-ID: <20260331183332.1773886-14-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260331183332.1773886-1-michal.grzelak@intel.com>
References: <20260331183332.1773886-1-michal.grzelak@intel.com>
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
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C7C11370085
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for VS/PE Override on Snps platforms. Basing on the mode &
CRTC type found, compute the most appropriate index. Assume default
index as 0.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index e94b1eb84e58..6978ad32ef2a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,6 +1786,36 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static enum snps_vswing_preemph_index
+_compute_index_snps_c10(const struct intel_crtc_state *crtc_state)
+{
+        if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP)) {
+		if (crtc_state->port_clock > 270000)
+                        return MTL_C10_VS_PE_DP14_HBR2_HBR3;
+                else
+                        return MTL_C10_VS_PE_DP14_RBR_HBR;
+        } else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)){
+		if (crtc_state->port_clock > 540000)
+                        return MTL_C10_VS_PE_EDP_HBR3;
+                else
+                        return MTL_C10_VS_PE_EDP_NON_HBR3;
+        }
+
+        return (enum snps_vswing_preemph_index) 0;
+}
+
+static enum snps_vswing_preemph_index
+_compute_index_snps_c20(const struct intel_crtc_state *crtc_state)
+{
+        if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state)) {
+                return MTL_C20_VS_PE_DP20;
+        } else if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+                return MTL_C20_VS_PE_DP14;
+        }
+
+        return (enum snps_vswing_preemph_index) 0;
+}
+
 static enum lt_vswing_preemph_index
 _compute_index_lt(const struct intel_crtc_state *crtc_state)
 {
@@ -1814,6 +1844,11 @@ vswing_preemph_compute_index(struct intel_encoder *encoder,
 
 	if (HAS_LT_PHY(display)) {
 		index.lt = _compute_index_lt(crtc_state);
+	} else if (DISPLAY_VER(display) >= 14) {
+		if (intel_encoder_is_c10phy(encoder))
+			index.snps = _compute_index_snps_c10(crtc_state);
+		else
+			index.snps = _compute_index_snps_c20(crtc_state);
 	} else {
 		drm_dbg_kms(display->drm, "using default VS/PE Override index");
 		index = (union ddi_vswing_preemph_index) 0;
@@ -1828,6 +1863,8 @@ vswing_preemph_cast_index(struct intel_display *display,
 {
 	if (HAS_LT_PHY(display)) {
 		return index.lt;
+	} else if (DISPLAY_VER(display) >= 14) {
+		return index.snps;
 	}
 
 	return 0;
-- 
2.45.2

