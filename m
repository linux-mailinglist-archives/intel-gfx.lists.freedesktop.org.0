Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 802EB4895D7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 10:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A611A12B6FB;
	Mon, 10 Jan 2022 09:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB58312B6FA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 09:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641808682; x=1673344682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rSKkFrgJ/9F+zIDFSyCtw0xzovt7wIhGZVHPXnCJw1s=;
 b=VE/2XxsJjpM+cHgkwHgDMH0sZumqqL/ili6tbv3AtLiDpCUUFggQ4ap2
 wtRto1X+uEn72i/VIkI0mvdZPQNg+B/POqj6Bef8dqO8DX4mw0rILW9lp
 nKruEAMkRjnic1OeqEUEo+SFQrTwaBWdTLGtxsYyXhQIrgcG3BGYbvUcL
 zUvEkEx+109vG4rQF3hlRp6Xs1D8DkXrgHrt664w5UC41w7vxpqdQga7K
 3ON2AKV9x6WadX6Ko8wn9s3utmaEYHeTBb0y2CD5mK4C3cuDsxUTsJ4WZ
 Sw0ucop+oeqBcxxFdxe9KfMOAAVw7kKfogYuUKol4OLxlMgN6YrB9ZMVL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="223888458"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="223888458"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:58:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="622621483"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:58:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 11:57:40 +0200
Message-Id: <20220110095740.166078-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220110095740.166078-1-jani.nikula@intel.com>
References: <20220110095740.166078-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: remove VGA register definitions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only user of the VGA registers has switched to using the definitions
in linux/vga.h, so these have become redundant. Remove them.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 41 ---------------------------------
 1 file changed, 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 61ade07068c8..459105f232d3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -460,48 +460,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN6_STOLEN_RESERVED_ENABLE	(1 << 0)
 #define GEN11_STOLEN_RESERVED_ADDR_MASK	(0xFFFFFFFFFFFULL << 20)
 
-/* VGA stuff */
-
-#define VGA_ST01_MDA 0x3ba
-#define VGA_ST01_CGA 0x3da
-
 #define _VGA_MSR_WRITE _MMIO(0x3c2)
-#define VGA_MSR_WRITE 0x3c2
-#define VGA_MSR_READ 0x3cc
-#define   VGA_MSR_MEM_EN (1 << 1)
-#define   VGA_MSR_CGA_MODE (1 << 0)
-
-#define VGA_SR_INDEX 0x3c4
-#define SR01			1
-#define VGA_SR_DATA 0x3c5
-
-#define VGA_AR_INDEX 0x3c0
-#define   VGA_AR_VID_EN (1 << 5)
-#define VGA_AR_DATA_WRITE 0x3c0
-#define VGA_AR_DATA_READ 0x3c1
-
-#define VGA_GR_INDEX 0x3ce
-#define VGA_GR_DATA 0x3cf
-/* GR05 */
-#define   VGA_GR_MEM_READ_MODE_SHIFT 3
-#define     VGA_GR_MEM_READ_MODE_PLANE 1
-/* GR06 */
-#define   VGA_GR_MEM_MODE_MASK 0xc
-#define   VGA_GR_MEM_MODE_SHIFT 2
-#define   VGA_GR_MEM_A0000_AFFFF 0
-#define   VGA_GR_MEM_A0000_BFFFF 1
-#define   VGA_GR_MEM_B0000_B7FFF 2
-#define   VGA_GR_MEM_B0000_BFFFF 3
-
-#define VGA_DACMASK 0x3c6
-#define VGA_DACRX 0x3c7
-#define VGA_DACWX 0x3c8
-#define VGA_DACDATA 0x3c9
-
-#define VGA_CR_INDEX_MDA 0x3b4
-#define VGA_CR_DATA_MDA 0x3b5
-#define VGA_CR_INDEX_CGA 0x3d4
-#define VGA_CR_DATA_CGA 0x3d5
 
 #define MI_PREDICATE_SRC0	_MMIO(0x2400)
 #define MI_PREDICATE_SRC0_UDW	_MMIO(0x2400 + 4)
-- 
2.30.2

