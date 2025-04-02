Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8D4A78AB9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 11:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C8C10E71F;
	Wed,  2 Apr 2025 09:11:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g6LTZb1x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E1610E6EE;
 Wed,  2 Apr 2025 09:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743585062; x=1775121062;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=fTeQ6xjkDWfd26Nzb6RiQmsa+JFIRkZB4d8Jp7+LqDM=;
 b=g6LTZb1xXJkXoNppvIJRmZwHXuPW+ehTZ/rCugp2vo68MEziYw2YJIzL
 tdZgMCPdKv1pckN4l/Jo6tjA20fDCHVe12ULr0bZUpTJn1sjmihZEYYq6
 7CscbVKK4TIlZoMgEvt6U8yIhYSoyPiepAp/VBSx52/1Wj86VjRj0UOm5
 vwL3AWaOubCvf6LuDc07HnjRu2xdw5uir6iXQIpS1BCQd14Ur+kyQHHri
 YwbuhN751Hnylcd/WL2PUhQ87gXjBr2fMEfECoiMUTq+VxY/As+7FEQDm
 8snf8dbUc/WlDRPkm/dSlMeUjezjruEz5teqDqnUmmKt6+mDd0bBeESeY Q==;
X-CSE-ConnectionGUID: 1CEA5nRERam6AZymVtGAQA==
X-CSE-MsgGUID: ++Ef8dYESE+a3tiXHj8xJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="47656227"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="47656227"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 02:11:02 -0700
X-CSE-ConnectionGUID: kISzcQCfT2CeqPnuw4u54A==
X-CSE-MsgGUID: PEOgqNYdQsOOQ8Tpl9TznA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="131364938"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa005.fm.intel.com with ESMTP; 02 Apr 2025 02:11:01 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Wed, 02 Apr 2025 14:26:27 +0530
Subject: [PATCH v3 1/2] drm/i915/display/dp: Remove UHBR13.5 for icl
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250402-dprates-v3-1-9e5d8ca989dd@intel.com>
References: <20250402-dprates-v3-0-9e5d8ca989dd@intel.com>
In-Reply-To: <20250402-dprates-v3-0-9e5d8ca989dd@intel.com>
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

Per Bspec display 14+ has uhbr13.5 Due to the retimer constraint none of
the Intel platforms support uhbr13.5. This has been removed for mtl
by the commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
This patch will remove the support for DG2.

v2: Reframed the commit msg (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f21f9b441fc2a4e644c69410e6ec6b3d37907478..d7955351dd43ff61ebfd57e5b6a4ba99c1c7a2b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
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

