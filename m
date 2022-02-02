Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 179E14A6FE4
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5441910E599;
	Wed,  2 Feb 2022 11:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F38B10E68E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643801126; x=1675337126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RIZZCd4F3lFG0jO3UySd4bIpJ+g2/FvAJehLQoFPTW4=;
 b=MiNKdmXHCpgUmm7sQnmR+Czk1cLP17V9cOWQtDXCm7VgP8zpd3nCxPKm
 0UuKMic8p4cL6Pgosy/SVPiqmQdKPosdmRwTabk0Z3ryVIfpohjOhsJYi
 BrGjt3tftpPkhk00b4E1lBdXEcNls7E06l31kSzD9meDR+ez4pUehsBpv
 bXgjSp50jT/j7UhRM7yQhboByvPierW+uqD1di+FeWshDs83xCD6TtO7r
 c5iRF6U/oQ2oiBBPF+WZOoqHiobhTYoy0rYEQhGGcoL/XniVJ2j7kvRmw
 sfyMwEY72WAxoEmd0kIsZkfrgMRwwB0yZ4SCCw6WRbF/c/k3lKTQzr7sD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="231465622"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="231465622"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:25:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="698864222"
Received: from markeyp-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.6.210])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:25:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 13:25:09 +0200
Message-Id: <20220202112509.1886660-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220202112509.1886660-1-jani.nikula@intel.com>
References: <20220202112509.1886660-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: remove VGA register definitions
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
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 41 ---------------------------------
 1 file changed, 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0f36af8dc3a1..48645240d3e7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -370,48 +370,7 @@
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

