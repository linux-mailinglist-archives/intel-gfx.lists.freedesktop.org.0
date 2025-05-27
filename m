Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8D1AC4DDA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 13:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE9A10E46A;
	Tue, 27 May 2025 11:49:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G4nq79Zj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE9710E45D;
 Tue, 27 May 2025 11:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748346541; x=1779882541;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/ooKggMapFQd2QIHLc/krIYaWcUnfl98Is7EA9wbd4A=;
 b=G4nq79Zj5rL3QRqcJWbj8OumIPB/yEPTYR0rHaDtGhSzxwC3r8P7YQQt
 TEfJq8TF57NkB18I3E17DtlDPZA6G6x5+Ai9PigTEUeZ6YOIqAaFbMsID
 lf2lj/xj8xjGQGLFLSeCBq/eRh9FkPvRv/XRXdQklAvToePMpQGwluiwj
 h5ZY7AyFGWA7Y4bbPHVws5bw+Q+lpRU8SKJ0niiaCalnl0BegINr6WYzf
 0HHVzSfBHybOTZgO5CuJ3FpSRv5xx0kDfxpdVDfhaIMlVWQrRI/n9ekMy
 sfOTVL8ymhmAzTpG6nQLuDhXF2LvptrHS/BmUxMT6JmQA0KMgdWhU1iEx A==;
X-CSE-ConnectionGUID: Qswt0c8tTc+6uda0D79lBg==
X-CSE-MsgGUID: NTRxU46+TRSBfbqQd4SoFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="54126752"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="54126752"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 04:48:59 -0700
X-CSE-ConnectionGUID: usQnFkmBTlWzbrTHCTqlOg==
X-CSE-MsgGUID: OfHXdplbT+q1xlLT6yxJzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="173748272"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 04:48:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: drop intel_dpio_phy.h include from VLV IOSF SB
Date: Tue, 27 May 2025 14:48:54 +0300
Message-Id: <20250527114854.3687469-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

vlv_iosf_sb.c no longer depends on enum dpio_phy from
intel_dpio_phy.h. Drop the include.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/vlv_iosf_sb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index f4b435555f3b..f4b386933141 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -8,8 +8,6 @@
 #include "i915_reg.h"
 #include "vlv_iosf_sb.h"
 
-#include "display/intel_dpio_phy.h"
-
 /*
  * IOSF sideband, see VLV2_SidebandMsg_HAS.docx and
  * VLV_VLV2_PUNIT_HAS_0.8.docx
-- 
2.39.5

