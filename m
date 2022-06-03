Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 951EF53CA62
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DACD71134C5;
	Fri,  3 Jun 2022 13:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24ED81134C5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654261586; x=1685797586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HatwjPwiowOU2o0invSZXIyK4F22MW/hPq6xsB7WG1o=;
 b=ehoOKYozQO812MWcX+aq+E4oqdF0/tHDI8Wxd8rEaMiGsyShFZ0A1C8j
 bnnblxsWlzwFq00J421ofK3kT3u2+QJCAEjQBviuMzctCTOiyYUlSpq1J
 FtuIS9V4sBMStaWwQb0TH/jCv7MxppS9q1jyxw1b6vzs+ZUB08DawCfIo
 2SfGkNUK5epBFPG98njSIV4+ECJWvc/D+jpTdag9MNCquwPploSek7xWp
 igqSHxaBTuk+0p4jml3a2saSPz92KR2eA04ktRRc9NRY5DAdOy4l1+DBL
 YLdWmB/gkvBJl+iUj9pIhAB3CD54I64ry20Nau6KMtiLnWFejXLmqtTm7 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="263897491"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="263897491"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:25 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="553322492"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 16:05:58 +0300
Message-Id: <6490a5aa5d148cec99b7cf59ec40146a099ac9b2.1654261471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
References: <cover.1654261471.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/drv: drop intel_bios.h include
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

No longer needed after panel data was moved.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fa8f208c8939..5093fe824789 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -37,7 +37,6 @@
 #include <drm/drm_connector.h>
 #include <drm/ttm/ttm_device.h>
 
-#include "display/intel_bios.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_display.h"
 #include "display/intel_display_power.h"
-- 
2.30.2

