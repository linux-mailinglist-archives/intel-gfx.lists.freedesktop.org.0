Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117C9B96432
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 911E310E62F;
	Tue, 23 Sep 2025 14:31:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8DiFp/7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB7410E62F;
 Tue, 23 Sep 2025 14:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758637880; x=1790173880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pVDS2NiM3HguC8LJsEgxD0y7YfvRgGTJdhoP9+oQVnU=;
 b=T8DiFp/72dlJbXGJjVoeaStdOrNe8uCd7sNmRETNB/Caj5Pr7Dw2V/EY
 OhWA+aya5P+fOS9kio/y7B4hwSJtFK3ZaIR7V9+Zgje6fFMuuSb1BExuL
 MDsUmbvO3vf8p8Mrac1IUl82KjGftxeMZCAMZfXgUM/NIdDAlxBnL0F9Y
 Q391xeZHMX6v5iX7yWJKsUD9Zxm859NMLHDoQ8uCPy+6i34i3fehXZBK9
 rFWVlEGxn5rjMJsw/oit4ing+KkWAovOdbP2NxPTYju2LB/2wpcq7OZQ4
 4DIfEcXhsFkgO+9/Jb5XkumUjPKFMqVhV44cqSzWYJXmk9wdKup3tfZi5 Q==;
X-CSE-ConnectionGUID: wRyM50IxSHml/0WR2cBdHg==
X-CSE-MsgGUID: IHSxss0YTPOaqaPKW8n0mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60836099"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60836099"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:19 -0700
X-CSE-ConnectionGUID: 5NFlZklrTbmv/HVc1ZfKYg==
X-CSE-MsgGUID: dsuYiq3mS1eeeHjJBFxqjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176720693"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:31:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/5] drm/i915/irq: drop intel_psr_regs.h include
Date: Tue, 23 Sep 2025 17:31:04 +0300
Message-ID: <29752bb1942fc2ceceb5140bb49f67e44e1b0676.1758637773.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758637773.git.jani.nikula@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
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

i915_irq.c no longer needs display/intel_psr_regs.h. Drop it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 7c7c6dcbce88..56f231591a3e 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -38,7 +38,6 @@
 #include "display/intel_hotplug.h"
 #include "display/intel_hotplug_irq.h"
 #include "display/intel_lpe_audio.h"
-#include "display/intel_psr_regs.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
-- 
2.47.3

