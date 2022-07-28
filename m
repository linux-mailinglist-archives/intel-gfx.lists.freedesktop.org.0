Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F506583662
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA96E10EBD5;
	Thu, 28 Jul 2022 01:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B029410E48B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cZBjMqPrb0cg+in89lpvbCOLNf/llWSd3MSmdK67ay8=;
 b=KuAKs4AS4w1I8f/qXUfolvt1FNawxRdc+GJsKyW45dJZRxQV+rgnXkW1
 V1Mn3bboDheAcXH63RhhmGo1vQSXsyQf619jNK/QpDwhphdqn4/fvmLll
 Db0ue+F3iu3KMg4kXjxSVvMYgZy5wtVSZHlWA/6GKxydrG08rsovG5ocq
 PAsYuVdQdlWxs+aCUxfcpCovoG6r2mbldR+WTIN1ADwvaexelLPvzojVR
 L12V9Ff7Ge4XCIjllL8rlG7fV7ixs4WqoJ0GwVPFjOQDxKHng4Kln0z9/
 NVTnj6F4YW2lALo8PKIqJZKaDzhVZsYNP+B9N9QoBHxQ75jNBBS58PNn/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693657"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693657"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456994"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:06 -0700
Message-Id: <20220728013420.3750388-10-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/23] drm/i915/mtl: Add support for MTL in
 Display Init sequences
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

The initialization sequence for Meteorlake reuses the sequence for
icelake for most parts. Some changes viz. reset PICA handshake
are added.

Bspec: 49189

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h                    | 3 ++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 589af257edeb..ccc3f78b1607 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1381,6 +1381,9 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
 		reset_bits = RESET_PCH_HANDSHAKE_ENABLE;
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 14)
+		reset_bits |= MTL_RESET_PICA_HANDSHAKE_EN;
+
 	val = intel_de_read(dev_priv, reg);
 
 	if (enable)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 50ddc5ba72b9..baf747adf1db 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5926,7 +5926,8 @@
 							 _BW_BUDDY1_PAGE_MASK))
 
 #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
-#define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
+#define  MTL_RESET_PICA_HANDSHAKE_EN	REG_BIT(6)
+#define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
 
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
-- 
2.25.1

