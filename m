Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0674BB5F7
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 10:53:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E7B10F213;
	Fri, 18 Feb 2022 09:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F273910F20C
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 09:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645178024; x=1676714024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Kb7WuVNcJ/wwbETXUKb8htAV+9ex5IMiE265L4FE+I=;
 b=jviwrainIexreFGLh4IHJmrQxbTtgLH1hemEycXy0fggILcmvZ7cKvJf
 mee3MlrnNcYNlXklJLCQUhNHI+Uaz7aBmuRKtOpqtK9GeId/8dI9NC0AK
 JivHtu9U9/6N+PG2zfvQt4f6nJFZDy/mmUg1qE3Y87Q9D6bZ0yjzAUtAJ
 gcy/M/Ger/2b80Rt6OrDzbA+jdTPM6LoMXeEeal4v0DxRIy+ac/LnvdLe
 vWrFS9oYs6EeZeHX5Z8l1Qe/H7VwIw/hh6nnVqITDJypAfnt7aGMIeDGd
 8I8mjVXsdtWExX5S3ldbeZHSuCzQeTI4KjguZfh5ITU1rdnVKdaU2FY5x Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="248691407"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="248691407"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 01:53:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="637693776"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 01:53:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 01:54:38 -0800
Message-Id: <20220218095438.451576-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220218095438.451576-1-lucas.demarchi@intel.com>
References: <20220218095438.451576-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Do not use phy E
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

PORT_TC1 is still not being initialized - that is the port that uses phy
E.  However the intel_phy_is_snps() reports that phy as being present,
which causes warnings about unclaimed access to the PHY_MISC register.
Even with some basic wiring up for that port, it still gives the error:

	i915 0000:03:00.0: [drm] *ERROR* SNPS PHY E failed to calibrate after 25ms.

So remove it for now.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59961621fe4a..c3bb2da9e93a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2148,9 +2148,10 @@ bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
 	else if (IS_DG2(dev_priv))
 		/*
 		 * All four "combo" ports and the TC1 port (PHY E) use
-		 * Synopsis PHYs.
+		 * Synopsis PHYs. However the last will only be used when
+		 * PORT_TC1 is enabled.
 		 */
-		return phy <= PHY_E;
+		return phy <= PHY_D;
 
 	return false;
 }
-- 
2.35.1

