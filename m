Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E46AB9BC9
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B809B10EA91;
	Fri, 16 May 2025 12:17:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GlFQ8nSP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEDE10EA8F;
 Fri, 16 May 2025 12:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397840; x=1778933840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=riY4rDPieg4R5bJ8qgs09HNPWUygtn4X3QtriEmf5Vw=;
 b=GlFQ8nSPlhLhsHgggOUmxki/5K8MnEHnlZZt30ylBjVD2YQrnm8ifqbE
 CPnpuiI8vzv/+f/8K1oLM5E82QkbEBqcsaYAfYx6DKvHlk9jfn5Jenu5L
 FHGhm6Qwhb5+Me4L5DEifzvEVH2VFxKjorh5s/goQ1shBPhe/xUjVnaS+
 DI4oDTslc+8755nh+8O+Iu6+84wL6IiQwjTWlJcvYoFY9sylDFz0yzXVc
 qJklCbaR0nMOiXzfov/+igAquVbRFF8wr8XD11186W3stcub61O34cK40
 mwW6/osNDDDkQVGSdirli9Vs6M1coQTn9PNA1FjbkWJQHKvpoBWwJON9O A==;
X-CSE-ConnectionGUID: SCLUej4ISlaNyZoL/vaIFg==
X-CSE-MsgGUID: rWqkslZIQ1aazGSmRr0Kmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74766533"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="74766533"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:20 -0700
X-CSE-ConnectionGUID: Hd2cAQFhTeGdNixwgG7acQ==
X-CSE-MsgGUID: 8D1L9JvjRr6Gfu29/qUj/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143568568"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 3/7] drm/xe/display: drop duplicate display->fb_tracking.lock
 init
Date: Fri, 16 May 2025 15:16:56 +0300
Message-Id: <f895a8a43c61a6e60db8e1eb698919ce0faab27c.1747397638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747397638.git.jani.nikula@intel.com>
References: <cover.1747397638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The spinlock is initialized in intel_display_driver_early_probe(). Drop
the extra init.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index df897d08255c..9513b03847a8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -109,8 +109,6 @@ int xe_display_create(struct xe_device *xe)
 
 	xe->display = &xe->__display;
 
-	spin_lock_init(&display->fb_tracking.lock);
-
 	display->hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 	if (!display->hotplug.dp_wq)
 		return -ENOMEM;
-- 
2.39.5

