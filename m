Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F87452AC8A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 22:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006D410E240;
	Tue, 17 May 2022 20:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F0B10E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 20:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652818425; x=1684354425;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IXGA4zEVmVl6wdbnIKR0ONiU1tS3NOVVVx20gA/K3KY=;
 b=RdMVOdKS6cwWJYILJDa57Iqh8AL6+cSvtG3HmH8TzZ0LigCDw4hX41dh
 N7XhVYrv4HBAidpGin9goXdSmi/iTpXe5R3C295HB523yEW64nMRC7Iei
 S1fIxjGwQbv/0BKM8Hj38Cnu2umQKZgSg2ulNNofWXTrdkT2v39/1TbZI
 6SawD+AXFTu50SyfOxbhDsmgT15SkvPPEQo4JbVDk7d5MXDuiPH0ctV4r
 r3pgKtEVr42f2qP5xlQH5jo1oIOjp+KJL0m04oKRu1td8fcZepDahfgrF
 UZ04NX5I/0Onz+AL4w8Jwmywa/kKhz8aHqQPCW9Lhe5gj9D4q/RumtdX4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="331931812"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="331931812"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 13:13:44 -0700
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="597326930"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 13:13:44 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 May 2022 13:13:38 -0700
Message-Id: <20220517201338.7291-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Extend Wa_22010954014 to DG2-G11
 and DG2-G12
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

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ee0047fdc95d..d0e0d6a324ee 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7513,10 +7513,9 @@ static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
 
 static void dg2_init_clock_gating(struct drm_i915_private *i915)
 {
-	/* Wa_22010954014:dg2_g10 */
-	if (IS_DG2_G10(i915))
-		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0,
-				 SGSI_SIDECLK_DIS);
+	/* Wa_22010954014:dg2 */
+	intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0,
+			 SGSI_SIDECLK_DIS);
 
 	/*
 	 * Wa_14010733611:dg2_g10
-- 
2.20.1

