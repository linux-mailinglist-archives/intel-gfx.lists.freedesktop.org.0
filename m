Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D18E5719BDB
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 14:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF7B10E240;
	Thu,  1 Jun 2023 12:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BB1110E240
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 12:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685621982; x=1717157982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RFlNjFT/kR+wU2SDb7bJFfNcSGMLfuxHva0MBtyTvzc=;
 b=bTR95kPvmhqEuxorawWov026d5vRAkcDj1WSO0/qhDP0FkgoW5+knAry
 nARaz9omGq313sNI74kZjs4CU6oPYvBjDZJyqIH2DMqPrqPsFEJBzphBS
 ygeuMTNQgX7Tu006O0B0NywPHx9tmYaQhw+qbueXliiHLb/M2US510ZJZ
 0ZU431qwLz0uZre1NgqMFOfRR7HiiGVEKdAjsDf2O57Ne3YN5qOAe/ENN
 PGZF1Ag88YstUwJOrOEu5i14jlEa7b2N+RhqEnKs92IGJ1Ngvn5Bj8VWA
 2cBO0q0eYwIsZtCkgppM8X2ButI1OKFK3zpS+UaFbVkVpWGq9/AegjUst g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="419040017"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="419040017"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 05:19:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="740336137"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="740336137"
Received: from unknown (HELO vgovind2-mobl3.fi.intel.com) ([10.237.66.43])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 05:19:39 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 15:19:17 +0300
Message-Id: <20230601121923.19775-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230601121923.19775-1-vinod.govindapillai@intel.com>
References: <20230601121923.19775-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 1/7] drm/i915: fix the derating percentage
 for MTL
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the values from bspec for the percentage overhead for
efficiency in MTL BW calculations.

Bspec: 64631

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 597d5816ad1b..ab405c48ca3a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -379,7 +379,7 @@ static const struct intel_sa_info mtl_sa_info = {
 	.deburst = 32,
 	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
-	.derating = 20,
+	.derating = 10,
 };
 
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
-- 
2.34.1

