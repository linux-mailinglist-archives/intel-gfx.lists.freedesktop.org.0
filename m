Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9829942CCD
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 13:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB6E10E05A;
	Wed, 31 Jul 2024 11:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ql6+qPx0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F5010E05A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 11:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722424071; x=1753960071;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CiY7bqyc6tO40RhKY/NjcB2x20uclpMZs1JgiEG7EGs=;
 b=Ql6+qPx0abXIOI3PbSN1PD3a7GDgZTnnDuCvBeB4YBFgXKnKsxKfU6e5
 Tt7ZjvYStqcoZ3XA/pwTknUnsxm3M87HaIDT3LXJ7Grx2mJ6BBBGqsi2v
 PvZ00JrVYEly6aekFW8ZWIuEr0SS5Sib8fCvZlbse5MNUF7x1anKj98N5
 xAHq5o/el0sYP5sKNsUkU5bKs7iX/AKcl95K7D/i4M7+PTli7yIYkf/dh
 J8PRxr+Jeht8mL06xgOBUcC+FBXXcjHXcuYvfEeunnhxE9r/Cxir0EvVf
 njGNOt6whXmUbgpOr4hVuA55rKzwgbMZj7diHrc5K6vdBfBiGIEBDGx/W Q==;
X-CSE-ConnectionGUID: 8LvIEQ0rQgGPm0o5VfaJAA==
X-CSE-MsgGUID: vX4vi8tDTbWDAphkL+tBGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="19884797"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="19884797"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 04:07:51 -0700
X-CSE-ConnectionGUID: armfO5JQTtat5kPLLsFRzQ==
X-CSE-MsgGUID: ceVIc31hTUqpfZ5HmSMZaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54891014"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 04:07:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: remove unused HAS_BROKEN_CS_TLB()
Date: Wed, 31 Jul 2024 14:07:44 +0300
Message-Id: <20240731110744.1572240-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The last users have been removed years ago. Finish the job.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d7723dd11c80..94f7f6cc444c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -678,9 +678,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	((sizes) & ~RUNTIME_INFO(i915)->page_sizes) == 0; \
 })
 
-/* Early gen2 have a totally busted CS tlb and require pinned batches. */
-#define HAS_BROKEN_CS_TLB(i915)	(IS_I830(i915) || IS_I845G(i915))
-
 #define NEEDS_RC6_CTX_CORRUPTION_WA(i915)	\
 	(IS_BROADWELL(i915) || GRAPHICS_VER(i915) == 9)
 
-- 
2.39.2

