Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF66965E72
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9DB10EA53;
	Fri, 30 Aug 2024 10:16:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OCTXQWZC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F0410EA53;
 Fri, 30 Aug 2024 10:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725013014; x=1756549014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2QvXn41vq8PKQAW7HiV1WMlR3mDXpvzK107YBVsUFXo=;
 b=OCTXQWZClcTT7xmRA0tlNQt8LuoifxyBkb80Y/aupGyEtO9qliYjI5tz
 iKy09F92JlwPagZ+BDnZaWwEqhNsIZiRQpQWw/vpkgcWvxuDeWK0ibfeu
 fsLD1xUtVb69t8U+wsFYNmbKl488SEDRIuQ+aVRiobO1+ZOTb0O8NYkrQ
 3O6pFgHarFT7s7sY0d5wD8jH4C2sspsBaS7dlkGXk5vEo992bF5v4geZp
 ZD8MdUXd782T5ihKr/wuReLWVD05uVTG5ktrkWpSRgkv9rCKiSjXVcdoM
 tnoYb0zBhj8o8IqSWrOKLuk15Y+H2vZ8OBEeJoTIr14/WpiYiAPQL124B w==;
X-CSE-ConnectionGUID: eO+IyXFtQa+BqXfCRnHP4g==
X-CSE-MsgGUID: r/BDIKcYSTGt2N1l0S+huQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="13295710"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="13295710"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:54 -0700
X-CSE-ConnectionGUID: nOGRW2IcQ5eLaZob/1t1aQ==
X-CSE-MsgGUID: iqb9Nb3sQrOuqCISJHhsAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68516209"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/11] drm/i915/dp: hide dp_to_i915() inside intel_dp.c
Date: Fri, 30 Aug 2024 13:15:48 +0300
Message-Id: <e214aa6991aea4fc878b36dcd3eaece9f1fba592.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
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

Now that only intel_dp.c uses dp_to_i915(), hide it there. This removes
a header dependency on to_i915().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 --
 drivers/gpu/drm/i915/display/intel_dp.c            | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 868ff8976ed9..9863cbaa663a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2081,8 +2081,6 @@ dp_to_lspcon(struct intel_dp *intel_dp)
 	return &dp_to_dig_port(intel_dp)->lspcon;
 }
 
-#define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
-
 static inline struct intel_digital_port *
 hdmi_to_dig_port(struct intel_hdmi *intel_hdmi)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 789c2f78826d..090353657125 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -89,6 +89,8 @@
 #include "intel_vrr.h"
 #include "intel_crtc_state_dump.h"
 
+#define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
+
 /* DP DSC throughput values used for slice count calculations KPixels/s */
 #define DP_DSC_PEAK_PIXEL_RATE			2720000
 #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
-- 
2.39.2

