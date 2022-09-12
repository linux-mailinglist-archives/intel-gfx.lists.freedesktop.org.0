Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC78F5B5E9A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D35310E44C;
	Mon, 12 Sep 2022 16:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CD710E2F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001697; x=1694537697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FeVr3sD2kDmzOgs3HMqa/fzCbpB/kzpAxTRUHwE0HpA=;
 b=jlUUiMgKJhccNu8KsWY0+8KE/K+haV+yLk6gaoml2CPE3H45yKnqyABH
 4ljhuwpZgOJADwZPPQ+nubzEp2Rx4+wfdDGPHoDnwJAbPcW549lRM6P7X
 XCwKjPGfySPFakSnIEqK03NSNvUPiEahoWi5Cms/zS9dONW0p68MPYcCo
 RWrajnZ0JI4Yz4tFcQ8AHM5hfllEzSTanylFhnAkjuvi0FGpLjAPTyazq
 +wqyqpjSQXTH/PRmxTuiZJCzkVES21E3iLBZ0a6JDdUaZ2CUIJo3O70f5
 zIAgm2l1pTsakVJ8QmiMmTQ4ib2zdtOaxMPe827kEyMZGBAB4ULU8Ua8A g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="284937217"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284937217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="646546258"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:24 +0300
Message-Id: <e7a5ee6ce96eccf0340428a9fbf4bf1cba626300.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/15] drm/i915: reduce includes in
 intel_connector.h
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
 drivers/gpu/drm/i915/display/intel_connector.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 661a37a3c6d8..c75890dc23e9 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_CONNECTOR_H__
 #define __INTEL_CONNECTOR_H__
 
-#include "intel_display.h"
+#include <linux/types.h>
 
 struct drm_connector;
 struct edid;
-- 
2.34.1

