Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFE9783063
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 20:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1EF10E070;
	Mon, 21 Aug 2023 18:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039BB10E070
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 18:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692643121; x=1724179121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zv2Q2fZKAzr7/SPGuchnHtmIsOx5DI15HvbRzYWK61Y=;
 b=QTbMNf0baaZmLYSqfwiWxXBr1dJCsdcRVq8dQw4hNWg/1VivxUT28/SS
 t4ikE85FYcdmmVJLIGFjOk7Wh9vo4tfm/ZPOVfjk+6GgG6DI6JLtkGb3g
 U60SrH9GvxB2SgtsofJNCDYKQoQ+MBYHk2T8ATW8zzLHaBFj46wsOYZAX
 cAF2l0VMgg5VLGLmuMo+Ow6ehWScdXcrhWySnI1qiJI8FSc+X16rkC812
 JoRTZUxnxt5chMatZ844fkQY+d2tGtVXrgRiuZLJNvr+XcWFBIp7mcHoW
 AigO8fCqzemtavXCtm0OA8BfmMquY6TNS6qMAlDkXhbgaE3ElkYLZUw/F g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377417120"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="377417120"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850278579"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="850278579"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2023 11:38:35 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 00:08:31 +0530
Message-Id: <20230821183831.2165318-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rpl: Update pci ids for RPL P/U
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

Update pci device ids as per bspec for RPL P/U.
Bpsec: 55376

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 include/drm/i915_pciids.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index e1e10dfbb661..8a697a9a84af 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -688,15 +688,15 @@
 /* RPL-U */
 #define INTEL_RPLU_IDS(info) \
 	INTEL_VGA_DEVICE(0xA721, info), \
-	INTEL_VGA_DEVICE(0xA7A1, info), \
-	INTEL_VGA_DEVICE(0xA7A9, info)
+	INTEL_VGA_DEVICE(0xA7AC, info), \
+	INTEL_VGA_DEVICE(0xA7AD, info)
 
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
 	INTEL_RPLU_IDS(info), \
 	INTEL_VGA_DEVICE(0xA720, info), \
-	INTEL_VGA_DEVICE(0xA7A0, info), \
-	INTEL_VGA_DEVICE(0xA7A8, info)
+	INTEL_VGA_DEVICE(0xA7AA, info), \
+	INTEL_VGA_DEVICE(0xA7AB, info)
 
 /* DG2 */
 #define INTEL_DG2_G10_IDS(info) \
-- 
2.34.1

