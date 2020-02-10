Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0BD15843F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 21:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738CF6E9DE;
	Mon, 10 Feb 2020 20:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B736E233
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 20:28:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:28:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,426,1574150400"; d="scan'208";a="251306712"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 10 Feb 2020 12:28:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2020 12:28:53 -0800
Message-Id: <20200210202853.1546453-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_22010178259:tgl
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

We need to explicitly set the TLB Request Timer initial value in the
BW_BUDDY registers to 0x8 rather than relying on the hardware default.

Bspec: 52890
Bspec: 50044
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6e55e88ca0d0..2ad2694a28e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5001,6 +5001,12 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 			       table[i].page_mask);
 		intel_de_write(dev_priv, BW_BUDDY2_PAGE_MASK,
 			       table[i].page_mask);
+
+		/* Wa_22010178259:tgl */
+		intel_de_rmw(dev_priv, BW_BUDDY1_CTL,
+			     BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8);
+		intel_de_rmw(dev_priv, BW_BUDDY2_CTL,
+			     BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a6847f26678c..d829b9ae8402 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7766,6 +7766,7 @@ enum {
 #define BW_BUDDY1_CTL			_MMIO(0x45140)
 #define BW_BUDDY2_CTL			_MMIO(0x45150)
 #define   BW_BUDDY_DISABLE		REG_BIT(31)
+#define   BW_BUDDY_TLB_REQ_TIMER_MASK	REG_GENMASK(21, 16)
 
 #define BW_BUDDY1_PAGE_MASK		_MMIO(0x45144)
 #define BW_BUDDY2_PAGE_MASK		_MMIO(0x45154)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
