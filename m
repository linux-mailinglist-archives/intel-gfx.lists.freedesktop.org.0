Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOpIGTczA2oA1gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 16:03:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6633521E57
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 16:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414A010EAAE;
	Tue, 12 May 2026 14:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JXGK6cPO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40BAA88E45;
 Tue, 12 May 2026 14:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594612; x=1810130612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xwf+C82lDCnNmueFA6XLuJaXaoElzhzNuZ04lom9qAQ=;
 b=JXGK6cPONYL/Q+X9JRnkAFdZTwwljxlX96lAkMR5StmVN8H/m7jTZpwI
 Goie6tgnegxDPu0RuReCXoxo62tA5uqHmugd9sQ4R5EQYUAmye5PDjS4m
 CMQp8CVIWXPOenZHEWSX7aDSnDVeJRsJIn2OYMsW/UH+WLdrgsEJXAZGn
 fcjlSXsK/49dv7M+cewlcjCkhncVLUZ8TzUB81PkyC2jNqV4Z2hIZBLFj
 7XcSC2PZg73P6eI4NxPQYT2XHNNyyVtiWmybKF2E8ZfF5h0Ght15XQ+mY
 u+lKoNFLf5sGnsfZ5IFklCo2nJfzrx5Aec4SyWdWZTuiYCHw8kBvrnOaO w==;
X-CSE-ConnectionGUID: zw4WeAZDQ4CR+QCCl0T94Q==
X-CSE-MsgGUID: 5r/KmCQXSjeqdhYquVR2UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="89806336"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="89806336"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:03:24 -0700
X-CSE-ConnectionGUID: LPMiF3q1TiubKp1gm43/BQ==
X-CSE-MsgGUID: mj6V+TKlQuW3K8ufKGKYfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="233311225"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa006.fm.intel.com with ESMTP; 12 May 2026 07:03:21 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 03/15] drm/i915/cmtg: Add cmtg transcoder offset in struct
 _device_info
Date: Tue, 12 May 2026 19:01:56 +0530
Message-Id: <20260512133208.1363116-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260512133208.1363116-1-animesh.manna@intel.com>
References: <20260512133208.1363116-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: B6633521E57
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

As all cmtg registers offset from base cmtg register is similar to
normal transcoder register, so follow existing way of defining
transcoder register for cmtg as well. Add base CMTG offset in
struct _display_device_info which will be used to derive the actual
register address for platform supporting CMTG.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c    | 14 ++++++++++++++
 .../gpu/drm/i915/display/intel_display_limits.h    |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 7260990038dd..be43e9c833ad 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -101,6 +101,8 @@ static const struct intel_display_device_info no_display = {};
 #define TRANSCODER_EDP_OFFSET 0x6f000
 #define TRANSCODER_DSI0_OFFSET	0x6b000
 #define TRANSCODER_DSI1_OFFSET	0x6b800
+#define TRANSCODER_CMTG0_OFFSET 0x6F000
+#define TRANSCODER_CMTG1_OFFSET 0x6F100
 
 #define CURSOR_A_OFFSET 0x70080
 #define CURSOR_B_OFFSET 0x700c0
@@ -1371,6 +1373,18 @@ static const struct intel_display_device_info xe2_hpd_display = {
 	XE_LPDP_FEATURES,
 	.__runtime_defaults.port_mask = BIT(PORT_A) |
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
+	.trans_offsets = {
+		[TRANSCODER_A] = TRANSCODER_A_OFFSET,
+		[TRANSCODER_B] = TRANSCODER_B_OFFSET,
+		[TRANSCODER_C] = TRANSCODER_C_OFFSET,
+		[TRANSCODER_D] = TRANSCODER_D_OFFSET,
+		[TRANSCODER_CMTG0] = TRANSCODER_CMTG0_OFFSET,
+		[TRANSCODER_CMTG1] = TRANSCODER_CMTG1_OFFSET,
+	},
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
+		BIT(TRANSCODER_CMTG0) | BIT(TRANSCODER_CMTG1),
 };
 
 static const u16 mtl_u_ids[] = {
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
index 453f7b720815..fc4321972f9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_limits.h
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -41,6 +41,8 @@ enum transcoder {
 	 * doesn't need to stay fixed.
 	 */
 	TRANSCODER_EDP,
+	TRANSCODER_CMTG0 = TRANSCODER_EDP,
+	TRANSCODER_CMTG1,
 	TRANSCODER_DSI_0,
 	TRANSCODER_DSI_1,
 	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
-- 
2.29.0

