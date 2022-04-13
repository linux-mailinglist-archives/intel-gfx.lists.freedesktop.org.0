Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCBA500145
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 23:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1AB810EF38;
	Wed, 13 Apr 2022 21:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8101F10EF38
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 21:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649885978; x=1681421978;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CRw21McrH+/lJDE/UMQTRzRz4YL2WqJ3WhNl0o8g8u4=;
 b=evWeD719IqogdDm9YLPVPPd31L/w8JCvVj9HXze6bboaNxqoYKLjJ9Fy
 xBwVKjtV/MySiiW4JgWWohH2DE9jQwnlXjxqjbvipynts2dOn+B7WuyDh
 KJKVVpbiq7OLZR3VyLOUeegXKtOxHpxyLEJDrXKTZGLndS+r40fxz8Lq3
 mLKJqPlnw4teWn6lL0ybmVVcWhfAV2qjksaAWjbw41b4mteO/1QRPwxK7
 H8lCMk86svG75GYpUZPja0W5LfVmEe9ehRQB87g1iTTyFCUkRZ6e7cBPG
 jBmlcZ+ZdaT69WUylBXYoW4P+M3JMCkh6odVn1wBJBP+7XcnwliMKLIBB A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="243368080"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="243368080"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 14:39:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="573459804"
Received: from mingram-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.35.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 14:39:36 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 17:39:27 -0400
Message-Id: <20220413213927.40927-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Reserving some Multi-thread forcewake
 bits.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bit 0: Currently bit used by i915. Ideally only i915 touches it
       in a Linux stack.

Bits 1 and 2: A while ago we were using Bit 1 for i915 and bit 2
       	      for the user space, until commit 7130630323c5 ("drm/i915:
	      Use fallback forcewake if primary ack missing") changed it
	      to bit 1.
	      Now we have a situation where PCODE is also using this bit-1
	      in one case, while it should actually be using the Bit-3.
	      So, let's redirect users back to bit-2 and mark this 1 as
	      reserved.

Bit 3: Let's reserve for PCODE.

Bit 4: Let's reserve for PSMI.

Cc: Tilak Tangudu <tilak.tangudu@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0a5c2648aaf0..15ceaaace4d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1399,8 +1399,11 @@
 #define FORCEWAKE_MT_ACK			_MMIO(0x130040)
 #define FORCEWAKE_ACK_HSW			_MMIO(0x130044)
 #define FORCEWAKE_ACK_GT_GEN9			_MMIO(0x130044)
-#define   FORCEWAKE_KERNEL			BIT(0)
-#define   FORCEWAKE_USER			BIT(1)
+#define   FORCEWAKE_KERNEL			BIT(0) /* For i915 use only */
+#define   FORCEWAKE_RSVD			BIT(1)
+#define   FORCEWAKE_USER			BIT(2)
+#define   FORCEWAKE_PCODE			BIT(3)
+#define   FORCEWAKE_PSMI			BIT(4)
 #define   FORCEWAKE_KERNEL_FALLBACK		BIT(15)
 #define FORCEWAKE_ACK				_MMIO(0x130090)
 #define VLV_GTLC_WAKE_CTRL			_MMIO(0x130090)
-- 
2.34.1

