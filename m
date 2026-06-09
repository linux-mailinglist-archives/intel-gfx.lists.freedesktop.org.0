Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VeYNOiMBKGo17AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779C665FCA5
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HWeJMtcI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22AB10E2CD;
	Tue,  9 Jun 2026 12:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A559010E2C3;
 Tue,  9 Jun 2026 12:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006624; x=1812542624;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=650On4qhd1nVdhG5yEtnAcxOCrJ0qVZMHDvEqZatD6Q=;
 b=HWeJMtcIYCb69towNW41KkoJrLpgMYxlXSM79VCqPpYzVIe5mA7TOpR3
 0vv4jC5srkdH/AUiyyGXXZi2US94RoEB+cRp+i4jG5yhkdh3v/PG0fhe2
 Lr/ruM1ZBxJ5J9oDVKoBpYAcZYFdSCkShUj3mZTD6FVm/9xB2PxTpI0CH
 1tlNZtUOXfx74DIORcwQLb5gMm15D7cKVaBgHqfY3XrmCN6hTFJgPjoXU
 LsmH9YvZXqxIEV5D0gAQen5NQKRGBv9ceDrSB5rl9aTO8AsR3TEBQIb60
 aENfwhAYzzG1uoQx3Lw4YKuN4BsMlpOOeUo8r+kjY3NpUhb7pv3emop5A Q==;
X-CSE-ConnectionGUID: lvrgNPraSUWiCTP0F9bTWA==
X-CSE-MsgGUID: hMN7s9YlSsesxBkomdmCYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340306"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340306"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:44 -0700
X-CSE-ConnectionGUID: w+gYuWbSR96tVZE/VzOWDQ==
X-CSE-MsgGUID: NxKCMmdaR4+4Yy9aPQoKCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988239"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:43 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 03/36] drm/i915/cmtg: Add CMTG transcoder offset in struct
 _device_info
Date: Tue,  9 Jun 2026 17:32:17 +0530
Message-ID: <20260609120250.867750-4-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 779C665FCA5

From: Animesh Manna <animesh.manna@intel.com>

As all cmtg registers offset from base cmtg register is similar to
normal transcoder register, so follow existing way of defining
transcoder register for cmtg as well. Add base CMTG offset in
struct _display_device_info which will be used to derive the actual
register address for platform supporting CMTG.

Bspec: 68989
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c    | 14 ++++++++++++++
 .../gpu/drm/i915/display/intel_display_device.h    |  2 +-
 .../gpu/drm/i915/display/intel_display_limits.h    |  2 ++
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 69a9f782935c..f17fc2c68472 100644
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
index 12e5a522a299..acb9ca87dda7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -292,7 +292,7 @@ struct intel_display_runtime_info {
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
2.43.0

