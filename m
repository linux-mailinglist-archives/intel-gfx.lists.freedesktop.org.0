Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMytAJEj4GmtcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB60A409114
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B64910E7E5;
	Wed, 15 Apr 2026 23:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eJ77wl+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDDD210E7DD;
 Wed, 15 Apr 2026 23:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296845; x=1807832845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PgJJSHzx3KFpbJMz3ttKt6OpWBc2lART3Stb49JZFb4=;
 b=eJ77wl+KMN5vin3iEGrrMEhSMhkzxe3zUy/QM5z+6LoZ80mjI9uTCaTJ
 OugDprT4tbrC6D7mVgpFP4826tWAxUK5obD327zP/nAb4sZmOOp0fzPhu
 bwOuJmIJbXqGOgTUVRU+1KyeW0okj0c17xNJsYsuOixcBqw7on6WOn3Es
 gEJCWPdIv9dMG4OadBjrWUtDtiiaaSUC/na2cyLdmPTedt7XFfufJ0X4G
 uURoxC0n6bQ5J7bUmIBG+HzfHYYfJk9mLGu3DqF2yLor0Zu1j7oNdJU3N
 HMfgGtoMkFvsEYL2hjGFu977DOO2rNrtBV82V6QtPN0URd1OI5Yfb1aok w==;
X-CSE-ConnectionGUID: EEu7OyvzTEytAnhexVAe3Q==
X-CSE-MsgGUID: /5t6NnxzROy8PwvaDKhbNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403518"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403518"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:25 -0700
X-CSE-ConnectionGUID: zz3hqttTToGIURFNDL4wHQ==
X-CSE-MsgGUID: /1RKE1GvQvioFEmaKj27sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511232"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:24 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 24/32] drm/i915/buf_trans: compute C10's VS/PE-O index
Date: Thu, 16 Apr 2026 01:46:31 +0200
Message-ID: <20260415234639.3577774-25-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: CB60A409114
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Compute the most appropriate VS/PE-O index for C10.

For external DP use 2nd table if encoder supports any mode beyond or
including HBR2. Use 1st table if external DP encoder supports anything
lower than HBR2.

For eDP use 4th table if encoder supports HBR3. Otherwise use 3rd table
for eDP.

Warn if encoder does not support DP. In that case fallback to using
default VS/PE tables.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 28 ++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 5d1d258f6b6a6..d163a021569bc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,6 +1786,30 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static int
+snps_c10_compute_index(const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		if (crtc_state->port_clock > 540000)
+			return 3;
+		else
+			return 2;
+	}
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (crtc_state->port_clock > 270000)
+			return 1;
+		else
+			return 0;
+	}
+
+	drm_WARN(to_intel_display(crtc_state)->drm, 1,
+		 "non-DP (%d) encoder asks to compute VS/PE-O index\n",
+		 crtc_state->output_types);
+
+	return -1;
+}
+
 static enum snps_c20_vspeo_index
 snps_c20_compute_index(const struct intel_crtc_state *crtc_state)
 {
@@ -1829,7 +1853,9 @@ vspeo_compute_index(struct intel_encoder *encoder,
 	if (HAS_LT_PHY(display)) {
 		return lt_compute_index(crtc_state);
 	} else if (DISPLAY_VER(display) >= 14) {
-		if (!intel_encoder_is_c10phy(encoder))
+		if (intel_encoder_is_c10phy(encoder))
+			return snps_c10_compute_index(crtc_state);
+		else
 			return snps_c20_compute_index(crtc_state);
 	}
 
-- 
2.45.2

