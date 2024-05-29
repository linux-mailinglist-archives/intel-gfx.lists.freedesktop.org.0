Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573428D3DA1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF6910E2E2;
	Wed, 29 May 2024 17:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RDoK4TAZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8913310E2E2;
 Wed, 29 May 2024 17:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004888; x=1748540888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wh5bqMYOSQTd24YAhd01N78CGIlD6Jkz+TYmkw/wD/c=;
 b=RDoK4TAZfCdFM9p4p5NaG7tKrib2pAHkOSY+Vnex96LjpRQR1rJwIJOX
 f8KRgV/dQGV9GdsXt3owkKaynYeSdWJw9te45dOR7nYenZzLyFURWVS12
 mNdWue67XYyWCix1VYPEY7cThEIw5geQZherqw8rxCB55slG0H4vuZrYW
 tzX735T5VspdLGjBZdv4erL4tg1KU1xHc0gGWDBOmJ4+akZxZi2LE90Jr
 RO09LlomejcI48c+9dz8EuENb2Ql3YBhSpxkbdNLw7NW0mJOqGX9nop2z
 XavRKCMi5gw4Muy9QZ0+Xx+YHLR8mLOJeyUHJEBPlz2OA4crWdKNdfetF w==;
X-CSE-ConnectionGUID: 5GgNvNcwQHazM0kL6seW/w==
X-CSE-MsgGUID: 9BwNMLDHTDujiQqH6cCIMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24082644"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24082644"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:08 -0700
X-CSE-ConnectionGUID: cDRzz0VlTHu1rVdnFERH7w==
X-CSE-MsgGUID: /yZ2ZWlDQHWZ0Cee3Zwhag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35452773"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 01/10] drm/i915/display: include gem/i915_gem_stolen.h where
 needed
Date: Wed, 29 May 2024 20:48:05 +0300
Message-Id: <6ac3480a8689fda5aaf4007cb604e06e939a03f7.1717004739.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717004739.git.jani.nikula@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
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

Include what you use. We need to move the compat i915_gem_stolen.h under
gem subdir. With this, we can drop the include from xe compat
i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c                         | 1 +
 .../gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h   | 0
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h                | 1 -
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h (100%)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index e9189a864f69..6985abeb6102 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -43,6 +43,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
+#include "gem/i915_gem_stolen.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
similarity index 100%
rename from drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
rename to drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index cd4632276141..3be3d419530a 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -19,7 +19,6 @@
 #include "xe_bo.h"
 #include "xe_pm.h"
 #include "xe_step.h"
-#include "i915_gem_stolen.h"
 #include "i915_gpu_error.h"
 #include "i915_reg_defs.h"
 #include "i915_utils.h"
-- 
2.39.2

