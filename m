Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B24631993
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 06:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68FA10E131;
	Mon, 21 Nov 2022 05:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F2710E131
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 05:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669009792; x=1700545792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RNmCLLWuil4tIIENvEeIQK6jn2/L1tgpUokdpYKscCE=;
 b=H0OX0MgYxQzhWhXqJktuG4pna1sZ3cdLgxnVAt2i4Q5iA7Ba7BCdRO1V
 D+Pjmspb0Sh7CwzRIsPPogKYXKiEAIYSEHAMM3AxRxoTzqsa/qzU11GWZ
 5IaQodFUPtL15olZAmDucacFPOX4nCQclbX+zHBn2bStsuCjiBgKc0AsN
 Qc8F5ja4YY8exPXOIdrrwU/78Hr/U8NDTlzKGmxpDiIspVJUFibrwZdEm
 6ZczkowSbv/biE6TQiBdZDAry1rUWkbn01WCilsUug2CBXgT/i87S6KGd
 IlPat7ZXXY45gA+yRG/n5ufCb+N+oLivO0Lbm8VE6totp8A3WPE3oqh1Y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="375621573"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="375621573"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 21:49:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="885981865"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="885981865"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga006.fm.intel.com with ESMTP; 20 Nov 2022 21:49:50 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 11:19:52 +0530
Message-Id: <20221121054952.3557863-2-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221121054952.3557863-1-arun.r.murthy@intel.com>
References: <20221121054952.3557863-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: Disable FBC when VT-d is enabled
 for Gen9
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

The WaFbcTurnOffFbcWhenHyperVisorIsUsed is applicable for all GEN9
platforms as per BspecID: 0852

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b5ee5ea0d010..01c51a6c5143 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1652,9 +1652,9 @@ static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 
 static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 {
-	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
+	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt,cnl,kbl */
 	if (i915_vtd_active(i915) &&
-	    (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
+	    (DISPLAY_VER(i915) == 9)) {
 		drm_info(&i915->drm,
 			 "Disabling framebuffer compression (FBC) to prevent screen flicker with VT-d enabled\n");
 		return true;
-- 
2.25.1

