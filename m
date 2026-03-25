Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICbVKjzCw2kOuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AF2323913
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9169110E876;
	Wed, 25 Mar 2026 11:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/91LTI0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7711010E875;
 Wed, 25 Mar 2026 11:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436920; x=1805972920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7cj3bXj1QXsEX8KHB2VxKsnDsRI8Cl/G1nTPCfial+o=;
 b=H/91LTI0KBxH2k67Pmlzomc5jSs1V3kKagbnyENhgFM9RnlfMHPz3knf
 wD/kLlqz+UywcSk5g4W6wlAVJSaU9rxZ7JspwT9N44ER16EcKYY4dL+WJ
 WC22DK0jYPs5AdYec+j9ltZoZaDKx5s6Dc3gidr5oP+XAp512PtA4Sooe
 7mxH7I1CQGzv+9CjDU6eAYH0BENENqsEGVw+MAR7lFardHJ26UsRN9zF8
 VYve2Pg6E2cV/RHYacOz2L2lkjlBW3JYmICA8fS8yJIDZtGUvsI0fZxM3
 zlcbcuzYJblnP7wVh1EG/BUbPGoseM5iEOBQrXfophLLeENd95NvVJuaL w==;
X-CSE-ConnectionGUID: gGeB1O+0RP6nXO32YBZbQg==
X-CSE-MsgGUID: qX5gPL6AT7OywKsfvogKwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047536"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047536"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:40 -0700
X-CSE-ConnectionGUID: OyzMN05HRv65hsXoCT12hg==
X-CSE-MsgGUID: kvlIDsp2RPyKTRKtskIxAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798424"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 20/26] drm/i915/writeback: Configure WD_STRIDE reg
Date: Wed, 25 Mar 2026 16:37:38 +0530
Message-Id: <20260325110744.1096786-21-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 61AF2323913
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Write to the WD_STRIDE register using the appropriate calculation
based on the color mode and hactive.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 36 +++++++++++++++++++
 .../drm/i915/display/intel_writeback_reg.h    |  1 +
 2 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index d3c3716a28a9..e2f7c46015d2 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -231,15 +231,51 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
 	return 0;
 }
 
+static int
+get_color_mode_bpp(struct intel_display *display, u32 color_format)
+{
+	int bpp = 0;
+
+	switch (color_format) {
+	case DRM_FORMAT_XYUV8888:
+	case DRM_FORMAT_YUYV:
+	case DRM_FORMAT_VYUY:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_XBGR2101010:
+	case DRM_FORMAT_XVYU2101010:
+		bpp = 4;
+		break;
+	default:
+		drm_err(display->drm, "Unsupported format for writeback\n");
+		break;
+	}
+
+	return bpp;
+}
+
 static void intel_writeback_capture(struct intel_atomic_state *state,
 				    struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_writeback_connector *wb_conn =
 		conn_to_intel_writeback_connector(connector);
+	struct drm_connector_state *conn_state =
+		drm_atomic_get_new_connector_state(&state->base, &connector->base);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, wb_conn->pipe);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	struct drm_writeback_job *wb_job = conn_state->writeback_job;
 	enum transcoder trans = wb_conn->trans;
 	u32 val = 0;
+	int bpp;
 
+	bpp = get_color_mode_bpp(display, wb_job->fb->format->format);
+	val = DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);
+	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
+
+	val = 0;
 	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
 	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
 		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
index 5e7c6c99d191..f526af0f9aff 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
+++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
@@ -60,6 +60,7 @@
 					_WD_STRIDE_0,\
 					_WD_STRIDE_1)
 #define WD_STRIDE_MASK			REG_GENMASK(15, 6)
+#define WD_STRIDE_VAL(val)		REG_FIELD_PREP(WD_STRIDE_MASK, val)
 
 #define _WD_STREAMCAP_CTL0		0x6e590
 #define _WD_STREAMCAP_CTL1		0x6ed90
-- 
2.34.1

