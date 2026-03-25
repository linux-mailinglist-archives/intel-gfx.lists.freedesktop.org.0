Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL18Duprw2k7qwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B531FCB6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526D210E785;
	Wed, 25 Mar 2026 05:00:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4pD6l98";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3260610E77E;
 Wed, 25 Mar 2026 05:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414811; x=1805950811;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9KIWOsl3SL20MoK0iM2hfStJ7MBmlZljZrc5RSYxhOI=;
 b=Q4pD6l98VSGo9bMDL43i6aecWsXyKgJtEj+5MQI3ceNTXqIViBU3CvBh
 gaW/AauoNWU0g3WT3lFjaWB+L2cVsiDBn+VAhIE+9Vmo81PUuIX9BwrdK
 2P1RXognQ3NlIx2N+QthuBTWObhbg9hfcvJGgpffxTXxAZJSIbpz2US2H
 ls5L91uUamrzk5u6lUy4X01BtBERhUDgpUujsLqxd5fP1HiM/gD+4mKF0
 nphYsyxuBlKpA08nW6GSVfc6rC354rAAulS0uG1G33fMeTbLnCawlpHC9
 YRO/69gGjNuIcjHVYbVFrarIv/yIXnYdZIb3iA9F0RRXSSje0eP9tGbjs A==;
X-CSE-ConnectionGUID: HlbIbDzVTAG9ojmnCSxjIQ==
X-CSE-MsgGUID: jkOjvGqvT26B8K/g9j+c4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922327"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922327"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:00:05 -0700
X-CSE-ConnectionGUID: gCrLEG3gSMutQEP5weS7tw==
X-CSE-MsgGUID: 3IELUku6Sxe9yTJU0gWpYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580685"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 22:00:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 15/26] drm/i915/writeback: Add connector atomic check
Date: Wed, 25 Mar 2026 10:29:05 +0530
Message-Id: <20260325045916.984243-16-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: C77B531FCB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add connector helper function for atomic check which sets the
mode_changed bit and checks if pixel format of fb is valid or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index a2a924edee52..722253e7341c 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -166,6 +166,54 @@ static void intel_writeback_connector_destroy(struct drm_connector *connector)
 	kfree(connector);
 }
 
+static int intel_writeback_check_format(u32 format)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(writeback_formats); i++) {
+		if (writeback_formats[i] == format)
+			return 0;
+	}
+
+	return -EINVAL;
+}
+
+static int intel_writeback_atomic_check(struct drm_connector *connector,
+					struct drm_atomic_state *state)
+{
+	struct drm_connector_state *conn_state =
+		drm_atomic_get_new_connector_state(state, connector);
+	struct drm_crtc_state *crtc_state;
+	struct drm_framebuffer *fb;
+	int ret;
+
+	/* We return 0 since this is called while disabling writeback encoder */
+	if (!conn_state->crtc)
+		return 0;
+
+	/* We do not allow a blank commit when using writeback connector */
+	if (!conn_state->writeback_job)
+		return -EINVAL;
+
+	fb = conn_state->writeback_job->fb;
+	if (!fb)
+		return -EINVAL;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (fb->width != crtc_state->mode.hdisplay ||
+	    fb->height != crtc_state->mode.vdisplay)
+		return -EINVAL;
+
+	ret = intel_writeback_check_format(fb->format->format);
+	if (ret) {
+		drm_dbg_kms(connector->dev,
+			    "Unsupported drm format sent in writeback job\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
@@ -181,6 +229,7 @@ const struct drm_connector_funcs conn_funcs = {
 static const struct drm_connector_helper_funcs conn_helper_funcs = {
 	.get_modes = intel_writeback_get_modes,
 	.mode_valid = intel_writeback_mode_valid,
+	.atomic_check = intel_writeback_atomic_check,
 	.prepare_writeback_job = intel_writeback_prepare_job,
 	.cleanup_writeback_job = intel_writeback_cleanup_job,
 };
-- 
2.34.1

