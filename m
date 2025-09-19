Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EFDB8A8CD
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 18:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0786E10EA5C;
	Fri, 19 Sep 2025 16:22:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bREBggwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F4F10EA56;
 Fri, 19 Sep 2025 16:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758298962; x=1789834962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=soFYAXukzESUvL0bJQTk4Xjx9WouwWNy74gROoyZuCw=;
 b=bREBggwO6IjEFO8UhCsoSneAEFvB9cv7owfON/mmSCRiUZ+45Y4PJ2dK
 W1spk6xyFq/xdqg2R0Fsn+XLiHNps25Wj65Q1errlEXo3+vNEwoUISSFB
 naCC013kFqODkiwYqlZgmrjQZu+c82pZiisee1bnfZ4RZ+q+GqPEHHJrJ
 1zOftKiLjmKqHaZUQHYfhoTUKgmbCGZpO5eUvYAZM4VPEuW0zX+VfRpsy
 N5ULoIWItfnrOLJBvOddEFHAmQbP/tY7aWmWmZuNNg+k0p+81hDGVLFKK
 IDN+MCIb/8JJnkekhrwthG15l9dzayyBwVSJptIfQJmOjwJBVy31cxbi5 A==;
X-CSE-ConnectionGUID: aEFifwY+TW+mk6+sSlANxA==
X-CSE-MsgGUID: Os4wPixJT66KvbD6muKKBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60536185"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60536185"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 09:22:42 -0700
X-CSE-ConnectionGUID: LK4f+PuARHOGDd3ZRb6JPw==
X-CSE-MsgGUID: Af9EnDibStqqq0MHoHayPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175495065"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa007.fm.intel.com with ESMTP; 19 Sep 2025 09:22:41 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 2/3] drm/i915/display: Add definition for wcl as subplatform
Date: Fri, 19 Sep 2025 21:52:32 +0530
Message-ID: <20250919162233.1624905-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
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

Update the device definition structs for adding wildcat lake as
subplatfrom of pantherlake.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a9a36176096f..84aa6b6384da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1379,6 +1379,11 @@ static const u16 mtl_u_ids[] = {
 	0
 };
 
+static const u16 wcl_ids[] = {
+	INTEL_WCL_IDS(ID),
+	0
+};
+
 /*
  * Do not initialize the .info member of the platform desc for GMD ID based
  * platforms. Their display will be probed automatically based on the IP version
@@ -1406,6 +1411,13 @@ static const struct platform_desc bmg_desc = {
 
 static const struct platform_desc ptl_desc = {
 	PLATFORM(pantherlake),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{
+			SUBPLATFORM(pantherlake, wildcatlake),
+			.pciidlist = wcl_ids,
+		},
+		{},
+	}
 };
 
 __diag_pop();
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 1f091fbcd0ec..0e062753cf9b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -101,7 +101,9 @@ struct pci_dev;
 	/* Display ver 14.1 (based on GMD ID) */ \
 	func(battlemage) \
 	/* Display ver 30 (based on GMD ID) */ \
-	func(pantherlake)
+	func(pantherlake) \
+	func(pantherlake_wildcatlake)
+
 
 #define __MEMBER(name) unsigned long name:1;
 #define __COUNT(x) 1 +
-- 
2.51.0

