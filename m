Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B752C8FB726
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF92D10E4FD;
	Tue,  4 Jun 2024 15:29:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HiulkoS+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4EA10E4FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514960; x=1749050960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9DiyLpEMOQoH2HBjby/pbAyIqZwB5gNdvV6IyfQSESs=;
 b=HiulkoS+VXoeD2g6q9nOdKizU4Heaombw4v1nWMBBUEgQSTw9F2/thpV
 u26IMQ8wF8IeVqn8AqxN9RMcslwvnHDXzYXe9KIjuKFE/6W9/48Z5+y7S
 1kqgRseWRWpYyDgoD0/UPZPZLCJf9ULozpNfT8Dt/DM8JD66ghXCZi/fX
 HM0nq/3l+PVbfAE+meFNFnf5IKP60nrPY4h3+pWrbbWk+8+HpAx6aBRDI
 LJ9lPfaprjfBVGqWdBBJw1OYuJdN9Dxftnxbf3B2LO3ZS9MQ9LHJK6fhL
 KFQPLxk5HP2d60ni8/BgLJ9HBdLh2zqf8VObNHiz1yj33sR7xiiOyF2ZH g==;
X-CSE-ConnectionGUID: zIlkE3uSRPOlJF59DZR7Kw==
X-CSE-MsgGUID: iouHrHodTmqnwkxvH82CVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949599"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949599"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:20 -0700
X-CSE-ConnectionGUID: Jm27eCMcS3Wu0KewMBSwIQ==
X-CSE-MsgGUID: onlCEvg3ReilE2oIJzJv+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60465689"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 36/65] drm/i915: pass dev_priv explicitly to _PIPEBDSL
Date: Tue,  4 Jun 2024 18:25:54 +0300
Message-Id: <c2e90b608bd6f525c95f3350cf1661113a39360a.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the _PIPEBDSL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2f942882e7ed..0a2111b0cd98 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2296,7 +2296,7 @@
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
 
 /* Pipe B */
-#define _PIPEBDSL		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
+#define _PIPEBDSL(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
 #define _TRANSBCONF		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
 #define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
 #define _PIPEBFRAMEHIGH		0x71040
-- 
2.39.2

