Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EFC28E734
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 21:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2C76EB3A;
	Wed, 14 Oct 2020 19:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8836EB3D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 19:20:51 +0000 (UTC)
IronPort-SDR: UeuG6fDL8g/0gkw4gObjVFsvzgOHY5oamWlYCRsm0s8sfVUxWVW+5Ee5QmabiWVXKt97wuo2hz
 1JdlkHzgk92Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="183703021"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="183703021"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
IronPort-SDR: Df08cjdQIHA3yrWmfTFqd4VHWZMlX4dTFMDwcritcfzhgIwXQXJW67BQMcSDc10FYmhJ9wBIaX
 dped+E+BLMdQ==
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="345781261"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 12:19:35 -0700
Message-Id: <20201014191937.1266226-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014191937.1266226-1-lucas.demarchi@intel.com>
References: <20201014191937.1266226-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 09/11] drm/i915/dg1: DG1 does not support DC6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anshuman Gupta <anshuman.gupta@intel.com>

DC6 is not supported on DG1, so change the allowed DC mask for DG1.
This is not yet on bspec, but it has been confirmed by HW engineers.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 18af078c208b..45806cfc679a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4492,7 +4492,10 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	int max_dc;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		max_dc = 4;
+		if (IS_DG1(dev_priv))
+			max_dc = 3;
+		else
+			max_dc = 4;
 		/*
 		 * DC9 has a separate HW flow from the rest of the DC states,
 		 * not depending on the DMC firmware. It's needed by system
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
