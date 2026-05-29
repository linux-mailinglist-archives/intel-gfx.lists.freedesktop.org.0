Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBINIhfpGWpazwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6B7607DBB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BE4112469;
	Fri, 29 May 2026 19:29:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6wyn8+Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827D7112469;
 Fri, 29 May 2026 19:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780082963; x=1811618963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DwliBBOcUOy96vOCA/fHcIAurESLgJPyI/e4pZspjeo=;
 b=E6wyn8+ZBLx0BEKTs8ixhL/gs1ognm9jrebPM4K46G6zbfQABmYELQi1
 amoSsW1xs2wyzDU26x9L/gRLUgMh6bK+ioZISsLjyIckflPF2pUvtvCaK
 XZQMvQ586uOQsxPO6X0egEz9bsilmt69KZ7Pg91+Rx/8wfPX3DHRcpKym
 Mj/m1i1B2IEDbMBIkuz2ffRM1Dg8AAN9aw57Hx3C6+ixSg//Joug45xKs
 rGXRcaV/wxFT1nqvMN8JhF33yV52msZdJizQRsSFv3nSzxqGXn8dQm8bs
 ayRr9A2WAETbCTrONmr7gikYReVokj22mRInUGuiu32wBWOAPVYTkwFWp A==;
X-CSE-ConnectionGUID: aPKRabecQ9ysaSmggxi7Pw==
X-CSE-MsgGUID: HH3A9qyJTDqhq5kawWoyHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="103611810"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="103611810"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:29:23 -0700
X-CSE-ConnectionGUID: O3Xobo4RSz2WVhBZoz2i2w==
X-CSE-MsgGUID: u1pn43L+S6axpqNyd85yCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240393492"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 29 May 2026 12:29:22 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 06/10] drm/i915/buf_trans: abstract VS/PE-O access and
 index computation
Date: Fri, 29 May 2026 21:28:55 +0200
Message-ID: <20260529192859.4172376-7-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260529192859.4172376-1-michal.grzelak@intel.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 3C6B7607DBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Lay into intel_ddi_buf_trans_get() infrastructure for VS/PE-O.

Add (*get_phy_vspeo_index)() function hook into struct intel_encoder.
This function pointer is responsible for computing index of requested
table from VBT #57.

Add also (*get_phy_vspeo)() function hook into struct intel_encoder.
This function pointer will be the accessor which parses and sets port's
buffer basing on VBT #57's data.

Note that these two pointer need to be separate since they are taking
place during two different abstraction layers: (*get_phy_vspeo_index())
operates on crtc_state, while (*get_phy_vspeo)() consumes devdata.

Add generic function pointer indicating lack of VS/PE-O's support.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 30 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  5 ++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 4cd1e4d76c7a..fbd5efc5ca6c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1784,10 +1784,20 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static int
+_get_phy_vspeo_index(struct intel_encoder *encoder,
+		     const struct intel_crtc_state *crtc_state)
+{
+	return -EOPNOTSUPP;
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
+	encoder->get_phy_vspeo_index = _get_phy_vspeo_index;
+	encoder->get_phy_vspeo = NULL;
+
 	if (HAS_LT_PHY(display)) {
 		encoder->get_buf_trans = xe3plpd_get_lt_buf_trans;
 	} else if (DISPLAY_VER(display) >= 14) {
@@ -1857,5 +1867,23 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
-	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+	struct intel_display *display = to_intel_display(encoder);
+	const struct intel_ddi_buf_trans *buf_trans;
+	bool vspeo;
+	int table;
+
+	vspeo = intel_bios_encoder_requests_vspeo(encoder->devdata);
+	if (!vspeo)
+		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+
+	table = encoder->get_phy_vspeo_index(encoder, crtc_state);
+	if (table < 0) {
+		drm_WARN_ONCE(display->drm, 1,
+			      "platform does not support VS/PE-O, setting default\n");
+
+		return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+	}
+
+	buf_trans = encoder->get_phy_vspeo(encoder->devdata, table);
+	return intel_get_buf_trans(buf_trans, n_entries);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c21e0c0ef0b1..829e17fbfb0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -292,6 +292,11 @@ struct intel_encoder {
 	void (*set_signal_levels)(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
 
+	int (*get_phy_vspeo_index)(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state);
+	const struct intel_ddi_buf_trans *(*get_phy_vspeo)(const struct intel_bios_encoder_data *devdata,
+							   int idx);
+
 	enum hpd_pin hpd_pin;
 	enum intel_display_power_domain power_domain;
 
-- 
2.45.2

