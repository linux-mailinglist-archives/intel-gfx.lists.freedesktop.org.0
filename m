Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766BAAA6D38
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E184410E8D2;
	Fri,  2 May 2025 08:59:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fJQvwjb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8528A10E8D6;
 Fri,  2 May 2025 08:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176375; x=1777712375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wo01zddHhz1XP/sWTPFQEpuz8cDfWfr/gtAxIT5S0g4=;
 b=fJQvwjb3cIxSNVzxJTQQ47/2BH/oUaockOM54OeaG+A8SNVsUO8kP4EH
 UBafxLyOQTqbm9XgPI1+BpMauQkNvQXd6W3iL2eOTo/0z5In7jieNgRV3
 Vl/fctJ3VBc2Bvg70jdMDlZF+mZYHvjb9Qeu5z5I+PPK1BUu5mtg4V1n3
 BRDK4j+b75sU8yo23bbL0aKAZ5td8zc5FiN14M+EmoFQ6uXNTktIJ2kYe
 zCnC9ZQEk+d7Sla/jz4OiYob6sn04l74Ahzp17hgLqh4ZxaDPoFk/ibwF
 PnFrK6qOYY4dm2tckMYHYTG5U/MDdEusHCK/zW6ml02Ba3RpUbcUKtKdp w==;
X-CSE-ConnectionGUID: ROYVbmE2RUC37mifJFSqgw==
X-CSE-MsgGUID: AXGB95V9Q4an33fHIaWlAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943198"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943198"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:35 -0700
X-CSE-ConnectionGUID: 5VKUAwlUQfCbABdeY3+vVA==
X-CSE-MsgGUID: tYI4ZOgKQJizhYbGpj82gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346739"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 08/11] drm/i915/display: Add PHY_CMN1_CONTROL register
 definitions
Date: Fri,  2 May 2025 11:58:59 +0300
Message-ID: <20250502085902.154740-9-jouni.hogander@intel.com>
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

Add PHY_CMN1_CONTROL register and its definitions to configure port LFPS
sending.

Bspec: 68962
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 960f7f778fb81..94b6384cdf019 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -278,6 +278,9 @@
 #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
 #define   CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
 
+#define PHY_CMN1_CONTROL(tx, control)	(0x800 + ((tx) - 1) * 0x200 + (control))
+#define   CONTROL0_MAC_TRANSMIT_LFPS	REG_BIT(1)
+
 /* C20 Registers */
 #define PHY_C20_WR_ADDRESS_L		0xC02
 #define PHY_C20_WR_ADDRESS_H		0xC03
-- 
2.43.0

