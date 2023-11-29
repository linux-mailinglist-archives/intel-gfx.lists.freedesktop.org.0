Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD39C7FDE45
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 18:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328CC10E218;
	Wed, 29 Nov 2023 17:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF7010E218
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 17:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701278652; x=1732814652;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:date:message-id:content-transfer-encoding:
 mime-version; bh=Ryc//f0Tr8NZrn+ndoBq8HJgd/JE509ZE3xh0cOmymI=;
 b=G7e1qU8EW7nh55TGkaS9fQdOH+0gCSX4nIetL/VypbpQuDmkGA+D8D9y
 BtJOZGf88ZF0PMtjGzpB3t2Aw0bKau1rzYGjCrCVfc8EBwlHvwmArF+fs
 CccN3E2vCKjszT83NikInDcALRGJpWqkmHIMRv19KG1T+GNzgp/fPRUsV
 xuwChg2U2+eF05XM8QywRuALLHn5cAABvY392Rk85HMgSPlRM5EwFT5B3
 P9Xxg81+8rq3SmxVl+ZngUEkEICDKn/AaWgk7SFJoxEohH/0h15gvgPky
 SloC/JvLMrziN7MLiInywLc1gyKvBJ6ZRhOwd2wa2YyHFdmKwaEQfsU55 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="479399136"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="479399136"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:23:56 -0800
X-ExtLoopCount2: 2 from 10.252.60.61
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="1100595722"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="1100595722"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.61])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:23:55 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Nov 2023 19:23:52 +0200
Resent-Message-ID: <87jzq05v87.fsf@intel.com>
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Mailbox Transport; Wed, 29 Nov 2023 06:07:16 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 06:07:16 -0800
Received: from fmsmga001.fm.intel.com (10.253.24.23) by
 fmsmsx603.amr.corp.intel.com (10.18.84.213) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 06:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="912865020"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="912865020"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga001.fm.intel.com with ESMTP; 29 Nov 2023 06:07:12 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 607DF4D4; Wed, 29 Nov 2023 16:01:37 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Date: Wed, 29 Nov 2023 16:01:28 +0200
Message-ID: <20231129140129.699767-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1.gbec44491f096
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: a676a6d5-f47f-435d-6267-08dbf0e47e44
X-MS-Exchange-Organization-AuthSource: fmsmsx603.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.3925478
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.034
MIME-Version: 1.0
X-TUID: v9Tbdt7GxWp8
Subject: [Intel-gfx] [PATCH v1 1/1] drm/i915/display: Don't use "proxy"
 headers
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
Cc: Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The driver uses math.h and not util_macros.h.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index ce5a73a4cc89..bc61e736f9b3 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -3,7 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#include <linux/util_macros.h>
+#include <linux/math.h>
 
 #include "i915_reg.h"
 #include "intel_ddi.h"
-- 
2.43.0.rc1.1.gbec44491f096

