Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19073B37FD4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 12:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468E410E073;
	Wed, 27 Aug 2025 10:25:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XSNU/QUZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3772D10E073
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 10:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756290335; x=1787826335;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lrqzbN8M2jcCSWY0W/WuP8bsqx5O6TpYDKocNHMEpW4=;
 b=XSNU/QUZSYH7MGvdNTyg73jIZJos1zOSOweS3g4QwZUfvFhIo22z1rra
 YIZnLvIEKHBFDi+V+H9HcWyh3gogWKjx/0SWbV/GlrhjM7JQm5Pod4KVP
 boooaTxcYlyy75h/SzatrEKX2Wd2JphHsDtKzDfPuSCVV2JFgqSsgeYKd
 28FIZVI9aU3pYFRzf2CsJAHNearCsvvRCxl2UTK49VUBGrtjJ+coooayR
 9twv1Sg/nazEo4LnFcvyvAnxXuyyfFIuzwDa+357z0CBfkbwp2R8vSmNd
 nlHyFVsE7kSwZm95eusFq4TinXeNPDsvUL4LMhqN93cNPq7FWC1er2Dum g==;
X-CSE-ConnectionGUID: /OIBmQOEQvC1Ig1a1vyv9Q==
X-CSE-MsgGUID: OuE6Mw8IQryyqvO71cdLJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58249552"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58249552"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 03:25:35 -0700
X-CSE-ConnectionGUID: UL4O20AVTrC6BFflkzPAVQ==
X-CSE-MsgGUID: hq6z2/QdR1eLtX62Hmep4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169100228"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.119])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 03:25:34 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: make FW_BLC_SELF_* macros type-safe
Date: Wed, 27 Aug 2025 13:25:07 +0300
Message-ID: <20250827102522.398646-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
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

Add the unsigned suffix to FW_BLC_SELF_* macro definitions to avoid
potentially typing them as 'int'.

For example, this happens when we pass them to _MASKED_BIT_ENABLE(),
because of the typeof() construct there.  When we pass 1 << 15 (the
FW_BLC_SELF_EN macro), we get typeof(1 << 15), which is 'int'.  Then
the value becomes negative (-2147450880) and we try to assign it to a
'u32'.

In practice this is not a problem though, because when we try to
assign -2147450880 to the u32, that becomes 0x80008000, which was the
intended result.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b283b25d8368..8c8e32b6c662 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -412,9 +412,9 @@
 #define FW_BLC		_MMIO(0x20d8)
 #define FW_BLC2		_MMIO(0x20dc)
 #define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
-#define   FW_BLC_SELF_EN_MASK      (1 << 31)
-#define   FW_BLC_SELF_FIFO_MASK    (1 << 16) /* 945 only */
-#define   FW_BLC_SELF_EN           (1 << 15) /* 945 only */
+#define   FW_BLC_SELF_EN_MASK      (1U << 31)
+#define   FW_BLC_SELF_FIFO_MASK    (1U << 16) /* 945 only */
+#define   FW_BLC_SELF_EN           (1U << 15) /* 945 only */
 #define MM_BURST_LENGTH     0x00700000
 #define MM_FIFO_WATERMARK   0x0001F000
 #define LM_BURST_LENGTH     0x00000700
-- 
2.50.1

