Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7AA8D4948
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 12:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9196A10F6E1;
	Thu, 30 May 2024 10:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A3UGYC7m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4456F10F62C
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 10:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717063681; x=1748599681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5wOAa5L3bjwLy44eiVuVBOue8NQn3l0l735eAOFoLUg=;
 b=A3UGYC7moCP8veWXqpambl8Y3D3ZeE+iSRhZoU/jgN/rHS8ZZYGmB1wu
 yXjQ92Bs1pT+EDQenh8qBDJ9zhkDYtRppfaIcifHbCdTjSOhgRA6C2w+u
 O/mxT27oAWEjerJCSiPgzOKsAob163lpjQypilnXMgsbOl1YVXf2GIW2y
 Y13RIJMwH29ASN76TDDPJrHt8lWafxwpuK8LOvH5CfHCdjuJAUC4G9wGJ
 zHNpsDhP5sMrwMlJ+n0JZhxywY4Wsko4A02vkaH8YErkYpqWoEg/iU0am
 mg/nXaWXeBEilV+Qhza5T5UyIQ94MJwoXeT2v5Y9R+WkUAwmuK76n0f1c g==;
X-CSE-ConnectionGUID: 18gU0nHZT+amdfM9x6GiyQ==
X-CSE-MsgGUID: 2zgQ+BZ0TRqpJfAEBlrD4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24089313"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="24089313"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 03:07:59 -0700
X-CSE-ConnectionGUID: TeqC62ezSiS8fWgLKQk8Ag==
X-CSE-MsgGUID: qiehgY40R5ig2ssYlHo8dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="36406634"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 03:07:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915: reduce includes in intel_clock_gating.c
Date: Thu, 30 May 2024 13:07:47 +0300
Message-Id: <20240530100747.328631-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240530100747.328631-1-jani.nikula@intel.com>
References: <20240530100747.328631-1-jani.nikula@intel.com>
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

With the refactoring in the file, some excessive includes were left
behind and are now unnecessary. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index db4fbb6a803d..26c4dbda076e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -26,11 +26,7 @@
  */
 
 #include "display/i9xx_plane_regs.h"
-#include "display/intel_de.h"
 #include "display/intel_display.h"
-#include "display/intel_display_trace.h"
-#include "display/intel_fbc_regs.h"
-#include "display/skl_watermark.h"
 
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
-- 
2.39.2

