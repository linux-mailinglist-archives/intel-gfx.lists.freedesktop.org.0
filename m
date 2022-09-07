Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E415B0E19
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 22:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B31910E878;
	Wed,  7 Sep 2022 20:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E63E10E878
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 20:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662582401; x=1694118401;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VX81iLceEF57GZ90Ax9W98kjQGPL1U1EtWTw9P4k168=;
 b=EgoScPXB71dE5GnCv/U1SsqPyvmaKvCBwDWp5hIXahOlUT6Fwhma0lJs
 Hg7TLRCvs6SlS55dSpvX24K0FI8Q7oI6Hmt0Kd4JQk2W3gF7kYDajda8K
 bxFhZRtndqXxxKk5ckIjdwbrnJI9+3WTrIT1ZbhSvnpKr5DUZuu+yFiys
 1FY+SvGjUIZuLM6KA5j4+wAeikfY/mYNud4tdxQ+5TD2jRi9DDNMt5ktU
 croiDJCqoAi09x0i3XqBCzl7tO4UzmFpmj2+VA7l/cVXogGNeB9UzNNmP
 Mi4JYEsPyesFU7ZnO2iM2DQejUZGMieZKEw+aDa9b2A4aEonjbAhcQ54R Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="284007483"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="284007483"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 13:26:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; d="scan'208";a="614627289"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 13:26:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 13:26:06 -0700
Message-Id: <20220907202606.1640377-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/dg2: extend Wa_1409120013 to
 DG2"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 487970e8bb776c989013bb59d6cbb22e45b9afc6.

Updated bspec and workaround database note Wa_1409120013 is not needed
for DG2 (or any Display 13) platform.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 210c1f78cc90..6ff0b80e69ac 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7614,9 +7614,9 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 
 static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	/* Wa_1409120013:tgl,rkl,adl-s,dg1,dg2 */
+	/* Wa_1409120013:tgl,rkl,adl-s,dg1 */
 	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
-	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv) || IS_DG2(dev_priv))
+	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv))
 		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
 				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
-- 
2.37.2

