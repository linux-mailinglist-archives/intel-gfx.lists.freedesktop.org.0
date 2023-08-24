Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54871786A56
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D5810E4BC;
	Thu, 24 Aug 2023 08:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764FC10E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692866550; x=1724402550;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CxXpDcnZCimmsEMntZfDyKFNnm8d5+NgrIhbBE7DyBw=;
 b=BcyPL7G/6VoyooWNtj1qNi4c+LTG5/yO+KvPDJtqdyuTNqYqoIidah2d
 cGwjng6Zk61HCfjsY8VWSwSki/dUinOfBXNUUcU39HNuj1jjZ5HqyA8pB
 NytUrMU1rmg/KeFHGK2ZHnJlRh6uGfaaiikjdYW29/7clVoQ/CMzYW5MQ
 dV3Y6ryiN7lULrWcYNVmzvUKwKZhS32JdOje/LcFHIrdocTAjIpbZSFRC
 Ca2I5JsqCoDLu3v6QVOZwBuQtk7yQ+XRF+g5SP0Odt+0t6s6vRSQ9+jS9
 PQyn+NComLA+tVeu7gXqD2jtDRN8fxhXC5qeh9Ly03D2LQmYJ0GCmPtPe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="377110731"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="377110731"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766461999"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766461999"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2023 01:42:27 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 14:08:46 +0530
Message-Id: <20230824083846.1114262-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rpl: Add new RPL PCI-IDs
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

Add newly added PCI-IDs for RPL

BSpec: 55376

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 include/drm/i915_pciids.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1661f9e552d2..1256770d3827 100644
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
2.25.1

