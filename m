Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BF73BE568
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 11:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D5F89CDF;
	Wed,  7 Jul 2021 09:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8394889CDF
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 09:16:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273113586"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="273113586"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 02:16:00 -0700
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="645320751"
Received: from linux-desktop.iind.intel.com ([10.223.34.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 02:15:58 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 15:22:53 +0530
Message-Id: <20210707095253.23848-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/xelpd: Fix incorrect color
 capability reporting
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On XELPD platforms, color management support is not yet enabled.
Fix wrongly reporting the same through platform info, which was
resulting in incorrect initialization and usage.

Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a7bfdd827bc8..8ff1990528d1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -947,7 +947,7 @@ static const struct intel_device_info adl_s_info = {
 
 #define XE_LPD_FEATURES \
 	.abox_mask = GENMASK(1, 0),						\
-	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145 },		\
+	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
 	.dbuf.size = 4096,							\
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
