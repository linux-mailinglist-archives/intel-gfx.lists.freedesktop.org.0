Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D93F3E9E49
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 08:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F466E255;
	Thu, 12 Aug 2021 06:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E4E6E24E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 06:10:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="215017914"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="215017914"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 23:10:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="676648452"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2021 23:10:23 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>
Date: Thu, 12 Aug 2021 11:18:06 +0530
Message-Id: <20210812054806.22745-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210812054806.22745-1-animesh.manna@intel.com>
References: <20210812054806.22745-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/dp: fix for ADL_P/S and DG2 dp/edp
 max source rates
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

Added support for platforms having DISPLAY13 like DG2, ADL_P and ADL_S.

Bspec: 53597, 53720, 53657, 54034, 49185, 55409

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e8d2d381c587..fcb6b0cd9788 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -302,7 +302,8 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
-		if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
+		if (DISPLAY_VER(dev_priv) >= 13 || IS_ALDERLAKE_S(dev_priv) ||
+		    IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 			max_rate = dg1_max_source_rate(intel_dp);
 		else if (IS_JSL_EHL(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
-- 
2.29.0

