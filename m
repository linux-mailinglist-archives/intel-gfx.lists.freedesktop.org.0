Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE96E84532E
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 09:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F1110E6C6;
	Thu,  1 Feb 2024 08:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBD110E6A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 08:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706777702; x=1738313702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gB+yngv15taudJ2ypau2RSWE9m+Sj4SOBMxXL5vR9fI=;
 b=bFlsS7Hz4Y9982A70QA7AuHlJirhqE15LghaqtPr1+JrgKJfLJx6SrW6
 MOtqppMwYMkf76zCTjyfKzCmeKgBzFEIxNuzIy1oWpqkRwOXNsXFPbwQu
 U63Z28/6+PmOJLSK7tQ+A3NJ0f0/3AWluIP2Ua0l8p0ASV2vB48B79M6H
 sp7YSHiR+eRODxWlfAM+flXpcBdpn86y67XEuk+id6xoYAe1yX6AcLJE5
 x70rURaBSF5XxuT5OTCfQzUQjImoqpU75tDmMQErGcCIL717mJ7UiHmh1
 VwP/6mfuqm6qApuHGhLnjGqQK3HmNXSFILIy+gVHQ+O3idzE5O1d7TmmB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="22348522"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="22348522"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 00:55:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="908179019"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="908179019"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2024 00:55:00 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/lnl: Add pkgc related register
Date: Thu,  1 Feb 2024 14:21:58 +0530
Message-Id: <20240201085158.1000285-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240201085158.1000285-1-suraj.kandpal@intel.com>
References: <20240201085158.1000285-1-suraj.kandpal@intel.com>
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

Add the register that needs to read and written onto for
deep pkgc programming.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark_regs.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
index 628c5920ad49..20b30c9a6613 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
@@ -157,4 +157,8 @@
 #define MTL_LATENCY_SAGV		_MMIO(0x4578c)
 #define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
 
+#define LNL_PKG_C_LATENCY		_MMIO(0x46460)
+#define   LNL_ADDED_WAKE_TIME_MASK	REG_GENMASK(28, 16)
+#define   LNL_PKG_C_LATENCY_MASK	REG_GENMASK(12, 0)
+
 #endif /* __SKL_WATERMARK_REGS_H__ */
-- 
2.25.1

