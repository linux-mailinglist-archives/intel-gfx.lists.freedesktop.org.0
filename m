Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13308B0813
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 13:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2F0113A51;
	Wed, 24 Apr 2024 11:11:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VqnC/5Ig";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA022113A51
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 11:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713957076; x=1745493076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CvyllY6NmMn3EqgKGrOLyESetqnaph2t9ouot2KOW+A=;
 b=VqnC/5IgDIpbnF8mBenCfVsWj8rco15SMmX+KY5O93zQTEJ3GSQwAynp
 9r5D6GPwF1MUOHUPQSYSA/fbfO2tJ8miNd507XKya47A7hUndyqoGPjkS
 J2u22NZbpS8Gbenhp8Tjoawvw4LC+HNCuzXSoL3+nIC1Y4wBZsfO6T/za
 vnKXPpdedWlxKE4E1KqH9cT4T8DzZ79mDoNBLXfs+ZEzW7jRvSJrJDmUG
 wKL9WiADKndivy2M+sRvlJxaWHV8MGS4zIrQaMU1gYs4QSdJ+a+V1AdUo
 TazPaMQ+KY5gW9Gulm/qqusaex+logdpB+ZIUANVxVmZQeJlwNdBs9+bS Q==;
X-CSE-ConnectionGUID: 8cCp99lzQJGBnFja+CAPOg==
X-CSE-MsgGUID: wiRNfqQvQbaLRpyK0GzgwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9412246"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; 
   d="scan'208";a="9412246"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:16 -0700
X-CSE-ConnectionGUID: kq7xRZtVQYuSpo3RDWT+oQ==
X-CSE-MsgGUID: eoBn2umOS5KB5D49/HGnng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24564835"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/4] drm/i915/dp: return proper error codes instead of magic -1
Date: Wed, 24 Apr 2024 14:11:00 +0300
Message-Id: <20240424111101.1152824-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424111101.1152824-1-jani.nikula@intel.com>
References: <20240424111101.1152824-1-jani.nikula@intel.com>
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

Use proper negative error codes intead of magic -1. Don't set a bad
example, as -1 is -EPERM.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e05e25cd4a94..30c1f39ff6d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -600,7 +600,7 @@ static int intersect_rates(const int *source_rates, int source_len,
 	return k;
 }
 
-/* return index of rate in rates array, or -1 if not found */
+/* return index of rate in rates array, or -ENOENT if not found */
 static int intel_dp_rate_index(const int *rates, int len, int rate)
 {
 	int i;
@@ -609,7 +609,7 @@ static int intel_dp_rate_index(const int *rates, int len, int rate)
 		if (rate == rates[i])
 			return i;
 
-	return -1;
+	return -ENOENT;
 }
 
 static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
@@ -680,7 +680,7 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	 */
 	if (intel_dp->is_mst) {
 		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
+		return -EINVAL;
 	}
 
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
@@ -717,7 +717,7 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		intel_dp->max_link_lane_count = lane_count >> 1;
 	} else {
 		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
+		return -EINVAL;
 	}
 
 	return 0;
-- 
2.39.2

