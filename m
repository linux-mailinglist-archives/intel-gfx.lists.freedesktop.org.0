Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8208E8D3DAF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EF710ED28;
	Wed, 29 May 2024 17:48:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3m5jzZS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6711010E763;
 Wed, 29 May 2024 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004934; x=1748540934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U5VZsZxdx3Qoh3v1vmy9Tm997DzVL4NWHqNL2AAUVjg=;
 b=D3m5jzZS7IYf65P6YrlCDS869rI6Jx47FSCtias/iSuO+CoenXCQs489
 PhbZOOSGZVlN7bJIyFRmYz/4BoqCQNpLbxyTr8vvN5NOx8EtE6u0AhRbM
 Itvfju4a2E6eWAmfgJtVYeNDGEJmt/UDCe6Dfx5svcvrl+YWu50ZZ3yUu
 eIWGU/66lgiIhUc/E8vHxmPGcQlK0LvfBZvy0b3D7iu8ugtdLD534KJ+K
 JQbVtXu3hp9murOXzjRMqoEpEcdEtYWaRyPZd+2b4cF5b59blfa1WkCg/
 wNvjnuOnNs+1t3Qxku2tQdvBFwTF4zXrSpDozcO+PUP915YC7CuvnFQu3 w==;
X-CSE-ConnectionGUID: Ngn7lCNFS2Koa5oIkcWz8w==
X-CSE-MsgGUID: JA6VlUwBT5+y5Uv86i95GQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="16378465"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="16378465"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:53 -0700
X-CSE-ConnectionGUID: kWjmfy9MQwqDO51Gjy9o3Q==
X-CSE-MsgGUID: df27qrnjT/m0i6q5xrnO8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66393667"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 09/10] drm/xe/display: reduce includes in compat i915_drv.h
Date: Wed, 29 May 2024 20:48:13 +0300
Message-Id: <ada73d5e3565b1cc284405386a16cc74d79bbb05.1717004739.git.jani.nikula@intel.com>
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

Remove some unnecessary includes, and replace xe_device.h with the
sufficient xe_device_types.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index fb37da4850c5..2feedddf1e40 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -12,11 +12,9 @@
 
 #include <drm/drm_drv.h>
 
-#include "soc/intel_pch.h"
-#include "xe_device.h"
-#include "i915_reg_defs.h"
 #include "i915_utils.h"
 #include "intel_runtime_pm.h"
+#include "xe_device_types.h"
 
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 {
-- 
2.39.2

