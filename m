Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B93C5B91D6D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 17:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4682410E4C3;
	Mon, 22 Sep 2025 15:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aD95B0eq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E30810E4BE;
 Mon, 22 Sep 2025 15:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758553404; x=1790089404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tOoRxYyp2KA2qFI4rClmHS9jwMpf2/Gei/o74DjC1nc=;
 b=aD95B0eqKpV0NAbj3wAhzvhnS5oxfY5eXBh1WGgVFvWRlTKop0sPvMf0
 p62t20NREobhOyVl+qBcCrmGbyKoE15Cp0RwnfFk4xGEbVOC4Joq8opXN
 pEGGCLOar2/uywvCqVJ/wizrFlXoHbbK1JnmxHurTz3B0AzMZGRzDd+H2
 cOVweJ9yzt48Xy5EMiTaQzyVNmS6UgZZQXSdwF2ttwGMBfFG96+Rm4fEi
 kGYrUdRY8u0LgX7TKBuE6yzu0igbs3CxcqfD/Fo6S0PBNLQ5tszqIULK9
 QxGHq5vyZoDBh5YFFQpDpQy+E3Byr3Be/JXG1GnIqFh9jc39L4BKqiE3p A==;
X-CSE-ConnectionGUID: 6s537JVOSfO7vim8WVcp9A==
X-CSE-MsgGUID: lEguhPa3SpGNc+aACSd1qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71922189"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71922189"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 08:03:24 -0700
X-CSE-ConnectionGUID: hDv/udxkQZeQ+dikL89c+w==
X-CSE-MsgGUID: zFY4FsulQAauuWNRwzp75g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="180511489"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 22 Sep 2025 08:03:22 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v3 2/3] drm/i915/display: Add definition for wcl as subplatform
Date: Mon, 22 Sep 2025 20:33:16 +0530
Message-ID: <20250922150317.2334680-3-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
References: <20250922150317.2334680-1-dnyaneshwar.bhadane@intel.com>
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

We will need to differentiate between WCL and PTL in
intel_encoder_is_c10phy(). Since WCL and PTL use the same display
architecture, let's define WCL as a subplatform of PTL to allow the
differentiation.

v2: Update commit message and reorder wcl define (Gustavo)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a9a36176096f..f3f1f25b0f38 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1404,8 +1404,20 @@ static const struct platform_desc bmg_desc = {
 	PLATFORM_GROUP(dgfx),
 };
 
+static const u16 wcl_ids[] = {
+	INTEL_WCL_IDS(ID),
+	0
+};
+
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

