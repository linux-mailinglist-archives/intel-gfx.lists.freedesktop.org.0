Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D15A50E4B3
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 17:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BA610F82C;
	Mon, 25 Apr 2022 15:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B8A10F824
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 15:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650901681; x=1682437681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v6by5qclN5+ooNcGqdb+C+faNjtk37+G6ltVnedKZzo=;
 b=R1PbDg1Wlmb1+LdnmdUpE7J9n/RegZ5mZh0WK0qSLtyyOMiFR+zyToNr
 VFP6YqiywXxDL2ALgJkWaVgfi8O4JxUHgVOpGF+sLszRiI5X9fQ5uAXvE
 eQ461afViVpgtmH23QnUMyJZhm4uEk/2Iy1RCTLqxFLhvKF0zfy3vXwsg
 5Kt1rDB+Md/5Yc3qiad9WUVENUa12gPqjBZTcNu57HpOJqMZNp2I+xYy3
 n+/3Ln/ueD14K4xIAtzUn4VJ8GPGyk5FC9nlk7AlG8Abie2iyF5BqNkIN
 44BV2ElojGq7WFX/GTjovaSikkuXCVqmd6gZhwuJyfwZtX052G66r7IoM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="245210302"
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="245210302"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 08:48:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="677274953"
Received: from tgiecew-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.131.125])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 08:47:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Apr 2022 18:47:54 +0300
Message-Id: <20220425154754.990815-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: remove superfluous string helper
 include
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the duplicate and incorrect (uses "" instead of <>)
linux/string_helpers.h include.

Fixes: cc1338f259a2 ("drm/i915/xehp: Update topology dumps for Xe_HP")
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 9881a6790574..fdd25691beda 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -10,8 +10,6 @@
 #include "intel_gt_regs.h"
 #include "intel_sseu.h"
 
-#include "linux/string_helpers.h"
-
 void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
 			 u8 max_subslices, u8 max_eus_per_subslice)
 {
-- 
2.30.2

