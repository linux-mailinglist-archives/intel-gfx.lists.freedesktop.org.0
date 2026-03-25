Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEvxAifCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D50D53238B9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65AC410E85F;
	Wed, 25 Mar 2026 11:08:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TvOc/X/H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C95B10E863;
 Wed, 25 Mar 2026 11:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436900; x=1805972900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v3Txxn1Cz9ZhrzG+YyeLLTbOiPuX0XkViWnaxfYpcEw=;
 b=TvOc/X/Hbl0V/A2zGo72CfOR08s/ZWhXVDfHsF3bLnATgdY1NDLtGR5M
 xkhDjIyLXOGKWFghxoPMRMfJD0ytFBjMMxrzQGWLsTGoObBrit9/G+Bqu
 qeaTDAGrPOcnKYmITVCeGjy7QKLmKK5/Gf4dAWaEW88rGbxDsLkaMEP4R
 vPmgePu5rphLuqPkGE+jq5Qg/NvS31XqDm1m4lIbVYFFjzu02mloTk1GS
 5crBx8i3xK/DPiUqg8+ho03a+WDcBRQgtmLQPEJYa0RSUErdNxsqoceQm
 ogAuaj3LLxR4toGXgD1pRstA+/+LLHlTVFu1oeaimdVR0Gc0SQPBWwkEQ Q==;
X-CSE-ConnectionGUID: tHba0aiDSEapTghBIjgiAw==
X-CSE-MsgGUID: Cmqat/ekT9CJEIZFwQnzGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047522"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047522"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:20 -0700
X-CSE-ConnectionGUID: 6jwlG8/BTWmyWnFYzGEUYw==
X-CSE-MsgGUID: CHuBXMv/SuiUzZ6bdQTAcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798375"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 12/26] drm/i915/writeback: Define compute_config for
 writeback
Date: Wed, 25 Mar 2026 16:37:30 +0530
Message-Id: <20260325110744.1096786-13-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: D50D53238B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define the compute config function where we assign the output_type
and add the transcoder that needs to be used. We currently assign
one WD0 transcoder.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 4a40fda639ca..b9350d97de09 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -171,6 +171,25 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
 	.cleanup_writeback_job = intel_writeback_cleanup_job,
 };
 
+static int
+intel_writeback_compute_config(struct intel_encoder *encoder,
+			       struct intel_crtc_state *pipe_config,
+			       struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (!conn_state->writeback_job)
+		return 0;
+
+	if (HAS_TRANSCODER(display, TRANSCODER_WD_0))
+		pipe_config->cpu_transcoder = TRANSCODER_WD_0;
+
+	pipe_config->output_types |= BIT(INTEL_OUTPUT_WRITEBACK);
+	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+
+	return 0;
+}
+
 static void
 intel_writeback_get_config(struct intel_encoder *encoder,
 			   struct intel_crtc_state *crtc_state)
@@ -251,6 +270,7 @@ int intel_writeback_init(struct intel_display *display)
 	encoder->cloneable = 0;
 	encoder->get_config = intel_writeback_get_config;
 	encoder->get_hw_state = intel_writeback_get_hw_state;
+	encoder->compute_config = intel_writeback_compute_config;
 
 	connector = &writeback_conn->connector;
 	ret = intel_writeback_connector_alloc(connector);
-- 
2.34.1

