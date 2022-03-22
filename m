Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B80094E37DE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 05:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3240F10E53E;
	Tue, 22 Mar 2022 04:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF0910E53E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647922762; x=1679458762;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4HEEUwQ8o+krcBxzMgFfilITQ2NlrM2tRNv5HvxuxTo=;
 b=Q1/Ts0X6kS26/T29kFt9bmPKmaa5WqO+8XurrvzT1F1aDzyGvZinQIVO
 wuGFlMkzNRk982zjHFa04hrX2tuCdewpMU/0903tRg8qEbc0LaNAEp1NX
 ZpLtTNovTmqCBkl84vjmPp6/okbjERiTZMzR2VCiPMlcUcddKas/GoLco
 p+Dpp7/4D7IqJD849C86WEhISgE8rViX6GqHNbHlEGfVAVrW08kU8LwIt
 k62rGoJ6XBWQey5cNdeGl/i5PkB02OWnW9bn9KwrKJxj370soC+WL6LeU
 PUWBjrogJbcsZ75Tn76ZDNyTRl+cpNdlfMAj/L899Xy3zCo6YfdP7CnQW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="237660266"
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; d="scan'208";a="237660266"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 21:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,200,1643702400"; d="scan'208";a="560187523"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 21 Mar 2022 21:19:16 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 09:36:16 +0530
Message-Id: <20220322040616.1078009-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add RPL-S PCI IDs
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add couple of RPL-S device ids

Bspec : 53655
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 include/drm/i915_pciids.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 3609f3254f24..638be9cddba4 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -679,7 +679,9 @@
 	INTEL_VGA_DEVICE(0xA782, info), \
 	INTEL_VGA_DEVICE(0xA783, info), \
 	INTEL_VGA_DEVICE(0xA788, info), \
-	INTEL_VGA_DEVICE(0xA789, info)
+	INTEL_VGA_DEVICE(0xA789, info), \
+	INTEL_VGA_DEVICE(0xA78A, info), \
+	INTEL_VGA_DEVICE(0xA78B, info)
 
 /* DG2 */
 #define INTEL_DG2_G10_IDS(info) \
-- 
2.34.1

