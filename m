Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AA689A519
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8071210FA6A;
	Fri,  5 Apr 2024 19:38:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbZm5oQf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F00B112449;
 Fri,  5 Apr 2024 19:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345895; x=1743881895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kEx0rq/XXCdk9mg9wNxmPTkhCx3ChPL2TXCfU58bM1E=;
 b=jbZm5oQfvkYTysOlCuTJm+pL3wuj+uJgjBRAfrbW8ZGxCFuj65Y48FMY
 6LpFZCHHkxhileZ3XmkoRkWZW2tmrJYX9QGV2hAFIszyKcqI7D1SwhO+a
 Rux+ZfydneQDlJ7XIkfA72QtXky3yjWo5FGmcEUGfp14IzYLQdYAkoggf
 h7pEBou1lBhDqjbsYb0r4Mbrynt4ZFrfV5q3wpbm1m7U1eAe978RoeLLX
 oG+u6SRRadtOmDMeH3Wkupn4XoMNfQmS+Po8LBc03L0md2co6wpz4IXRY
 dej+Eu5pE4PKeS0rSN8h0dYN8JrJy70vMY2tVQAYL2/ZSVM7zTsXjELMc A==;
X-CSE-ConnectionGUID: leYyb8cETQKsD1h1oU7Y0A==
X-CSE-MsgGUID: YOIrOJh8RKK2KDSJGRLUgg==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7877845"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7877845"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:15 -0700
X-CSE-ConnectionGUID: ax3+KyixTG6Dpea3rL3LXQ==
X-CSE-MsgGUID: wdNKBV6sTEGvtoGDUrnkZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19107822"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 5/6] drm/xe/display: remove compat i915_gem.h
Date: Fri,  5 Apr 2024 22:37:42 +0300
Message-Id: <8de7815d9c80125b86e0b85a1af80d4f8686eef6.1712345787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712345787.git.jani.nikula@intel.com>
References: <cover.1712345787.git.jani.nikula@intel.com>
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

It's only there for GEM_BUG_ON(), but the display code no longer uses
it. Good riddance.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
 drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h | 9 ---------
 2 files changed, 10 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index a922aa7ad11e..2792a497257e 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -19,7 +19,6 @@
 #include "xe_bo.h"
 #include "xe_pm.h"
 #include "xe_step.h"
-#include "i915_gem.h"
 #include "i915_gem_stolen.h"
 #include "i915_gpu_error.h"
 #include "i915_reg_defs.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h
deleted file mode 100644
index 06b723a479c5..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h
+++ /dev/null
@@ -1,9 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __I915_GEM_H__
-#define __I915_GEM_H__
-#define GEM_BUG_ON
-#endif
-- 
2.39.2

