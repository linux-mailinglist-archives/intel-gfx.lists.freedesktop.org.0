Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DF3AA6D33
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D494010E8C6;
	Fri,  2 May 2025 08:59:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dkg5T9Q5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 261B310E8C6;
 Fri,  2 May 2025 08:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176368; x=1777712368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7zxBK9MvyGHWw2kGFJuk6aZUZIQPUr0qyWjKuMRmS+M=;
 b=Dkg5T9Q5+55GIlCS1a7y6x/S6oZQmh+CoGPaMxzi31H/8ZHQOM1rqOiH
 x9hwbRjNwLaDW7vHOn2CKJom76hT9yoIGLFRyNteJQxTCGZiMKpudzyH6
 XeNZKRNRAnra4ZTPm8+0PlMIGWZgr4Lr7cGNrQYVsdRpllehX2kkuLVx6
 BbdrMz4goD0YgvXA2CM3XBy2uWqq566tLmeobzZBmbV7hjeGYqAbC8ke5
 pHvkvmXq4nVT5YZ6gm/wWdVPms1DERLI/gLuzB4ELC5O6T23h/QLHOflp
 DOfV3YeDj9ITmzT5wdT5HMg2YS9cUWnhV1hRJoVJy+VzWUdeIH9qApPSO A==;
X-CSE-ConnectionGUID: GS2XrcqJTcO6ToDvGLYlgA==
X-CSE-MsgGUID: Zx6a07+0TumbqlDw0+f/nQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943193"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943193"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:27 -0700
X-CSE-ConnectionGUID: w9QaoEAgTc64NNF6GXbLGw==
X-CSE-MsgGUID: FsMp2tfuQ9OtncQhd0oaIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346705"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 03/11] drm/i915/alpm: Add PR_ALPM_CTL register definitions
Date: Fri,  2 May 2025 11:58:54 +0300
Message-ID: <20250502085902.154740-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add PR_ALPM_CTL register definition and bits for it.

Bspec: 71014
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 795e6b9cc575c..aad3ac5f502ed 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -266,6 +266,16 @@
 #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
 #define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TPT_A, _PIPE_SRCSZ_ERLY_TPT_B)
 
+#define _PR_ALPM_CTL_A	0x60948
+#define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _PR_ALPM_CTL_A)
+#define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
+#define  PR_ALPM_CTL_RFB_UPDATE_CONTROL				BIT(5)
+#define  PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE	BIT(4)
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK		REG_GENMASK(1, 0)
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2	REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 0)
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 1)
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 2)
+
 #define _ALPM_CTL_A	0x60950
 #define ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_A)
 #define  ALPM_CTL_ALPM_ENABLE				REG_BIT(31)
-- 
2.43.0

