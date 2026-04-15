Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPa4AbEj4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:48:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E047F409170
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7075E10E802;
	Wed, 15 Apr 2026 23:47:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSH62i+u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9500110E7EC;
 Wed, 15 Apr 2026 23:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296852; x=1807832852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XzGwAc1B0hTY+RI+VXHfDblS9YZqO4TDHVkYnmrpHII=;
 b=ZSH62i+uEw6xPQlPaiIX280OENA8jKBEQxMRcJSXKg/1X5mFrTKGAhgw
 EZ5c42ngq5zPAwkoYk/WIkT2lkElGhIG3a8kbpSTLgC6DaqnbHk8Blt7X
 5Sb9y+GI+ldxngVZrbUTK/qqG96WTRgED/2/NgAfwY/7uO3czAN9Sxt+8
 VbbxjzYwSKobYLJjuyTNTf9ScclmojefR88HyIDVuJXn9Jpd4dy/KxNKb
 TJu01cMgZvzlfx+5LP8FbBUKknSCdpjKZecinzpY6c+l9fn/MArDosFu1
 i2pT4sXcesAJEVOQxDAhsI2dP7zdj/PKobglFwjsiFwrCktkIE1luCIqr g==;
X-CSE-ConnectionGUID: ZEwg0BGeQTaqpQ7J9T8+jQ==
X-CSE-MsgGUID: FVNYfmQqS4yPRf8Sv3+M4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403528"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403528"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:31 -0700
X-CSE-ConnectionGUID: Q5Z3zyBoQgKl4zSiRs3g/w==
X-CSE-MsgGUID: H9AQQN0ARf2g3XcXwsMYEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511251"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:30 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 29/32] drm/i915/buf_trans: enumerate EHL's VS/PE-O indices
Date: Thu, 16 Apr 2026 01:46:36 +0200
Message-ID: <20260415234639.3577774-30-michal.grzelak@intel.com>
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
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E047F409170
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 6001515acc1db..9b39774434c66 100644
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
 
-	return -1;
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

