Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2032D616091
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC0010E479;
	Wed,  2 Nov 2022 10:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F5A10E47C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383736; x=1698919736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PMM8xHdUjaxoXRKdxSkGYhcARY2ZeVdg8I3lwj82Aok=;
 b=U5Uhjkxk8Nvttsstu+37IEHeLm0qyXAxCRYvKpi/JevnktuYbolMaq2h
 R30BJ3YvvkKZxmoi4sIYP7oQRq+yEutgb5sK0LhYGR89DWsfNDSSl1dp6
 ow1fKCMELU654Q5M5421PIMjilUeUbAyflf4AL9md5rSFzprBKwBJUBf8
 BbwYtlBP9NYjeU4gDayMnZn9pyj4sbj6qsbtis/43phRuSgbFk6OAqd5X
 LHhYCqpQGU0kWXl6t1J1BHus1j+FDTTE94VQJo6vgqA3fCXwWSlpt9xs0
 mWdHiNZwhFi7DdIIa5lNXeti5dw1E82zKsNdRz4hKTVSjxVfEMR6aqtVw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807635"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807635"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:56 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963469057"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963469057"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:15 +0200
Message-Id: <a7f41cf6d13ee78c0b3a7c5927680bb94edfc5fb.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 07/16] drm/i915: reduce includes in
 intel_display_power.h
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
 drivers/gpu/drm/i915/display/intel_display_power.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 7136ea3f233e..1e77e52c87fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -6,11 +6,12 @@
 #ifndef __INTEL_DISPLAY_POWER_H__
 #define __INTEL_DISPLAY_POWER_H__
 
-#include "intel_runtime_pm.h"
+#include "intel_wakeref.h"
 
 enum aux_ch;
 enum dpio_channel;
 enum dpio_phy;
+enum i915_drm_suspend_mode;
 enum port;
 struct drm_i915_private;
 struct i915_power_well;
-- 
2.34.1

