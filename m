Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B131A78CC7
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 13:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A7B10E745;
	Wed,  2 Apr 2025 11:01:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MwhKwqYc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0010F10E0F5;
 Wed,  2 Apr 2025 11:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743591677; x=1775127677;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=F5KOpFqSrAP8cPWxtEDeSutDrgdwaN80t1KnFoAtY+w=;
 b=MwhKwqYcTBSjCYgPB4wtCcUcd121v8UAgM/k0OfwJcuZA6gsrCqhjlS7
 qN+3t93MCCX4Noaq+SIviAlp25yrzjHWFnTbjM3D5xZvNuA83PKV0GQyR
 XUiMU6gIGXjWgsYXOjxIAgR6/RlKwoU6+FVGC6uFpqkafBUk6nehSXO5J
 lV+FIx4XpYduG4JQdsOvhvI1IIgy/nFLRt/V8RnErsESVabh3dFQA++JK
 Ov0MuiqwGG3qG7JokmvCVhhqotmQnQlZdFOK4fu19htcxpXh0horZmY5s
 qoSyocLNHZWWhkWI7yFeSJx5Bp3hEiv70B90vppTNH1fGy1ULQHBEO+sf A==;
X-CSE-ConnectionGUID: ha3BYo4NTGeBPPeVhAo1ww==
X-CSE-MsgGUID: Saea4LQRRCeuCF7O/bl+2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="62349463"
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="62349463"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 04:01:17 -0700
X-CSE-ConnectionGUID: /Rpt/Y2OTBqIZIICyn9M1g==
X-CSE-MsgGUID: Ty/Pzb6WTsCytNoSzi7sUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="127174394"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa007.jf.intel.com with ESMTP; 02 Apr 2025 04:01:16 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Wed, 02 Apr 2025 16:16:38 +0530
Subject: [PATCH v4 1/2] drm/i915/display/dp: Remove support for UHBR13.5 on
 display14
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250402-dprates-v4-1-752535b2068a@intel.com>
References: <20250402-dprates-v4-0-752535b2068a@intel.com>
In-Reply-To: <20250402-dprates-v4-0-752535b2068a@intel.com>
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

Support for UHBR 13.5 has been removed for mtl by the
commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
Removing UHBR13.5 on all display14- platforms due to the same
retimer constraint.

v2: Reframed the commit msg (Jani)
v4: Reframed the commit msg & update the max rate supported (Jani)

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

