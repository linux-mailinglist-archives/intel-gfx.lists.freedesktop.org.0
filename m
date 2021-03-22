Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAFC343EC8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 12:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55EC589BAB;
	Mon, 22 Mar 2021 11:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB34189BAB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 11:03:44 +0000 (UTC)
IronPort-SDR: 1HqkiVov3cBohI+9kqy1HOUKuSr8Vp+NRJ0/Iz+a0qEbOFyGlAtJ96HD+aVONOLUIZGAcZ3M4/
 PxZmau8uriJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="251602321"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="251602321"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 04:03:43 -0700
IronPort-SDR: wRadjMxffV2e+DQsrQuJQ+F1AeTLIXf+JycfNSIm5FnrsLgdgCb6RBIwCLugrC7UD2XanCU5A0
 hGA1mILyJj7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="435112297"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 22 Mar 2021 04:03:41 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 16:23:50 +0530
Message-Id: <20210322105350.125762-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Disable PSR2 on ADLS
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
Cc: hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In light of PSR2 can be enabled only on BOM9 platform team has requested
to disable PSR2 by default in driver,  starting with gfx-driver-ci-master-7517.
Disabling it for ADLS.

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cd434285e3b7..8bf8e1ffa813 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -727,7 +727,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 
 	/* JSL and EHL only supports eDP 1.3 */
-	if (IS_JSL_EHL(dev_priv)) {
+	if (IS_JSL_EHL(dev_priv) || IS_ALDERLAKE_S(dev_priv)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not supported by phy\n");
 		return false;
 	}
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
