Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD88A3196D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F3A10E767;
	Tue, 11 Feb 2025 23:20:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DcouEf2m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C361D10E768
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739316018; x=1770852018;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9ssZ+HyhoWIvAgLb4JGrwVnqs4RMCEiDGux3cD0jXo0=;
 b=DcouEf2mUM5ummsRT2M4BqDoLuczecuWPArykUh/k3oFI1tjfNDBCxak
 M4I9pnawcQ9MDqfYZQloKXzyXfwbMhWilGut4beMWVhRCl9nxzfLOOCb0
 Jdn8+nv9TinxE0xFiLXFyChnKTfKSmhZIe2cgvMOgjC/g5CZBnLmbdk/K
 PYr4HYF/SNE24VtAstw0Mp/nTtNRBesj/vOn1RHQcQ+lmP5RXqZ1QgamZ
 afDXEZZV0e/v88ycLxO/nabuzwyWz8zYwETuzYXmJAzeN8qjAwB5V9hLl
 xGEiHcA5+MSYccTRlvsmEgKsII+iLS6OEqI0jUkClmXYdCEDq8PyesSFI A==;
X-CSE-ConnectionGUID: F/9bDJHZQ6iuR26/89rmhA==
X-CSE-MsgGUID: 8YrcQGZTTVecn7DYP9pSlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820147"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820147"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:20:18 -0800
X-CSE-ConnectionGUID: bqyBasd6TWGM7qUjuWnPLw==
X-CSE-MsgGUID: IfsP/0nKSrO7Sfs/1ih4jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870930"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:20:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:20:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/12] drm/i915: Reoder gen9+ timestamp freq register bits
Date: Wed, 12 Feb 2025 01:19:40 +0200
Message-ID: <20250211231941.22769-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We customarily define the bits of a register in big endian
order. Reorder the gen9+ timestamp freq register bits to match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 440ace1a0170..bcd8a09ed279 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -30,14 +30,14 @@
 
 /* RPM unit config (Gen8+) */
 #define RPM_CONFIG0				_MMIO(0xd00)
-#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	REG_BIT(3)
-#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)
-#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)
 #define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	REG_GENMASK(5, 3)
 #define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)
 #define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)
 #define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_38_4_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 2)
 #define   GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_25_MHZ	REG_FIELD_PREP(GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 3)
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK	REG_BIT(3)
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 0)
+#define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ	REG_FIELD_PREP(GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK, 1)
 #define   GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK	REG_GENMASK(2, 1)
 
 #define RPM_CONFIG1				_MMIO(0xd04)
@@ -876,10 +876,10 @@
 
 /* GPM unit config (Gen9+) */
 #define CTC_MODE				_MMIO(0xa26c)
+#define   CTC_SHIFT_PARAMETER_MASK		REG_GENMASK(2, 1)
 #define   CTC_SOURCE_PARAMETER_MASK		REG_BIT(0)
 #define   CTC_SOURCE_CRYSTAL_CLOCK		REG_FIELD_PREP(CTC_SOURCE_PARAMETER_MASK, 0)
 #define   CTC_SOURCE_DIVIDE_LOGIC		REG_FIELD_PREP(CTC_SOURCE_PARAMETER_MASK, 1)
-#define   CTC_SHIFT_PARAMETER_MASK		REG_GENMASK(2, 1)
 
 /* GPM MSG_IDLE */
 #define MSG_IDLE_CS		_MMIO(0x8000)
-- 
2.45.3

