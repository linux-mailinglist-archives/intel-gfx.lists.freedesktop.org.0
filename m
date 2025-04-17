Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136B5A9140D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 08:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38DF810EA3B;
	Thu, 17 Apr 2025 06:27:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gu10YnsC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B379A10EA3B;
 Thu, 17 Apr 2025 06:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744871270; x=1776407270;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=xnNvGCrP2b6fr/auLnkEtppEhovZuTWyp6f2G2TQW8c=;
 b=Gu10YnsCc7+8wB+G3GwRMX4ffbk8xgUiykpwU12tj8LEozMAJ0Ge6Q8Y
 sF6HgDK6b2PnHGMn3vOHQLhPBrEelr2bn69NqQB/rvsC7dU50zhWBOGXu
 7SObANysuOJhTIgzRWBy3v9YQCeu0j6Ru8Ns87pR1190C8veznVARdHmG
 Uc3m4Vm+uAEx7DR24zBfyIVwdBEysw/IXLl3+z9lvI7+rypIoqbZLR8rv
 FpONanhsOGVKB6LVa8//CHpGV1iWlVCqPR/Uhb0Jd/GcudT9+MwLZ+WnW
 KVxCBGvzSA9fpLYwyqzCqbJiX6TDxlnpbmXNkjRjrf4aYMT3UhB2lWTNR g==;
X-CSE-ConnectionGUID: DA8/9yk5RdmP43bD+pgbwg==
X-CSE-MsgGUID: b+O8edCaTpCtZj//iuqBKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="63980412"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="63980412"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 23:27:50 -0700
X-CSE-ConnectionGUID: qxZ0ghOXSkGFlkk4k5HUSw==
X-CSE-MsgGUID: 4VM3lQP2SDqDUiO5nfvqOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="161750333"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa001.fm.intel.com with ESMTP; 16 Apr 2025 23:27:49 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Thu, 17 Apr 2025 11:42:46 +0530
Subject: [PATCH v6 1/2] drm/i915/display/dp: DG2 does not support UHBR 13.5
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250417-dprates-v6-1-e917782873ab@intel.com>
References: <20250417-dprates-v6-0-e917782873ab@intel.com>
In-Reply-To: <20250417-dprates-v6-0-e917782873ab@intel.com>
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

DG2 does not actually support UHBR 13.5 link rate. Reduce DG2 max
link rate to UHBR 10, and drop UHBR 13.5 from the supported
source rates for DG2.

The VBT on DG2 platforms should already limit the max link rate to
UHBR 10, but be defensive about it

v2: Reframed the commit msg (Jani)
v4: Reframed the commit msg & update the max rate supported (Jani)
v5: Reframed the commit msg (Jani)
v6: Reframed the commit msg (Jani)

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

