Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEC46A2384
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 22:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F0010E274;
	Fri, 24 Feb 2023 21:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7415310E09C;
 Fri, 24 Feb 2023 21:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677273193; x=1708809193;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n44X4En4gyHG/NXxNKgr6IO2QVYmoZzhFCRdRZk+zVo=;
 b=Qg3bmV8hleAJY05SpWz+PHHMIaycW0qfOg87PMdMuw3Pd81HchbrEd8C
 ivFX3TXqv06ZT9fNQI1eJpcISE499gpvUji4wlAVMsU0OzwAVcj6Abmqc
 jcqsSmobDx9V3WRyvy9Y2rWBs2mP7m8Z5YrAVGDU5WeUlYhegStkfcOzE
 nqN+L0zvq375Oqg3ZGSQHkGBT7zxojNjG46sMtxvruBKTLGp7zvOu+5Ck
 //5bkopj9NHRoJQjC3rderRuLoJrjAn91yfKSXsrhFVgEYyYzfDs62bZD
 M4SNmiNzFunROHz7uDgh4PziGLm68cnkopSh6g3PHsxL1r7UHaTJL4mI7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="332270351"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="332270351"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 13:13:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="815871678"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="815871678"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 13:13:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 13:12:21 -0800
Message-Id: <20230224211221.1557268-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Move MCR_REG define to i915_reg_defs.h
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Define MCR_REG() in the same header where i915_mcr_reg_t is defined,
like i915_reg_t and _MMIO(). It's a more natural place for such a
definition so it's not mixed with the registers for the platforms.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 2 --
 drivers/gpu/drm/i915/i915_reg_defs.h    | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 416976d396ba..de2e85fd2f93 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -9,8 +9,6 @@
 #include "i915_reg_defs.h"
 #include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
 
-#define MCR_REG(offset)	((const i915_mcr_reg_t){ .reg = (offset) })
-
 /*
  * The perf control registers are technically multicast registers, but the
  * driver never needs to read/write them directly; we only use them to build
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 983c5aa3045b..db26de6b57bc 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -165,6 +165,8 @@ typedef struct {
 	u32 reg;
 } i915_mcr_reg_t;
 
+#define MCR_REG(offset)	((const i915_mcr_reg_t){ .reg = (offset) })
+
 #define INVALID_MMIO_REG _MMIO(0)
 
 /*
-- 
2.39.0

