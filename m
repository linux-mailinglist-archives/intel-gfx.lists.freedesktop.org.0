Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iXT9CPjjS2q5cAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:20:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A7D713CC9
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:20:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IdlTbJ4Q;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1015E10EA0F;
	Mon,  6 Jul 2026 17:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B9F810E9FD;
 Mon,  6 Jul 2026 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783358452; x=1814894452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M4f7ymS0GmfolwfkJ/z2QDElHyuih8Xu5aQthr08X6I=;
 b=IdlTbJ4QBV1DxOJpGl3sVsfhQQFwX3mQ7W3aGLFYWMYR7+RgKjNniQAn
 Ehgob3hYtI6LXBILu8c4t/EOADCAzFPBwEgOcMjkZje6esh84sSTfE8M5
 HrDcHovov1sgoGHM0xe63ZAXjdYYBykEVeGN8sOATBH8TZ6qx0miZdrKz
 i5HAmf9cHQ8Bjl/p53pPS9uvFLbVOqnxq1biiy2H/ZmAV03bJqxxXnm6c
 Nc2Ofj1pFlw6u9DBeT7tNHkAcx4qejMjkq7OUFiFoycZpXTci3KkRLwKU
 PElbLpLSamA1sOyV3c2eDb10JbBb2As/nVaMQn9q+vloQyHmaIn2CIvqE w==;
X-CSE-ConnectionGUID: qNoBKLfGRl6Gb0SSxP/cYQ==
X-CSE-MsgGUID: npwsRm2tT9OXLevsGgyszw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="101417676"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="101417676"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 10:20:52 -0700
X-CSE-ConnectionGUID: UnSVrQWJQcq1sqXctX5rCg==
X-CSE-MsgGUID: goQr2AnyRd+ZDUcbJi/qMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="255704359"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa004.fm.intel.com with ESMTP; 06 Jul 2026 10:20:51 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v2 1/2] drm/i915/hdmi: Move audio compute config after format
 selection
Date: Mon,  6 Jul 2026 22:26:45 +0530
Message-Id: <20260706165646.2731978-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260706165646.2731978-1-chaitanya.kumar.borah@intel.com>
References: <20260706165646.2731978-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E5A7D713CC9

As we plan to add audio BW calculation in i915,
intel_audio_compute_config() would need the final output_format
and pipe_bpp to correctly determine audio bandwidth constraints.

Move the intel_audio_compute_config() call to after
intel_hdmi_compute_formats() returns, ensuring the audio
configuration is computed with the final parameters.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 8a019d3574df..6b0b7e6cda36 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2399,10 +2399,6 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (!intel_link_bw_compute_pipe_bpp(pipe_config))
 		return -EINVAL;
 
-	pipe_config->has_audio =
-		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	/*
 	 * Try to respect downstream TMDS clock limits first, if
 	 * that fails assume the user might know something we don't.
@@ -2417,6 +2413,10 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
+	pipe_config->has_audio =
+		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
+
 	ret = intel_pfit_compute_config(pipe_config, conn_state);
 	if (ret)
 		return ret;
-- 
2.25.1

