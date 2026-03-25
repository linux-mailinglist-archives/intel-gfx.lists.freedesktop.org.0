Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EKVDtBrw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F1831FC4F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4ED10E775;
	Wed, 25 Mar 2026 04:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L7YLAT7u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5441310E76D;
 Wed, 25 Mar 2026 04:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414794; x=1805950794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/4Z3gfn4QWwwK/Z00f8oU5JwgXBjG1MzhngyT7Q6EMo=;
 b=L7YLAT7uN/UQ0xBHXAXRt3lPF6n/6x2lOH89EtsXsZPc2bYIssOI9Zm+
 UWVOZpzMT1ego0+PGRtAhghMhSlQNEIbMgjmBniw3WbUeKmed1ClmIyE6
 C4MYuMNRQ+IsuF2YK2Em5Uqi3pLefdV/tNOxRzUCHJ6tldq05xNs5DSPa
 eUkXyGMP8gj/DFp/UHpfL1FXfknon7fmr67OWn+/P1SPaBsqeTFfLR0kr
 oXmapdw0Wkwi/12OUwK+mxPnS4xlxbUeKJIlMqX0uyXL/xfh9VAbD5U+d
 z3jeJsBq+thYv1oBrntfqm7dsn2/OaTkWDReHaUR5Yo6EE81WjE+AlEDx w==;
X-CSE-ConnectionGUID: 9nFKnDriRwK1laI+u/aGCw==
X-CSE-MsgGUID: gxUWxeRsR9SToR+ojeMCDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922291"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922291"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:47 -0700
X-CSE-ConnectionGUID: D2O834bbTaimlDL5W4Jyxw==
X-CSE-MsgGUID: aiPrI+kaSd6WZJ/XvupLwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580509"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:44 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 08/26] drm/i915/writeback: Define encoder->get_hw_state
Date: Wed, 25 Mar 2026 10:28:58 +0530
Message-Id: <20260325045916.984243-9-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: D9F1831FC4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define the get_hw_state function for encoder which
get's the encoder state, pipe config.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
 .../drm/i915/display/intel_writeback_reg.h    |  3 ++
 2 files changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 765f62fa38f8..64769609aefe 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -17,7 +17,9 @@
 #include "intel_de.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_writeback.h"
+#include "intel_writeback_reg.h"
 
 struct intel_writeback_connector {
 	struct intel_connector connector;
@@ -98,6 +100,52 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
 	.mode_valid = intel_writeback_mode_valid,
 };
 
+static bool
+intel_writeback_get_hw_state(struct intel_encoder *encoder,
+			     enum pipe *pipe)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	u8 pipe_mask = 0;
+	u32 tmp;
+
+	/* TODO need to be done for both the wd transcoder */
+	tmp = intel_de_read(display,
+			    TRANSCONF_WD(TRANSCODER_WD_0));
+	if (!(tmp & WD_TRANS_ENABLE))
+		return false;
+
+	tmp = intel_de_read(display,
+			    WD_TRANS_FUNC_CTL(TRANSCODER_WD_0));
+
+	if (!(tmp & TRANS_WD_FUNC_ENABLE))
+		return false;
+
+	switch (tmp & WD_INPUT_SELECT_MASK) {
+	case WD_INPUT_PIPE_A:
+		pipe_mask |= BIT(PIPE_A);
+		break;
+	case WD_INPUT_PIPE_B:
+		pipe_mask |= BIT(PIPE_B);
+		break;
+	case WD_INPUT_PIPE_C:
+		pipe_mask |= BIT(PIPE_C);
+		break;
+	case WD_INPUT_PIPE_D:
+		pipe_mask |= BIT(PIPE_D);
+		break;
+	default:
+		MISSING_CASE(tmp & WD_INPUT_SELECT_MASK);
+		fallthrough;
+	}
+
+	if (pipe_mask == 0)
+		return false;
+
+	*pipe = ffs(pipe_mask) - 1;
+
+	return true;
+}
+
 int intel_writeback_init(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
@@ -122,6 +170,7 @@ int intel_writeback_init(struct intel_display *display)
 	encoder->type = INTEL_OUTPUT_WRITEBACK;
 	encoder->pipe_mask = ~0;
 	encoder->cloneable = 0;
+	encoder->get_hw_state = intel_writeback_get_hw_state;
 
 	connector = &writeback_conn->connector;
 	ret = intel_writeback_connector_alloc(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
index ffe302ef3dd9..5e7c6c99d191 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
+++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
@@ -19,6 +19,9 @@
 /* Gen12 WD */
 #define _MMIO_WD(tc, wd0, wd1)	_MMIO_TRANS((tc) - TRANSCODER_WD_0, wd0, wd1)
 
+#define TRANSCONF_WD(tc)	_MMIO_WD(tc,\
+				PIPE_WD0_OFFSET,\
+				PIPE_WD1_OFFSET)
 #define WD_TRANS_ENABLE		REG_BIT(31)
 #define WD_TRANS_STATE		REG_BIT(30)
 
-- 
2.34.1

