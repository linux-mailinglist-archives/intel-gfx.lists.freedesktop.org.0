Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLLDDVHMF2o7RAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E410F5EC9BE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 07:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E00310EBFA;
	Thu, 28 May 2026 05:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3IdW/Zg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B5610EBF6;
 Thu, 28 May 2026 05:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779944527; x=1811480527;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9OU7zeLF9kYrZqQ2NNNKDrs5v4gDs7IC49ZH6kx/z7w=;
 b=H3IdW/ZgoRePZwZKQzymMnVgJRQCuFHYkXXZFqxfvrknrSyP43ZFa0f1
 GqFvD2BgPYl1Q6A7+iVoW9IrGJ4vKDrOEuUZ/jiX/R3uguJ7L2ux8PD+T
 cIqwYe3HKX93dZFkqRt3I63x7LeSiez25ozl552P9aR96l4sbSJ+S0Ohk
 K/yqxI8oUlbdROSuIBvNmiN0rb1ULGPFRjsQF5tIhYZLseXMrfezR6xpX
 3s8PXekxJodNlbx3Vuid5H6PQDpTCeviTJJvzRhee1NukS3rPj2LbDk9l
 VWNMzHmSIQl8wKY1krxqCdAl0YWDmQ5SQqINwPZxc5yEXFtIY5qtur7i5 g==;
X-CSE-ConnectionGUID: Pzah7ramSTagqX3q8tJI2Q==
X-CSE-MsgGUID: mLVqYj8cSCSaPNrGWYVoaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80895706"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80895706"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:06 -0700
X-CSE-ConnectionGUID: 1EzUmz5eT4ier9VE8Ewe8w==
X-CSE-MsgGUID: bwAeiRZVRHeSB599rlP1aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="238025879"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 22:02:05 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v2 04/17] drm/i915/display: Use FIELD_PREP() for DC state enable
 bits
Date: Thu, 28 May 2026 10:31:18 +0530
Message-ID: <20260528050131.466351-5-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260528050131.466351-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260528050131.466351-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: E410F5EC9BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace open-coded shifts with REG_GENMASK() and REG_FIELD_PREP()
for the DC state enable field.

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 8a1d8cd80898..fee9ce085075 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3079,11 +3079,12 @@ enum skl_power_gate {
 #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
 #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
 #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
-#define  DC_STATE_EN_UPTO_DC5		(1 << 0)
 #define  DC_STATE_EN_DC9		(1 << 3)
-#define  DC_STATE_EN_UPTO_DC6		(2 << 0)
-#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
-#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
+#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   REG_GENMASK(1, 0)
+#define  DC_STATE_EN_DISABLE		REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 0)
+#define  DC_STATE_EN_UPTO_DC5		REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 1)
+#define  DC_STATE_EN_UPTO_DC6		REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 2)
+#define  DC_STATE_EN_UPTO_DC3CO	REG_FIELD_PREP(DC_STATE_EN_UPTO_DC5_DC6_MASK, 3)
 
 #define  DC_STATE_DEBUG                  _MMIO(0x45520)
 #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
-- 
2.43.0

