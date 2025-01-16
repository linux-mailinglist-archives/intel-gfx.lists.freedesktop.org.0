Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21569A13A29
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 13:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036EF10E582;
	Thu, 16 Jan 2025 12:45:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O2+gCOTO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0598010E582;
 Thu, 16 Jan 2025 12:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737031551; x=1768567551;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C6htTy0QNuXzcrHqFNJrsY0cemvpdakF3wU97Ddzx18=;
 b=O2+gCOTOYVWFSFxeS23pTNQG5XW9kFn6xL9nQ4/FHF8OT/7zN+zvhT7O
 fETZe5W60borZj+i5p+uA4jMHgNXwhhTr1EZAv+Ke9sYKMdM7vWWO1rsN
 qJ+4UYOgmiHENU6YXgl9Q+wKHtRc4eESaRrTRgv1MB6yEMe/dMdzd7a2R
 5w6vLiwOrMq13TSboT0R7vuS35tvq+rvOIldEnvRMJOLK7hnhxYmpFd6p
 k2X2wKIt3/Z+tm8AnujgFhlumTeojA6FEjwdQDiR0IFk3SG0AVHu1oA7o
 RLu6yUsDnEbI0e5udmLtgVs+x/VS/Hp8BOJ5363m5EVqYfD6Fba9A+Yhj A==;
X-CSE-ConnectionGUID: nR7iMcdwQh2689Z//yj5kg==
X-CSE-MsgGUID: hPC3FCakRtSev+iubEyTaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="48809487"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="48809487"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 04:45:50 -0800
X-CSE-ConnectionGUID: Rgehq3TWTNqPgKO9cLqtvQ==
X-CSE-MsgGUID: 6wSwJUuATmOD32mV7XmO1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105943201"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO fdugast-desk.home)
 ([10.245.246.128])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 04:45:48 -0800
From: Francois Dugast <francois.dugast@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Francois Dugast <francois.dugast@intel.com>
Subject: [PATCH] drm/xe: Add missing SPDX license identifiers
Date: Thu, 16 Jan 2025 13:45:32 +0100
Message-ID: <20250116124532.1480351-1-francois.dugast@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

Ensure all Xe driver files have a proper SPDX license identifier, add it
in files where it was missing.

Signed-off-by: Francois Dugast <francois.dugast@intel.com>
---
 drivers/gpu/drm/xe/Kconfig.profile                           | 1 +
 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/xe/Kconfig.profile b/drivers/gpu/drm/xe/Kconfig.profile
index ba17a25e8db3..7530df998148 100644
--- a/drivers/gpu/drm/xe/Kconfig.profile
+++ b/drivers/gpu/drm/xe/Kconfig.profile
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 config DRM_XE_JOB_TIMEOUT_MAX
 	int "Default max job timeout (ms)"
 	default 10000 # milliseconds
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index cb6c7598824b..a1ff59288a3d 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -1,3 +1,8 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
 #ifndef _I915_GEM_STOLEN_H_
 #define _I915_GEM_STOLEN_H_
 
-- 
2.43.0

