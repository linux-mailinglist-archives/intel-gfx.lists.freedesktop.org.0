Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207B3766DAC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 14:56:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85AFF10E20A;
	Fri, 28 Jul 2023 12:56:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5BDD10E20A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 12:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690548984; x=1722084984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+N+kw0+wXk3DuWLPMRSkPIO9uEJkCJMkRcX+jmv8/WE=;
 b=NNDD906SyQE7hRoObkI1PZrTgVaCIe5KUzeNL7RdbKBjyMie7lm6xed7
 n/m3+ecYUA4x2n3T7jaFxGJXYs5jyOqfabICNu4Oe6kMVxUuK5YA1/aTU
 Qcllgd77APvS2SZ3ZKg08C+5/pmTHnbmzUTxozZ0Vb/4h1BwUu7nDG2WX
 AvWJV1Wfdwykrhkqz2NH0tAS7sIllDlj6igtcMsfb5InURm9juVrs/puf
 DeMWnzLKP2pUn+ilt9Pua38j1g3P0tfdy9adf/uHw6ixqjTT6WD+Mq9HL
 n3X/0XuiJwutYbT53AqacJlz74f5BO1lTbbCFHTFQ0v66lK2aYVUWRauk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="358612279"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="358612279"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 05:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727473086"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="727473086"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2023 05:56:23 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jul 2023 18:16:05 +0530
Message-Id: <20230728124609.2911830-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230728124609.2911830-1-animesh.manna@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/6] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

Platforms having Display 13 and above will support panel
replay feature of DP 2.0 monitor. Added a HAS_PANEL_REPLAY()
macro to check for panel replay capability.

v1: Initial version.
v2: DISPLAY_VER() removed as HAS_DP20() is having platform check. [Jouni]

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 3324bd453ca7..53bc8f972a26 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -60,6 +60,7 @@ struct drm_printer;
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
+#define HAS_PANEL_REPLAY(dev_priv)	(HAS_DP20(dev_priv))
 #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
 #define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
-- 
2.29.0

