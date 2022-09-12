Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4FE5B5E9D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E8A510E44A;
	Mon, 12 Sep 2022 16:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3BD10E44A
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001711; x=1694537711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PMM8xHdUjaxoXRKdxSkGYhcARY2ZeVdg8I3lwj82Aok=;
 b=B5FuTFKBp8f7Ihpf5gULSDsW80GLK96sBnvu00s0JTWw8LASkpl7QmcS
 zG5KwjcDV1gVuOT0dt47HyYxK9og3E89TfByeoE/xmQK2CyZIuvinMHVJ
 A+vSJkXi/DyLeIGW/ld5QFZow1PaNNR9N3Yl00VVF9e8AfsxIUMSsSiLO
 w1hglKvRiawdJtey3UlNDtTNgeqlpkeofXTqoFrRoM+La6ogpMazdLTzJ
 CFRPVWRB3tKtefm1QS6CIcF14eDgJA79qmZIi2eS3UiAo8vZA9GVmLgfK
 AIAcDvcJtnPnaRSxfedg/OkwDlQTWYymFmwe0Kikf2sIuzdHFV/hSIuTP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="280935404"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="280935404"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="684505671"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:29 +0300
Message-Id: <45aab8a0366a9344fe66f6c54223a7913d6a5fd2.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/i915: reduce includes in
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

