Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FF46C3F69
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 02:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAEC210E20C;
	Wed, 22 Mar 2023 01:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B534D10E20C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 01:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679446923; x=1710982923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d6JKTmxVGqhY9w/1ZBpitGPf5b9T3sWJjMOvB+q1p74=;
 b=L0qSKqNJq7wjSmZYKTP9UL1tstvsb9GceDzHJeeEwPIVgMGnGwDLio8l
 8OJJ+3Y3fG5dLU608hRnh/qtRjsN83V6qeu6Rw1FhTp1jDOkH9TQo9Jbn
 lnfIrPvzihqLeE7IusSB3tXi/1s0GL0OfkLU6q0HuTYl257zYaRvZJtdP
 TAwT6hZa6xL7uW2bXpCaA3GKbDFW62/UjQ8nWTcd+YM0pnoTyop/WdHk3
 903ALaf9Al4SEhxbO71cll97MmsqSzcueWkD8oS7H9c1t2+wI9/8ONUX5
 Dlqhw5hHWfhHXaWaeKkm5hJIOVOMlUwh1T08Hda2U8PF1pjYL2b7sgWWq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="341452090"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="341452090"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 18:02:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="712043999"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="712043999"
Received: from sahalama-mobl1.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.221.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 18:02:00 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 03:01:38 +0200
Message-Id: <20230322010138.663264-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322010138.663264-1-vinod.govindapillai@intel.com>
References: <20230322010138.663264-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/2] drm/i915/reg: use the correct register
 to access SAGV block time
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrong register address is used to read the SAG block time. Fix
the register address according to the bspec.

Bspec: 64608

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ae8ba090c0f4..b2ed3c0fee4c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7716,7 +7716,7 @@ enum skl_power_gate {
 #define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
 #define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
 
-#define MTL_LATENCY_SAGV		_MMIO(0x4578b)
+#define MTL_LATENCY_SAGV		_MMIO(0x4578c)
 #define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
 
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-- 
2.34.1

