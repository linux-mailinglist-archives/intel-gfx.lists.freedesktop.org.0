Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB3853E0F1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 08:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4D010EA49;
	Mon,  6 Jun 2022 06:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEA210EA49
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 06:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654495416; x=1686031416;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kZwsTc0ibdTyTt27INQz6EAyme0VzqJbYVFGCM3k9i8=;
 b=LhDbu6BjCo4p3r+sWQ0bTTHQWPsCIlPbASGJj+ciOBpburyVJYaiV6HM
 vkC590Ti0dv3zvn7Rxn8qdSUQwwoqI0/yVV6ZwwaCVEQVTQrvXs2Bhd52
 QnDSGZiXtKAfumvG96Dhnn0RD8EBg9oQjYhCrnK2N1qoaGjhKDmvQGz26
 oNdTaVoZj+snp92DcsdvsejErtEBxiaDRVdvX3Qn080tZ37XBdSeIya9Q
 lZHBy5uAqeThDUCE+VVZsFJSaHjaHnz6qvMRYlc/YKMc6MLXwO7YHUJvR
 gJhgP5Mo9w4uOU7p4gdON+FlEolm9u7KW3YjeVeNAe6MK9DnebTsAF50f A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="264427276"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="264427276"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2022 23:03:35 -0700
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="825649633"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2022 23:03:33 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jun 2022 11:33:24 +0530
Message-Id: <20220606060324.1618-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015795083
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

i915 must disable Render DOP clock gating globally.

B.Spec: 52621
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 58e9b464d564..55a291ab5536 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -630,6 +630,7 @@
 
 #define GEN7_MISCCPCTL				_MMIO(0x9424)
 #define   GEN7_DOP_CLOCK_GATE_ENABLE		(1 << 0)
+#define   GEN12_DOP_CLOCK_GATE_RENDER_ENABLE    (1 << 1)
 #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
 #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
 #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index a604bc7c0701..b957dec64eee 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1489,6 +1489,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 * performance guide section.
 	 */
 	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
+
+	/*
+	 * Wa_14015795083
+	 */
+	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 }
 
 static void
-- 
2.26.2

