Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 424ED416606
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 21:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B52116EDA3;
	Thu, 23 Sep 2021 19:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE6C6E10B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 19:40:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223970614"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223970614"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="455236755"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu, 23 Sep 2021 12:46:16 -0700
Message-Id: <20210923194617.69136-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923194617.69136-1-jose.souza@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/display/adlp: Allow PSR2 to be
 enabled
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

With all the recent fixes PSR2 is properly working in Alderlake-P but
due to some issues that don't have software workarounds it will not be
supported in display steppings older than B0.

Even with this patch PSR2 will no be enabled by default in ADL-P, it
still requires enable_psr2_sel_fetch to be set to true, what some
of our tests does.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 001d81f128989..37727ff2b2ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -830,12 +830,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	/*
-	 * We are missing the implementation of some workarounds to enabled PSR2
-	 * in Alderlake_P, until ready PSR2 should be kept disabled.
-	 */
-	if (IS_ALDERLAKE_P(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 is missing the implementation of workarounds\n");
+	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
 		return false;
 	}
 
-- 
2.33.0

