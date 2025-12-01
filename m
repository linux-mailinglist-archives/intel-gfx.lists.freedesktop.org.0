Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FABCC986E9
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 18:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD25310E0D4;
	Mon,  1 Dec 2025 17:11:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JP38shHb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB9010E3F9;
 Mon,  1 Dec 2025 17:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764609069; x=1796145069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YdkLGh56k04Mckz7IAgR+b0l9Eue+yw0l0H100uOuPc=;
 b=JP38shHbK/s0fUndeipL7FSe9kHTXc8FzOUcQSSRAylvo41r6I/mSkpz
 lqtr0bNLBZ++yZRbCs3naLVn5guOhQHupjmaG+prQb40GMhr+5e6Qiiat
 k2KCbW5DCbVIDJH4Ne7YOjHBfLACl46Td9iMZUgQKK07F9Oa4+LU46U3Z
 s9D96a8bSmgNYxf15UbC4Dt1PvzhFhsyB+4/QEYG8vwv2x2S2sWizj99C
 Dr5NVt2NLJKN4gc2WqfsaCteaY1rJ8jvW0PqCi/MKbQrggoxifN5bAaVF
 88+14dJh0x+MvV1NekHA6YuKI8sv88/EUu/u0lrLFpyS6BofkvUa2hG53 A==;
X-CSE-ConnectionGUID: dH2CQXb4REKnwvUsuG9dEA==
X-CSE-MsgGUID: JoucaaxVQ5GH09H8URlotg==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66266446"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="66266446"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:10:59 -0800
X-CSE-ConnectionGUID: TqRRKFA8SyOgDx4TXCSC1A==
X-CSE-MsgGUID: xiJJuR+MTXmaDdi/lIFIOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="193785062"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 09:10:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/xe/compat: remove unused i915_active.h and
 i915_active_types.h
Date: Mon,  1 Dec 2025 19:10:50 +0200
Message-ID: <20251201171050.2145833-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Commit 965930962a41 ("drm/i915/frontbuffer: Fix intel_frontbuffer
lifetime handling") dropped the last xe display users of the
headers. They're still used in intel_overlay.c, but it's not built as
part of xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/xe/compat-i915-headers/i915_active.h  | 22 -------------------
 .../compat-i915-headers/i915_active_types.h   | 13 -----------
 2 files changed, 35 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_active.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_active.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_active.h
deleted file mode 100644
index 6f0ab3753563..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_active.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2022 Intel Corporation
- */
-
-#ifndef _I915_ACTIVE_H_
-#define _I915_ACTIVE_H_
-
-#include "i915_active_types.h"
-
-static inline void i915_active_init(struct i915_active *ref,
-				    int (*active)(struct i915_active *ref),
-				    void (*retire)(struct i915_active *ref),
-				    unsigned long flags)
-{
-	(void) active;
-	(void) retire;
-}
-
-#define i915_active_fini(active) do { } while (0)
-
-#endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h
deleted file mode 100644
index 8c31f9a8b168..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_active_types.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/*
- * SPDX-License-Identifier: MIT
- *
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef _I915_ACTIVE_TYPES_H_
-#define _I915_ACTIVE_TYPES_H_
-
-struct i915_active {};
-#define I915_ACTIVE_RETIRE_SLEEPS 0
-
-#endif /* _I915_ACTIVE_TYPES_H_ */
-- 
2.47.3

