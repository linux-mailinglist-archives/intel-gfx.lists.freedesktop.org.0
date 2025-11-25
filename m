Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78B9C852AA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 14:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB8B10E3F1;
	Tue, 25 Nov 2025 13:24:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JUnvWY9L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11AC10E3ED;
 Tue, 25 Nov 2025 13:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764077097; x=1795613097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rVG3bKD3dxaoaPRD90ax0jMqBhxYFtYbIuc99zYgiYI=;
 b=JUnvWY9LbmtMS/UZw4tCYqSuAHBzfFklq673d7rlLriZDAXA7wpizORp
 JkwjHA+ISsItynaZrKmo1DgW5b1m1P4W7HuEgImHGPaJRFa7OnzS7M/Fn
 49m2RjqDPwAeQWitI01YIFSU16Yi5A3UPtJkoUkS96eROUFFCz4adPYgo
 ciYLMlCrSHG6/5IhHg1C8zWzW+TkUCRid+YcyGytf+PI4IpzAMDkuS3jf
 ufsYt0Yaju6psx71r3hsMtu+7gU1/KMjmZt/NCIKZK85R7V3rhTK53R3L
 lSiJA/nIygkOZh2QJsazd7q3uMskrs7FssnD/OwjQGtgHlvgX7CdAG/4C Q==;
X-CSE-ConnectionGUID: kf/HraZhRUioxhfY4fEn0g==
X-CSE-MsgGUID: RitRF0DyT2WSsYUwoNUSdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="77461465"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="77461465"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:24:57 -0800
X-CSE-ConnectionGUID: Gr/Dw2HdQiqBS2rZD9zIbQ==
X-CSE-MsgGUID: DWWW/yx+TbSvBiPj7oJScw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="192520932"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:24:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/5] drm/i915/pps: convert intel_wakeref_t to struct
 ref_tracker *
Date: Tue, 25 Nov 2025 15:24:40 +0200
Message-ID: <e7afaea1a609485f91669a7d3c5d3fde0e0dbf8b.1764076995.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Under the hood, intel_wakeref_t is just struct ref_tracker *. Use the
actual underlying type both for clarity (we *are* using intel_wakeref_t
as a pointer though it doesn't look like one) and to help i915, xe and
display coexistence without custom types.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c    | 7 +++----
 drivers/gpu/drm/i915/display/intel_pps.h    | 9 ++++-----
 3 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 809799f63e32..38e03f3efac5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -246,7 +246,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	u32 aux_clock_divider;
 	enum intel_display_power_domain aux_domain;
 	intel_wakeref_t aux_wakeref;
-	intel_wakeref_t pps_wakeref = NULL;
+	struct ref_tracker *pps_wakeref = NULL;
 	int i, ret, recv_bytes;
 	int try, clock = 0;
 	u32 status;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 34376255b85c..b217ec7aa758 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -67,10 +67,10 @@ static const char *pps_name(struct intel_dp *intel_dp)
 	return "PPS <invalid>";
 }
 
-intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
+struct ref_tracker *intel_pps_lock(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	/*
 	 * See vlv_pps_reset_all() why we need a power domain reference here.
@@ -81,8 +81,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 	return wakeref;
 }
 
-intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
-				 intel_wakeref_t wakeref)
+struct ref_tracker *intel_pps_unlock(struct intel_dp *intel_dp, struct ref_tracker *wakeref)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index ad5c458ccdaf..f7c96d75be45 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -8,20 +8,19 @@
 
 #include <linux/types.h>
 
-#include "intel_wakeref.h"
-
 enum pipe;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_dp;
 struct intel_encoder;
+struct ref_tracker;
 
-intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
-intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref);
+struct ref_tracker *intel_pps_lock(struct intel_dp *intel_dp);
+struct ref_tracker *intel_pps_unlock(struct intel_dp *intel_dp, struct ref_tracker *wakeref);
 
 #define __with_intel_pps_lock(dp, wf) \
-	for (intel_wakeref_t (wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
+	for (struct ref_tracker *(wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
 
 #define with_intel_pps_lock(dp) \
 	__with_intel_pps_lock((dp), __UNIQUE_ID(wakeref))
-- 
2.47.3

