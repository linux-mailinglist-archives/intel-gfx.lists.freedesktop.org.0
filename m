Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B229F0BA3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 12:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04E710EFE4;
	Fri, 13 Dec 2024 11:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hp5eOq0d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9D310E1CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734090685; x=1765626685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2678mU5czK1r77f6x2oNx06Vy526JEmBRAxHIqjlFUI=;
 b=hp5eOq0dKWMtjd+JgoPpWHDH/+GFs6mn1qh9i8AjER+gKsjfdcWx2Dlt
 We+sPUl/a15BmKxTY/2qwS9//PnYm4tq3nuS+GMkjaYVrKRXhz73MTNRG
 AtmSf5YWaSdiB3fic8v+zOlDh3pstewF4ZOdXmvQHH02ZAq58mWOT0qeL
 mgOiIG4ILdVcyLGat4nY6xWMzQ22QBCMvZd0uy4QgWixG3a2q2BSyvb+I
 DEOVLAopGltnwNU3tibSUbC02BCUZ9viG8M0jGDf31XTM165LyrURezTC
 NbLZGbxF/ZkeYsvzbKkk/RIBTXi+tmz/TpHp+un0QWqQF8gsokWZUJPDH A==;
X-CSE-ConnectionGUID: s5zpnkr1SGW+JBNbVyOFnw==
X-CSE-MsgGUID: tEHuDD7pQyGb1szVpctDPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34773348"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34773348"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 03:51:25 -0800
X-CSE-ConnectionGUID: J5XT/z8ITwOa47TmWPyJOw==
X-CSE-MsgGUID: f3sInrHKTCSM13Klm9W+/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96946615"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 03:51:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/3] drm/i915: relocate _VGA_MSR_WRITE register definition
Date: Fri, 13 Dec 2024 13:51:10 +0200
Message-Id: <20241213115111.335474-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241213115111.335474-1-jani.nikula@intel.com>
References: <20241213115111.335474-1-jani.nikula@intel.com>
MIME-Version: 1.0
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

Move _VGA_MSR_WRITE to intel_crt_regs.h. It's not necessarily the
optimal place for it, but hands down better than i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt_regs.h | 2 ++
 drivers/gpu/drm/i915/i915_reg.h               | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt_regs.h b/drivers/gpu/drm/i915/display/intel_crt_regs.h
index 9a93020b9a7e..571a67ae9afa 100644
--- a/drivers/gpu/drm/i915/display/intel_crt_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_crt_regs.h
@@ -45,4 +45,6 @@
 #define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
 #define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
 
+#define _VGA_MSR_WRITE _MMIO(0x3c2)
+
 #endif /* __INTEL_CRT_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a204d0e7fdcf..33cfe07a9b2e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -144,8 +144,6 @@
 #define GEN6_STOLEN_RESERVED_ENABLE	(1 << 0)
 #define GEN11_STOLEN_RESERVED_ADDR_MASK	(0xFFFFFFFFFFFULL << 20)
 
-#define _VGA_MSR_WRITE _MMIO(0x3c2)
-
 #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
 #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
 #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
-- 
2.39.5

