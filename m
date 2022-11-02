Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64196616094
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45DC010E485;
	Wed,  2 Nov 2022 10:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07D710E485
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383747; x=1698919747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MX7XZ8W8e6p3BGVvmpXkqfV4Xv8TXZjtMTU+TWNXz3g=;
 b=e6qJKMfDYvXBVVIkOZgTH2jwDzwXypfVigMrFa5qeXLtDJiotvMpWQqG
 79NOGa5V/hhNpByUPGTxGK1WoKMT95oFJxVaeGnki16oxfaRBf/hmL1wS
 UQXLDG+AEaJh1cS366sHRVSO3+MhWlYqnEsyTpRON9creG7/GG6aqlw5f
 tdYxrE/hmpy3mOzamu1TYoC8b/hgdqMku8tFIBE+TpgvGVwMVWA7maA5y
 ThO+QUcURnO4VIr2qxMzZpRPQwDEvByq8486Uvx39xPPoYVnQzzCTd4Zb
 JszSpg6KLpCk8LjgTBjK2m2BjRptH92TwngLsLnh7OWrtv3kW9dRRkgXa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807696"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807696"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:07 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="628899365"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="628899365"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:18 +0200
Message-Id: <e68c71ad1c1c1de7f5bc659edeb208818cddde72.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 10/16] drm/i915/display: reduce includes in
 g4x_dp.h includes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only include what's needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h b/drivers/gpu/drm/i915/display/g4x_dp.h
index e1f50263a725..a38b3e1e01d3 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.h
+++ b/drivers/gpu/drm/i915/display/g4x_dp.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "i915_reg.h"
+#include "i915_reg_defs.h"
 
 enum pipe;
 enum port;
-- 
2.34.1

