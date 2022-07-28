Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44095584423
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 18:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1474D10F6BB;
	Thu, 28 Jul 2022 16:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4842110F6BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 16:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659025664; x=1690561664;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mRNuhBVGjiO6sbKqm21tJbg9u9GSU5d/R6kKaeTuHNk=;
 b=QeT4fh9uHdx4S3H1hxfQuAIn7xREX2+7Im44J85JrckxU+2m4S2UMOzu
 1d9xDLFNOwKLoS/zHI9LoynyT/qG9IJLEVc6qIi8EpcFSU0KKTemb/1y4
 mZPXLbIiEyEZQmm1lwepkGG00uYgvSijpp2W6FvSD8womQeXxofu9Wllp
 ijx2dkvV52E35xeRzdU/PRtbw7LG6DgllvnEHlJEXRg2EjT95RA7AMpea
 gvpK4SXhsTrTBwoEeA45SUOmBTnykut3+qTfmTuo4rs4c7QpTu+00FLvQ
 eudK4jfTcut+Rb+BjJ48rr1ucEAIM6zre6tKyjjaF1aOvv+rIagFseDgi Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="289754281"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="289754281"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 09:27:02 -0700
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="551376186"
Received: from kseth-mobl20.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.212.134.144])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 09:27:01 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jul 2022 09:26:23 -0700
Message-Id: <20220728162623.28901-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add support for DC5 state
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

With the latest DMC in place, enabling DC5 on DG2.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 13aaa3247a5a..3f84af6beff3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -908,7 +908,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 		return 0;
 
 	if (IS_DG2(dev_priv))
-		max_dc = 0;
+		max_dc = 1;
 	else if (IS_DG1(dev_priv))
 		max_dc = 3;
 	else if (DISPLAY_VER(dev_priv) >= 12)
-- 
2.25.1

