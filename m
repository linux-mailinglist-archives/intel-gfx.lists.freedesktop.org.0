Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F70E89A516
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7711310F44E;
	Fri,  5 Apr 2024 19:38:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cTYlsBDi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB5210E848;
 Fri,  5 Apr 2024 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345885; x=1743881885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rvfq4ycF/P/WpOD+QVP7UNfzG1S0TPddKY9UWfyACYA=;
 b=cTYlsBDiUC/3dMD+IiRuEb6/7CjXL5s9Jx0az7KBBiWXYOm2FCfPK2zA
 jgqvJjF4YuXFCynRXjH+5B2PgvEVQ59Xd8YFLEb2uzlzfsrh35ptQUpGI
 9Ksbf6PMJDKAQgtStFonX1T4xG7hTXvavMRj0LqPVB0NBziIJIi5NSq6T
 y2sUHvpfkR1vAu0SSFT9twkwSfhO5TF/RbiAu0OpA3PQ5NXScp9PkYIEC
 mt2geOSZEV6z4mE4ptcgmxeOTMvNjntTVjhNKRjdwVg2FHBUO5xsBTdRT
 Sq7+OsrHmEI8+MHwkjSomSBQq+WZhQ0Wrqal7ntnYfpf2dCQ/9u2w0qHI Q==;
X-CSE-ConnectionGUID: dsaQWK3KSf6DZxKfwVswVQ==
X-CSE-MsgGUID: HFU/Xww0R5ipUC5D3Wsy3w==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="19124071"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19124071"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:04 -0700
X-CSE-ConnectionGUID: YBIwCXkiQ6mk+qBVpCXVDQ==
X-CSE-MsgGUID: cdEjiGslRku6WwsPku2T1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23755965"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 3/6] drm/i915: move i915_fixed.h to display/intel_fixed.h
Date: Fri,  5 Apr 2024 22:37:40 +0300
Message-Id: <320c451e116c7807e544a50c67ba79b087a4f218.1712345787.git.jani.nikula@intel.com>
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

All the users are in display, move the fixed point header under
display. We could also consider making these more general purpose
things, but that takes a bunch more effort. This allows the immediate
cleanup of xe compat i915_fixed.h.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/{i915_fixed.h => display/intel_fixed.h}    | 0
 drivers/gpu/drm/i915/display/skl_watermark.c                | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h         | 6 ------
 3 files changed, 1 insertion(+), 7 deletions(-)
 rename drivers/gpu/drm/i915/{i915_fixed.h => display/intel_fixed.h} (100%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h

diff --git a/drivers/gpu/drm/i915/i915_fixed.h b/drivers/gpu/drm/i915/display/intel_fixed.h
similarity index 100%
rename from drivers/gpu/drm/i915/i915_fixed.h
rename to drivers/gpu/drm/i915/display/intel_fixed.h
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 50ec51065118..8436af8525da 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -6,7 +6,6 @@
 #include <drm/drm_blend.h>
 
 #include "i915_drv.h"
-#include "i915_fixed.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
@@ -19,6 +18,7 @@
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_fixed.h"
 #include "intel_pcode.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h
deleted file mode 100644
index 12c671fd5235..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_fixed.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../i915/i915_fixed.h"
-- 
2.39.2

