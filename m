Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC98B2670A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 15:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FFDC10E890;
	Thu, 14 Aug 2025 13:24:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/6eIhx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBA910E891
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Aug 2025 13:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755177892; x=1786713892;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wIv1z9zYnkJX9u9SJG3NYdJH6+8ks1H+PvK3Ep1ZRZ0=;
 b=b/6eIhx9B/j9GQz5hRnv4NIg+PwUnJzBFX39MM5tun+BonirMxeqkZyL
 tCdkwIQtbCFbl/zjFXLvjtKLNsPTubIETiBhus8l5b003EEHZbLjKAWbP
 Xh++SoWt6hDwkHULfEqBgcrdkNKcz46AfclVWMsnOiC6lFewBB+1L3lUx
 xy+IwFcYmhynrc78xlzOHJC+i3HJFGV55oliftHpstPh3iqG0YudPH440
 lB0pPdGcTB0jUlXYa/JBJ0AWoqdWsJUBE19IcY1XvNtsWM9KUUD5B2crl
 pDqdXlfvKTNMOwzoorNf+2BFAj4XYGBHYXlkG0s8B3VwP4xu67cPWEL/G w==;
X-CSE-ConnectionGUID: C+XVDn34TtOfs8CSxkypfQ==
X-CSE-MsgGUID: e93xhHmOQ6qcQ1SrIhOgAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="57444803"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="57444803"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 06:24:51 -0700
X-CSE-ConnectionGUID: odu73s/iRGunhj7/M/DcZQ==
X-CSE-MsgGUID: 3dpVIZ9fSRyEIUvilDhYmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="170996559"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 06:24:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/bo: remove unnecessary include
Date: Thu, 14 Aug 2025 16:24:45 +0300
Message-ID: <20250814132445.1573035-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
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

intel_bo.c doesn't need intel_display_types.h for anything. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 65d64f79a4bd..d29c1508ccb9 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -2,7 +2,7 @@
 /* Copyright © 2024 Intel Corporation */
 
 #include <drm/drm_panic.h>
-#include "display/intel_display_types.h"
+
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_object_frontbuffer.h"
-- 
2.47.2

