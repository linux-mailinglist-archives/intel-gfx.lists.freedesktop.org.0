Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA2B8D3DA6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36DB910E343;
	Wed, 29 May 2024 17:48:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zg8ZOvU6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4E310E4F9;
 Wed, 29 May 2024 17:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004905; x=1748540905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iaDtTOiID8vxEuLa0wpfi5/HjnkVZQHaYB0rf3PwIg8=;
 b=Zg8ZOvU6P7wB+KnPCbDNS+OaWFUmGUdXhfaVL0SHtVbu17wiiCpxjgeZ
 q4US1g85MEL5X15WEWxU6LOTqeQIU/Tu0jjU5HsJLHuApUA/pGLTH8+G/
 vjc1eufpvEx1ChukjPO9FNEaWhziIybA1vREWSCoIS7OL2S133AKjxBXj
 ByAGJ9x8hpYiezxu3So9aJf46iHzPorD72ywACuqAZBdTYPPoJHusWvve
 x5OcoZegYQfxOqXdlbWtXmwWmooglqHC2IoaDckvTAh4b7fAZXz2SSZKb
 ampjjczalaoxnVmJrWpeKmGA1att7g/cpNJ3jM32rny9IHcCpL/cuaT6o A==;
X-CSE-ConnectionGUID: 3mdn4LSsRAOZAgcn6yLvCQ==
X-CSE-MsgGUID: +Huf7R1sTm6Ww/L61ogBKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24082663"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24082663"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:25 -0700
X-CSE-ConnectionGUID: xwnnuAYXRVSJ23GjdHBqFw==
X-CSE-MsgGUID: whpgthR3TJm4ErKMoS0Z3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35452790"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 04/10] drm/i915/display: include intel_uncore.h where needed
Date: Wed, 29 May 2024 20:48:08 +0300
Message-Id: <bc3a722413e20db905671e58627ba6d757f41c63.1717004739.git.jani.nikula@intel.com>
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

Include what you use. With this, we can drop the include from xe compat
i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 1 +
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b0a49b2f957f..e53a789e3170 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -36,6 +36,7 @@
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
+#include "intel_uncore.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 9776cc3332fe..e5966f07a924 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -22,7 +22,6 @@
 #include "i915_reg_defs.h"
 #include "i915_utils.h"
 #include "intel_step.h"
-#include "intel_uncore.h"
 #include "intel_runtime_pm.h"
 #include <linux/pm_runtime.h>
 
-- 
2.39.2

