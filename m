Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OK4TAXmwBGp6NAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D393537BCF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167CA10EF9F;
	Wed, 13 May 2026 17:10:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TUInkBmI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF4B10EFA2;
 Wed, 13 May 2026 17:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778692213; x=1810228213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TLD9yFgbERWYAV/iS+WAqo5zfv9SU+YCkbB4yHc+QtQ=;
 b=TUInkBmIB1t3mDxERsS+bJN8SpaXB/Fd2lExxqC+wbIc51y3h/rtFXaF
 4Xj8srw2gekMnu4CdCy98BwdqSPhq1y7zWXGGNxgSxKRMXZHlnH+354Qs
 B8cvuaYNhkIQsBGYBLAqp2+ZI47ej7oplz5MxQ7D6Sd8nTNFv4v9BpexK
 6NL6vvXatUI2pNn/GqEbCkRXcRxw7Dtsq33iAbUpek26h3AUr19ktkFvk
 Zqrk2Mw4fugMCf3oSSRvzwoRVqYkttuKSpqpj9VvY8C5c5N9tOKbBrqsU
 mnbVcmDYMC1/uhMLMde+YIgj+Cy0M7invefC4UOB7GhtvYNFxvQOXQr4P Q==;
X-CSE-ConnectionGUID: IIN7u1XMQAWgSfkhdxOVQg==
X-CSE-MsgGUID: g93/F1oUQvqCZ1oBhPspqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="102295306"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="102295306"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 10:10:13 -0700
X-CSE-ConnectionGUID: +ZmExOYbSPSHrUOmo8fsXA==
X-CSE-MsgGUID: gn1oxe5gQjq1jHAbMoRmPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="238030176"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 13 May 2026 10:10:11 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 03/16] drm/i915/cmtg: Add cmtg transcoder offset in struct
 _device_info
Date: Wed, 13 May 2026 22:08:44 +0530
Message-Id: <20260513163857.1541888-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260513163857.1541888-1-animesh.manna@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 8D393537BCF
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
 .../gpu/drm/i915/display/intel_display_device.h    |  2 +-
 .../gpu/drm/i915/display/intel_display_limits.h    |  2 ++
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 7260990038dd..b46db2e255b0 100644
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
@@ -1352,6 +1354,18 @@ static const struct intel_display_device_info xe2_lpd_display = {
 		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) |
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
 	.__runtime_defaults.has_dbuf_overlap_detection = true,
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
 
 static const struct intel_display_device_info wcl_display = {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 074e3ba8fb77..ceafda7479d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -293,7 +293,7 @@ struct intel_display_runtime_info {
 	u32 rawclk_freq;
 
 	u8 pipe_mask;
-	u8 cpu_transcoder_mask;
+	u16 cpu_transcoder_mask;
 	u16 port_mask;
 
 	u8 num_sprites[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
index 453f7b720815..ea89473c177f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_limits.h
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -45,6 +45,8 @@ enum transcoder {
 	TRANSCODER_DSI_1,
 	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
 	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
+	TRANSCODER_CMTG0,
+	TRANSCODER_CMTG1,
 
 	I915_MAX_TRANSCODERS
 };
-- 
2.29.0

