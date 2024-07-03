Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF45B92656B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 17:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A55F10E926;
	Wed,  3 Jul 2024 15:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SpyvNcSM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978E310E924
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 15:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720022371; x=1751558371;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=s/ZjmkhvzNv2bsAprAE4TVPIuSJqq52D7ODMugIKcKI=;
 b=SpyvNcSMkC9X6zmBoxDhKr87Txx526tBA6VhyKkQ0eJk4ALey9pQg0yj
 1HTgUXI8/8PUYt95Z2BhKF90+9L6AFdjnmhtNVJWkwPSG063sO3uvt8Pu
 epbmqR96TFSSEK4uqkqv9x2+R7gsCP0/RKh9T6YHin9kT+Gkdt6EbnwUq
 lJywXwmzXHyv7okIhP3zbwbeLSR7D6qMlCBatMnK+ak58ZJ4eRZWPOob8
 wmR/TLdLvB9ZNzQ/mGDHJYwjM5jIdgUaS3VCmPvh8yyEEkpcQdj6BZrc2
 /8LC0AY8j8Bi1LlRTKHuAfgVBWy9G4hevY+fWFUDMLZkTlqp0jsd/mSQz A==;
X-CSE-ConnectionGUID: EwEPBHCJRv6yfgGHU2L35w==
X-CSE-MsgGUID: miMK6oNgSmWhtQu2TOIPaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17131765"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="17131765"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:29 -0700
X-CSE-ConnectionGUID: Wibapj1FR5CFFT0Ad5DanA==
X-CSE-MsgGUID: 7zzt8D+xSPmB1wPVGVuGuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46964111"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915/dp: Reset cached LTTPR count if number of LTTPRs
 is unsupported
Date: Wed,  3 Jul 2024 18:59:34 +0300
Message-ID: <20240703155937.1674856-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240703155937.1674856-1-imre.deak@intel.com>
References: <20240703155937.1674856-1-imre.deak@intel.com>
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

After detection the cached LTTPR count can be checked to determine if
LTTPRs in non-transparent mode were detected. Reset the cached LTTPR
count if the reported number of LTTPRs is invalid to ensure the above
checks work as expected.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 08a27fe077917..df9b35491fc44 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -174,7 +174,7 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
 	 * still taking into account any LTTPR common lane- rate/count limits.
 	 */
 	if (lttpr_count < 0)
-		return 0;
+		goto out_reset_lttpr_count;
 
 	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
-- 
2.43.3

