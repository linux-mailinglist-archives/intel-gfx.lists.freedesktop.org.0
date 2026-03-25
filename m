Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEA8J0TCw2kOuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C596323941
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 085C110E87D;
	Wed, 25 Mar 2026 11:08:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRS6uKbM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF7B10E87A;
 Wed, 25 Mar 2026 11:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436930; x=1805972930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TfPqfUrxc8mdsHQ+9RQ4o74GkNRMvsSfieBUN83KiMs=;
 b=LRS6uKbMyUXIW2P+1goVGgaeakasDXioZvIGK5b3oaNKUMailn7Y8ldE
 APoKlN49fg7tKncObeVvuu3/PKO1zhRJqwMSS84inwzkfU3LpB3ETRWJ5
 RVrtY/zDa6GBNc5c6p1gzVmR8Ec19RZ/n+xksFNTlWVP8YmTQoMkoco2g
 ZaTYBp8JsZ/LjjQ3lIRn74W2c9rOKTM9HkQnfqfkh2lZoozdPpdy91LO6
 BHjdGLGidE5XeF8b2F92gLxzGDiEp3YkF/ffb9W+Jo2Bg3ZegkTd+Pz+Q
 VCqGJOFBKZi/N5v6UpzVXIVXw4yay3g6Jn/AJdqrDZ//xyCgBLfkqnm/A Q==;
X-CSE-ConnectionGUID: 3+82cRBHS2WvHLlkwYRCXw==
X-CSE-MsgGUID: vBzGZA3pSaKs6f4S8RnKxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047545"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047545"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:50 -0700
X-CSE-ConnectionGUID: /vrcKvbXSq2p3YEV4r9Aig==
X-CSE-MsgGUID: 7RbLAHf0TKm40Fc4VJl29w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798450"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 24/26] drm/i915/writeback: Define the disable sequence for
 writeback
Date: Wed, 25 Mar 2026 16:37:42 +0530
Message-Id: <20260325110744.1096786-25-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 6C596323941
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define the disable sequence for a writeback encoder. We only disable
the encoder if no writeback job is pending, if it is then we just
need to disable the wd function so that values can be updated
accordingly.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 864d4a28de10..870fbfdddef5 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -559,6 +559,33 @@ void intel_writeback_isr_handler(struct intel_display *display)
 	}
 }
 
+static void
+intel_writeback_disable_encoder(struct intel_atomic_state *state,
+				struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state,
+				const struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_writeback_connector *wb_conn =
+		enc_to_intel_writeback_connector(encoder);
+	struct intel_crtc *pipe_crtc;
+	int i = 0;
+
+	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, crtc_state, i) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_off(old_pipe_crtc_state);
+	}
+
+	intel_de_rmw(display, TRANSCONF_WD(crtc_state->cpu_transcoder), WD_TRANS_ENABLE,
+		     REG_FIELD_PREP(WD_TRANS_ENABLE, 0));
+	intel_de_rmw(display, WD_TRANS_FUNC_CTL(crtc_state->cpu_transcoder),
+		     TRANS_WD_FUNC_ENABLE,
+		     REG_FIELD_PREP(TRANS_WD_FUNC_ENABLE, 0));
+	wb_conn->frame_num = 1;
+}
+
 int intel_writeback_init(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
@@ -587,6 +614,7 @@ int intel_writeback_init(struct intel_display *display)
 	encoder->get_hw_state = intel_writeback_get_hw_state;
 	encoder->compute_config = intel_writeback_compute_config;
 	encoder->enable = intel_writeback_enable_encoder;
+	encoder->disable = intel_writeback_disable_encoder;
 
 	connector = &writeback_conn->connector;
 	ret = intel_writeback_connector_alloc(connector);
-- 
2.34.1

