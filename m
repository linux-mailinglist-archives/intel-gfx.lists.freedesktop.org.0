Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A48CD5FD1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 13:34:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5C010E65E;
	Mon, 22 Dec 2025 12:34:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vov+dJsP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6111A10E65C;
 Mon, 22 Dec 2025 12:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766406858; x=1797942858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=914VhTr3Ql6ONdrk/3LViJ2Y5BEjwA/0bO3p4fgIV5I=;
 b=Vov+dJsPNo1u/TO+eivrijMwnI3qoEbtpfwGj/c9h9p6wKhyak+DnywF
 MvKIjmGK1+DazincVbCcXfhlusF5/N0j7kkqGH5degxlwgwkDzQWnrdMU
 fze5QqVGEuMZ1HTsNZY5/vTWQqnmxesfohqWJtFqm8/Ri4MgjRi8E7TsR
 oA7Si2MwcbBt7L2oi/flxI0EoerPcgjKiPp0ztKizyo4J03yHVlaj0yzj
 aLp+AxYdd+a0YvbqA/UK+Ban5N40m81eve3UZbeCwYf3Q4CuLZ9DoChYn
 J62BP92qynAIeLa9nmNaGOSATJLf9koG9e43sjCUxH+7zmOfWHjpFJR96 w==;
X-CSE-ConnectionGUID: tF0g/dZHTPioH8vGDP6NmA==
X-CSE-MsgGUID: Fb3Q2v0QTgaS8/0/5rfmYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="72121839"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="72121839"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:18 -0800
X-CSE-ConnectionGUID: /IyMHPWEQhWnlpDfSjdx+w==
X-CSE-MsgGUID: U/fuXG34Tq2MWq4vXsLatg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="203984542"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/4] drm/xe/compat: remove unused forcewake get/put macros
Date: Mon, 22 Dec 2025 14:34:01 +0200
Message-ID: <5081b00a6fa20bdbcc1c973c6920cd590e1dc98f.1766406794.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1766406794.git.jani.nikula@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Since commit 35ec71285c93 ("drm/i915/pc8: Add parent interface for PC8
forcewake tricks"), the compat intel_uncore_forcewake_{get,put} and
FORCEWAKE_ALL macros have become unused. Remove them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index d93ddacdf743..0d60a0bf2e4b 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -10,8 +10,6 @@
 #include "xe_device_types.h"
 #include "xe_mmio.h"
 
-#define FORCEWAKE_ALL XE_FORCEWAKE_ALL
-
 static inline struct intel_uncore *to_intel_uncore(struct drm_device *drm)
 {
 	return &to_xe_device(drm)->uncore;
@@ -154,9 +152,6 @@ static inline void intel_uncore_write_notrace(struct intel_uncore *uncore,
 	xe_mmio_write32(__compat_uncore_to_mmio(uncore), reg, val);
 }
 
-#define intel_uncore_forcewake_get(x, y) do { } while (0)
-#define intel_uncore_forcewake_put(x, y) do { } while (0)
-
 #define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)
 
 #endif /* __INTEL_UNCORE_H__ */
-- 
2.47.3

