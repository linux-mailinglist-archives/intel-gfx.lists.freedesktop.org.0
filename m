Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 235AA78677F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 08:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563FD10E103;
	Thu, 24 Aug 2023 06:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC4210E103
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 06:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692858526; x=1724394526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yifi6SPfWx3SkykTY8OCtvhgdXQcPJiL05HcnWXSOUw=;
 b=RX3ZxMc28nklW2rv+tqGBa9sj4sRpOsh8IE1tehdRbI6pWxHjasLqqnM
 jck4fFUGcRDBN8JZZ7kKZHFj5/a6XPc8U2jQ/RmPoNTiUoAglT6JrLk4n
 ddI2kL0R/NKuhocaPTrf37YOEq83XeD3XvDjj46ndwoYqyWNC1MVSqv16
 i701QOhm9zbuBH0qF77gfAl0l41SqZoCMgd2WRB2W1PHUhlLPbaMXSxSt
 anNzY6IIaCq7DOEYjMwOrp5w6EGm44TpqaI/hXfkBh2jU/rGoI3xuRXSk
 jogp7OqEIDYNZ3MA0S2L3BTuE+J5GjjMjNBH3dp4CSSm23iuQQdaYU0Li A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="373241277"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="373241277"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 23:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="736933098"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="736933098"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 23 Aug 2023 23:28:43 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:58:40 +0530
Message-Id: <20230824062840.2372872-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/rpl: Update pci ids for RPL P/U
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update pci device ids as per bspec for
RPL P/U.
Bpsec: 55376

v2:
- Append new id's instead of replacing the existing in device
id list define

v3:
- Fixed the commit messege with revision details.

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

