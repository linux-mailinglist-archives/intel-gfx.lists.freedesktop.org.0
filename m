Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D144AB0922
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56FD910E2A4;
	Fri,  9 May 2025 04:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LX12Vdho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880BC10E2A4;
 Fri,  9 May 2025 04:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764884; x=1778300884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RgCj8cQs1345jIqkpcm84glu9WZi2sLq2Lm+MiYsZWI=;
 b=LX12VdhoCWniAVaBOLDisUOCL8Idc2e/x0CQJmE1f/7sFBOlO2BV4+tx
 mXoDCEqcFSVPbNOiA9d7dtL3PD/zGM4bscutA+wuEXeO0kUu49wT7gDW+
 kCRF+0owABBGlH7BcYFTVrzt9z6y4nqrPMXMQrby3AAzm631MHMhjaFE1
 dLuA1Hib5bAFNKR+ss6z1vDoe/YJRTCdjPE+okkLZTLkotaIW0ItHUqGV
 pRPi/7rGVGXngCELv5s1FhsKnOqPRY1MmyM7agzHmKWpm1iwyLOuqr0Aa
 6YlYwFRFeWSJ6oI5luXUHQAuqPK/vGfFUZVjtzyUB3vrBjqgFLYNZ6Edg g==;
X-CSE-ConnectionGUID: XxZ45GzSQhemMzYpHIuPdw==
X-CSE-MsgGUID: JYTXsqr4RUWXppIOA1wPOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58793986"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58793986"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:04 -0700
X-CSE-ConnectionGUID: nzfHnYmORBaumQocU8dysg==
X-CSE-MsgGUID: iJwA5ChBSf+7dJH081JEJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430476"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/18] drm/i915/dpll: Rename intel_dpll
Date: Fri,  9 May 2025 09:57:12 +0530
Message-Id: <20250509042729.1152004-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509042729.1152004-1-suraj.kandpal@intel.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Rename intel_dpll to intel_dpll_global so that intel_shared_dpll
can be renamed to intel_dpll in an effort to move away from the shared
naming convention.
Also intel_dpll according to it's comment tracks global dpll rather
than individual hence making more sense this gets changed.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index b4937e102360..6fc213f84e73 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -122,7 +122,7 @@ struct intel_audio {
  * intel_{prepare,enable,disable}_shared_dpll.  Must be global rather than per
  * dpll, because on some platforms plls share registers.
  */
-struct intel_dpll {
+struct intel_dpll_global {
 	struct mutex lock;
 
 	int num_shared_dpll;
@@ -570,7 +570,7 @@ struct intel_display {
 	/* Grouping using named structs. Keep sorted. */
 	struct drm_dp_tunnel_mgr *dp_tunnel_mgr;
 	struct intel_audio audio;
-	struct intel_dpll dpll;
+	struct intel_dpll_global dpll;
 	struct intel_fbc *fbc[I915_MAX_FBCS];
 	struct intel_frontbuffer_tracking fb_tracking;
 	struct intel_hotplug hotplug;
-- 
2.34.1

