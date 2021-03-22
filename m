Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AE8343F6F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 12:17:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A306E89E5B;
	Mon, 22 Mar 2021 11:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969F089E5B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 11:17:08 +0000 (UTC)
IronPort-SDR: 6qJ3sKECVkjLE9jff/i30zUWzhF30/hYFoG/wpBETcpDaTzOXz3BWwAKj+zisL3Ga0BUoRz5Vj
 jvE5PPLGnGqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="187926664"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="187926664"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 04:17:08 -0700
IronPort-SDR: +30HLbZea/05mmuGGz6Z1mqHF4JmYiAjICVLQMNu/dyFarw/86+LfRC5a+0dd8on/ZpoiTT3/1
 7rYNQoZVq/Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="513271179"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2021 04:17:06 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 16:37:15 +0530
Message-Id: <20210322110715.126105-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V2] drm/i915/display: Disable PSR2 on Gen12/12+
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

In light of PSR2 can be enabled only on BOM9 platform team
has requested to disable PSR2 by default in driver, starting
with gfx-driver-ci-master-7517. Disabling it for all gen12/12+.

Changes since V1 :
	- Added check for GEN12/12+
	- Modified commit message accoringly

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cd434285e3b7..df55799c53da 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -727,7 +727,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 
 	/* JSL and EHL only supports eDP 1.3 */
-	if (IS_JSL_EHL(dev_priv)) {
+	if (IS_JSL_EHL(dev_priv) || INTEL_GEN(dev_priv) >= 12) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not supported by phy\n");
 		return false;
 	}
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
