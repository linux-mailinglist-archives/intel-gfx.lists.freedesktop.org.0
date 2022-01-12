Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C9F48C567
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 15:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD0510E688;
	Wed, 12 Jan 2022 14:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9993B10F12A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 14:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641996089; x=1673532089;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O34q0xqtsCB5yW/28DwK9FnR9RXOTXvTOdiE8ThUDlw=;
 b=RsVMrlEvbJnUtCQqcg+ZeCLLbLBG2rbcOJDXKrcF6ETJDtKcmanv6V/4
 JgGsdvwFMvwWoOuzl+dad/kdnOH6QptqfBSyrmZ9u8x3mVDu4p3ZQaDSi
 mu52sxWqZXodCcc2k7AOhMNg9sre6elKf03dO8rIQG1O/ntf5sn3a05aW
 c8kMuAu/PCqpuw2wNTwKsr1UreELHshTJMg2OrInIKwDjAiioBoG1RgAL
 QDo/+EalHflXBVwl9zgtrwoEEeaOeUUZIAOgAmd7jfPKBRkbDAas5Vpkq
 k14hm+GUR3lWY/JtvkpjsqHzRen90/JDCUFd7QtuifBWk1hsUAt7iYZFs w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="242555307"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="242555307"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:01:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="474913307"
Received: from tmsbuild050.tm.intel.com ([10.237.53.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:01:13 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 16:00:30 +0200
Message-Id: <20220112140031.39823-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20220112140031.39823-1-jouni.hogander@intel.com>
References: <20220112140031.39823-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/2] drm/i915: add new flag
 has_psr2_sel_fetch
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

This patch is adding new information into intel_device_info to see
whether i915 is psr2 selective fetch capable.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 8 ++++++++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8261b6455747..34140b2e82ef 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -849,6 +849,7 @@ static const struct intel_device_info jsl_info = {
 	GEN(12), \
 	.display.abox_mask = GENMASK(2, 1), \
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.display.has_psr2_sel_fetch = 1, \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
@@ -890,6 +891,8 @@ static const struct intel_device_info rkl_info = {
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
+	/* Wa_16011181250 */
+	.display.has_psr2_sel_fetch = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
@@ -907,6 +910,7 @@ static const struct intel_device_info dg1_info = {
 	.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.display.has_psr2_sel_fetch = 0,
 	.require_force_probe = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
@@ -921,6 +925,8 @@ static const struct intel_device_info adl_s_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
+	/* Wa_16011181250 */
+	.display.has_psr2_sel_fetch = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
@@ -1053,6 +1059,8 @@ static const struct intel_device_info dg2_info = {
 	.require_force_probe = 1,
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	/* Wa_16011181250 */
+	.display.has_psr2_sel_fetch =  0,
 };
 
 #undef PLATFORM
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 3699b1c539ea..56253b53175e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -169,6 +169,7 @@ enum intel_ppgtt_type {
 	func(has_overlay); \
 	func(has_psr); \
 	func(has_psr_hw_tracking); \
+	func(has_psr2_sel_fetch); \
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
-- 
2.34.0

