Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013D39D2995
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 16:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229DB10E0C2;
	Tue, 19 Nov 2024 15:27:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="As43fU0y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F148C10E0C2;
 Tue, 19 Nov 2024 15:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732030073; x=1763566073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9IOvGU3sVPyExRa0g7Qza7OzZxs6t/N/vCn8lTToSqo=;
 b=As43fU0yGB1UnL6u5kPAVu51UfgxLSC58bvQXxlbOt4j9nWI+b/lWK3G
 WXLh10Fa14ECPK4TCoLSlzdEKOvzDQy4qOVIKEpV122sC6InDFgtbe0+Q
 t6LFgt0obXsD2HaL4b0MCcvEg5bBvh/j17KigZbeW5a6lXpTpdDe5gVDK
 YA3l8dEOxC2EH2AJILTXwQZ1F4W/meso30UlD6nFaACPscyuYCSdnpytK
 Ny2ANGH8FgyyB35NanBbPQZQ5F/9n0oMls6I7ocdy/ZPPB1jJcUIuptZu
 tTca28XSYP9drjaQQXeP6CgiVEPE4V8e0UB/AVyr6yL7OAdypk7svxuNZ A==;
X-CSE-ConnectionGUID: m9qCQywJQ0i/9hDgL3FJmg==
X-CSE-MsgGUID: 9AKY8NWdRZ+ipNQMslZR4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42550438"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="42550438"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 07:27:53 -0800
X-CSE-ConnectionGUID: tbRpIWihT+2yE+fjXGyp6g==
X-CSE-MsgGUID: Dj1UcfwQTECnPlc+Pnv7jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="94664544"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 07:27:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [PATCH v2] drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to REG_BIT()
 and friends
Date: Tue, 19 Nov 2024 17:27:45 +0200
Message-Id: <20241119152745.1108810-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <9c54e8d7a3ff5039e4537cccb97214e63b9805c9.1731941270.git.jani.nikula@intel.com>
References: <9c54e8d7a3ff5039e4537cccb97214e63b9805c9.1731941270.git.jani.nikula@intel.com>
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

Use the modern style for defining register contents. Expand the status
register contents a bit.

TODO: There are more VC payload mapping fields, spanning more registers,
and have more bits on more recent platforms.

v2:
- Fix DP_TP_STATUS_STREAMS_ENABLED_MASK mask (Imre)
- Drop status VC3 payload mapping for now

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 56 +++++++++++++++++----------------
 1 file changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7a35be56b7ef..f48b5c809cec 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3823,25 +3823,26 @@ enum skl_power_gate {
 #define _TGL_DP_TP_CTL_A		0x60540
 #define DP_TP_CTL(port) _MMIO_PORT(port, _DP_TP_CTL_A, _DP_TP_CTL_B)
 #define TGL_DP_TP_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
-#define  DP_TP_CTL_ENABLE			(1 << 31)
-#define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
-#define  DP_TP_CTL_MODE_SST			(0 << 27)
-#define  DP_TP_CTL_MODE_MST			(1 << 27)
-#define  DP_TP_CTL_FORCE_ACT			(1 << 25)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		(0 << 19)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		(1 << 19)
-#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		(2 << 19)
-#define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
-#define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
-#define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT1		(0 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT2		(1 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT3		(4 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_PAT4		(5 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_IDLE		(2 << 8)
-#define  DP_TP_CTL_LINK_TRAIN_NORMAL		(3 << 8)
-#define  DP_TP_CTL_SCRAMBLE_DISABLE		(1 << 7)
+#define   DP_TP_CTL_ENABLE			REG_BIT(31)
+#define   DP_TP_CTL_FEC_ENABLE			REG_BIT(30)
+#define   DP_TP_CTL_MODE_MASK			REG_BIT(27)
+#define   DP_TP_CTL_MODE_SST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 0)
+#define   DP_TP_CTL_MODE_MST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 1)
+#define   DP_TP_CTL_FORCE_ACT			REG_BIT(25)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_MASK		REG_GENMASK(20, 19)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 0)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 1)
+#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 2)
+#define   DP_TP_CTL_ENHANCED_FRAME_ENABLE	REG_BIT(18)
+#define   DP_TP_CTL_FDI_AUTOTRAIN		REG_BIT(15)
+#define   DP_TP_CTL_LINK_TRAIN_MASK		REG_GENMASK(10, 8)
+#define   DP_TP_CTL_LINK_TRAIN_PAT1		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 0)
+#define   DP_TP_CTL_LINK_TRAIN_PAT2		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 1)
+#define   DP_TP_CTL_LINK_TRAIN_PAT3		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 4)
+#define   DP_TP_CTL_LINK_TRAIN_PAT4		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 5)
+#define   DP_TP_CTL_LINK_TRAIN_IDLE		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 2)
+#define   DP_TP_CTL_LINK_TRAIN_NORMAL		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 3)
+#define   DP_TP_CTL_SCRAMBLE_DISABLE		REG_BIT(7)
 
 /* DisplayPort Transport Status */
 #define _DP_TP_STATUS_A			0x64044
@@ -3849,14 +3850,15 @@ enum skl_power_gate {
 #define _TGL_DP_TP_STATUS_A		0x60544
 #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
 #define TGL_DP_TP_STATUS(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
-#define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
-#define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
-#define  DP_TP_STATUS_ACT_SENT			(1 << 24)
-#define  DP_TP_STATUS_MODE_STATUS_MST		(1 << 23)
-#define  DP_TP_STATUS_AUTOTRAIN_DONE		(1 << 12)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC2	(3 << 8)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC1	(3 << 4)
-#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
+#define   DP_TP_STATUS_FEC_ENABLE_LIVE		REG_BIT(28)
+#define   DP_TP_STATUS_IDLE_DONE		REG_BIT(25)
+#define   DP_TP_STATUS_ACT_SENT			REG_BIT(24)
+#define   DP_TP_STATUS_MODE_STATUS_MST		REG_BIT(23)
+#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(18, 16) /* 17:16 on hsw but bit 18 mbz */
+#define   DP_TP_STATUS_AUTOTRAIN_DONE		REG_BIT(12)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC2_MASK REG_GENMASK(9, 8)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC1_MASK	REG_GENMASK(5, 4)
+#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC0_MASK	REG_GENMASK(1, 0)
 
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
-- 
2.39.5

