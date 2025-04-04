Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0605A7B70F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 07:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43E210E2E7;
	Fri,  4 Apr 2025 05:10:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nbPBQ4lN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3E010E25D;
 Fri,  4 Apr 2025 05:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743743414; x=1775279414;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=/FA8E/YelnMx8PrMceWfCKcZb1yIcio0ZiVw5Mk28RA=;
 b=nbPBQ4lNJhwoVvMrD1Nra693Xhob2RiMeIjnG9i6fT6H8jr9KsFpQ8YM
 UYvPwvHeGwlUGd76NUrvD1K4abafTYZTc6ZJKgIczu670EfEStG9ShCVD
 JzdXxkAaIaeQe3vF6YnvRl2C4HAiV9/q+B5U2gsFAfFjEbp8Odhp5tJMi
 lGubuWMzA5gqmbMfCDyrmrotP2recRv2qQkBMAOwc29FJ78E0sn8W3LBW
 gqGrGy/NYi9nHVGuSu8LKZfL9B0MtI2k5nfCDb/dQpxTaKur4E/awPbc9
 KADlt8rba1pg2fm/EONkhQYwUXrPw1jIVrV2MnBWnO4lrDC+b67dV2nkT Q==;
X-CSE-ConnectionGUID: OV5MiLtaTTaE139vf5yOCQ==
X-CSE-MsgGUID: 5wBmcXLLTnqkqlrutp7vmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="62572739"
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="62572739"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 22:10:14 -0700
X-CSE-ConnectionGUID: lLYihhc0TeGzcPee5N6M5Q==
X-CSE-MsgGUID: MUoW3IdrRIm17WwM8DOh3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,187,1739865600"; d="scan'208";a="158186554"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa002.jf.intel.com with ESMTP; 03 Apr 2025 22:10:13 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Fri, 04 Apr 2025 10:25:08 +0530
Subject: [PATCH v5 1/2] drm/i915/display/dp: Remove support for UHBR13.5
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250404-dprates-v5-1-c93f561a095e@intel.com>
References: <20250404-dprates-v5-0-c93f561a095e@intel.com>
In-Reply-To: <20250404-dprates-v5-0-c93f561a095e@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, imre.deak@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

The retimer issue for UHBR13.5 is fixed in BMG.
So for all platforms lesser than BMG(XE2_HPD/DISPLAY_VERx100 1401)
disable UHBR13.5.
commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
removes UHBR13.5 for MTL.

v2: Reframed the commit msg (Jani)
v4: Reframed the commit msg & update the max rate supported (Jani)
v5: Reframed the commit msg (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f21f9b441fc2a4e644c69410e6ec6b3d37907478..92bca701a989b03e2ad4b3d9e7d0a9ef12567e5a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -481,7 +481,7 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
 
 static int dg2_max_source_rate(struct intel_dp *intel_dp)
 {
-	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
+	return intel_dp_is_edp(intel_dp) ? 810000 : 1000000;
 }
 
 static int icl_max_source_rate(struct intel_dp *intel_dp)
@@ -550,7 +550,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
-		1000000, 1350000,
+		1000000,
 	};
 	static const int bxt_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000

-- 
2.25.1

