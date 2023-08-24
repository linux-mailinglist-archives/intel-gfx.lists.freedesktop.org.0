Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCA3786761
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 08:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0360F10E103;
	Thu, 24 Aug 2023 06:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0A210E103
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 06:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692857929; x=1724393929;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YhR/+xjThqhDIl01sOSEc+8kUWct/rqVRMyJQZoCYtA=;
 b=E9lGtWrihlgIVF+wuxCRcvsq2lY3H8S/7+UYGg1F+axlyIvdHZF05VRh
 Xgamx+APQvfw1bKVT5lYpBQOhxMU0ChDM3jgcFg15t128wvoBtxVysTks
 ZuMNh0rkIYul9bZra2ZMGsqhxc1OgecWoNPq1VwcxL2tfBniR8oN9yp+m
 8VgdAabgDH0jfKLOR69eSpfjifcS5V4wsn2MJbeUd1fbX8cUKF21jsLHG
 9gUh4jUEeWdyjCXP2e05S9poOFCGVCdw1w1zKlZlD3nj/78xf5gxg3bNG
 YTRbnfKHB3UD5c/jMkmBBEhOlM9LUDvXSSDlPQoIMkrqjlrKFOGDPOjtv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354688705"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354688705"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 23:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="772001014"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="772001014"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2023 23:18:36 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:48:33 +0530
Message-Id: <20230824061833.2370237-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/rpl: Update pci ids for RPL P/U
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

Update pci device ids as per bspec for
RPL P/U.
Bpsec: 55376

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 include/drm/i915_pciids.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index e1e10dfbb661..21faa73db7ec 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -689,14 +689,18 @@
 #define INTEL_RPLU_IDS(info) \
 	INTEL_VGA_DEVICE(0xA721, info), \
 	INTEL_VGA_DEVICE(0xA7A1, info), \
-	INTEL_VGA_DEVICE(0xA7A9, info)
+	INTEL_VGA_DEVICE(0xA7A9, info), \
+	INTEL_VGA_DEVICE(0xA7AC, info), \
+	INTEL_VGA_DEVICE(0xA7AD, info)
 
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
 	INTEL_RPLU_IDS(info), \
 	INTEL_VGA_DEVICE(0xA720, info), \
 	INTEL_VGA_DEVICE(0xA7A0, info), \
-	INTEL_VGA_DEVICE(0xA7A8, info)
+	INTEL_VGA_DEVICE(0xA7A8, info), \
+	INTEL_VGA_DEVICE(0xA7AA, info), \
+	INTEL_VGA_DEVICE(0xA7AB, info)
 
 /* DG2 */
 #define INTEL_DG2_G10_IDS(info) \
-- 
2.34.1

