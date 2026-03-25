Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eF4IOs9rw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07ED31FC4E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5260E10E76E;
	Wed, 25 Mar 2026 04:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDjwIIFC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A20E10E76C;
 Wed, 25 Mar 2026 04:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414794; x=1805950794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ZdtL4VjT88tZ757ZAurFWbxyc5QhKJj3sNKswRYpp8=;
 b=lDjwIIFCjBbrOhb5vAmWcPAm1Zn4VgnWwIZ0I5cUXiEYFR1Sygi1/dCd
 NtsuZ4hMQ47EQoQzqR5kd6YHS62H6fEmTN6+Dlhzkpb3zt5aV6J2AOUIm
 P+KeMFEdC4z0e3+28iiOh7YqGAAdemYafd1mUNGZw8IFn3QHfjzX4ov/9
 fayJ1MqpKtfK9rQFah8xp97T+ml/uo1hggcxVCrgqRoaw44lJgj1Uw+oR
 AhQ55TQfjusYhNOaL1yn7gvYa5rjR/ASQcOYmHu7pjLCvkyMrz+eIEx9y
 xYK3hY9gIQriHYN4O2iValbsGA+UgGsneFAGBLsezS/F6msy2CTvYr/B9 Q==;
X-CSE-ConnectionGUID: ULi/19zyQ2ag592wSdtoYw==
X-CSE-MsgGUID: dNEfNhzAQxuzmZmvJ3qcvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922301"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922301"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:49 -0700
X-CSE-ConnectionGUID: WlqsmrJ6SDyyP2bXjzDF6w==
X-CSE-MsgGUID: nwGsjWyoTGu9YI+YWINi6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580518"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:47 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 09/26] drm/i915/writeback: Fill encoder->get_config
Date: Wed, 25 Mar 2026 10:28:59 +0530
Message-Id: <20260325045916.984243-10-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: C07ED31FC4E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fill the encoder->get_config hook with relevant data which helps
verify state.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 64769609aefe..1df04538d48c 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -100,6 +100,14 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
 	.mode_valid = intel_writeback_mode_valid,
 };
 
+static void
+intel_writeback_get_config(struct intel_encoder *encoder,
+			   struct intel_crtc_state *crtc_state)
+{
+	crtc_state->output_types |= BIT(INTEL_OUTPUT_WRITEBACK);
+	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
+}
+
 static bool
 intel_writeback_get_hw_state(struct intel_encoder *encoder,
 			     enum pipe *pipe)
@@ -170,6 +178,7 @@ int intel_writeback_init(struct intel_display *display)
 	encoder->type = INTEL_OUTPUT_WRITEBACK;
 	encoder->pipe_mask = ~0;
 	encoder->cloneable = 0;
+	encoder->get_config = intel_writeback_get_config;
 	encoder->get_hw_state = intel_writeback_get_hw_state;
 
 	connector = &writeback_conn->connector;
-- 
2.34.1

