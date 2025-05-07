Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D496AADB8E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 11:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B4710E77B;
	Wed,  7 May 2025 09:38:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gg6TaesB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A7910E778;
 Wed,  7 May 2025 09:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746610726; x=1778146726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=80KQlz99PYGe31n8mH0y/tkNAPtucqTFBfdXCkdOONo=;
 b=gg6TaesBe1Nun2uygdmF1Yu1Ot0YvBALgba68y+KII+7V4TifKei/VxJ
 A4SHiIpiD8CjI1Y7ppF8bXpqQLjql0aaEzrfkA5TruvXefF14Dd/XNbE0
 XYQI8CUHb4PFn3JaiBtqgaDamSQcbzh9/U0kSx9CSCkLfcrFEDrFO6SG9
 W6tq/wt6XKj86MI758YMcWxuZl7Rg8YLVY+BQSwV41mJ1VeXFuTP1RCQj
 faqRL6SglDhebSFsnptzLp8EfnlXAc9NvlXt9enn3SzTLk/ecsp7TdHnm
 Lpg141Q6XGSbnlAgb0DyPQJBlk9x7GVLtWADu68oNzSc/Fjs9D4k+nd7m A==;
X-CSE-ConnectionGUID: sb5tXXbgRRynskwp0uRetw==
X-CSE-MsgGUID: x+JmWAypRC+SCgwhdrOFDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59727214"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="59727214"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:46 -0700
X-CSE-ConnectionGUID: VSlMbrNLRxKt0gGQDCe6ew==
X-CSE-MsgGUID: /918t3HHQfqJ4BFvX25zRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="159194295"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/xe/rpm: use to_xe_device() instead of container_of
Date: Wed,  7 May 2025 12:38:33 +0300
Message-Id: <3528f2cd5965e97248c161b8aa25a9df69606a39.1746610601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746610601.git.jani.nikula@intel.com>
References: <cover.1746610601.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Drop the dependency on display being a sub-struct of xe_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display_rpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index 1955153aadba..ef76efe42e9f 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -2,12 +2,13 @@
 /* Copyright © 2025 Intel Corporation */
 
 #include "intel_display_rpm.h"
+#include "xe_device.h"
 #include "xe_device_types.h"
 #include "xe_pm.h"
 
 static struct xe_device *display_to_xe(struct intel_display *display)
 {
-	return container_of(display, struct xe_device, display);
+	return to_xe_device(display->drm);
 }
 
 struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
-- 
2.39.5

