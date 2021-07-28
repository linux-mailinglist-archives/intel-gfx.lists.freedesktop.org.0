Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7484B3D9985
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 01:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E23F76E0A8;
	Wed, 28 Jul 2021 23:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00DA6E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 23:34:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="199948750"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="199948750"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 16:34:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="499063933"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 16:34:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 16:34:11 -0700
Message-Id: <20210728233411.2365788-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Correct SFC_DONE register offset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The register offset for SFC_DONE was missing a '0' at the end, causing
us to read from a non-existent register address.  We only use this
register in error state dumps so the mistake hasn't caused any real
problems, but fixing it will hopefully make the error state dumps a bit
more useful for debugging.

Fixes: e50dbdbfd9fb ("drm/i915/tgl: Add SFC instdone to error state")
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 70eed4fe3fe3..49dd5e75429e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -430,7 +430,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
 #define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
 
-#define GEN12_SFC_DONE(n)		_MMIO(0x1cc00 + (n) * 0x100)
+#define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
 #define GEN12_SFC_DONE_MAX		4
 
 #define RING_PP_DIR_BASE(base)		_MMIO((base) + 0x228)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
