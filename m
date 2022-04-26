Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FF25103BD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 18:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D2F10E852;
	Tue, 26 Apr 2022 16:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8787E10E852
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 16:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650991300; x=1682527300;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dNr69oWrMbrrS1NmuC2mULYIbwskPZGtxIrKrHxfwnQ=;
 b=Vj7fPNXEx9RNBBLORKti3QfEMFUy9vuWqxW2ih/pnW84pZgu5ncn4R6u
 DiuYeJUhXX42QFmpdoeyF3sRwuFVSlOVgJ2NIMQZbp6w+wPFmVJGKi5oL
 7dv7C12f9atLNXVodWybkRK3lW0nlMZo4FbdR/0E6B+X0aa3ZwRToeGWP
 GE58puYogHIV+vzOa8OZkjsbnHN9BMhmw2x+ehjkOHO82pbK+Lsig/Iz1
 rgMpl7uTnb+CtoPf2t+6rAv0B5wHoSKF7UDpXn7xI8XaxRl6fFtiNxipl
 V8lO62Uw4BndZf4iEL2BA0KjYc4cxfe5b/+5qg9+f4eTc99DgWkFRsu9A w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265453534"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265453534"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 09:40:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="558405069"
Received: from bnilawar-desk.iind.intel.com ([10.145.162.36])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 09:40:56 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:11:30 +0530
Message-Id: <20220426164130.1469886-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/rc6: Access RC6 CTRL regs with
 forcewake
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
Cc: chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use forcewake to access RC6 CTRL regs

Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index b4770690e794..acc26b7d2562 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -635,7 +635,7 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
 		return;
 
 	/* Restore HW timers for automatic RC6 entry while busy */
-	set(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
+	intel_uncore_write(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
 }
 
 void intel_rc6_park(struct intel_rc6 *rc6)
@@ -655,7 +655,7 @@ void intel_rc6_park(struct intel_rc6 *rc6)
 		return;
 
 	/* Turn off the HW timers and go directly to rc6 */
-	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
+	intel_uncore_write(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
 
 	if (HAS_RC6pp(rc6_to_i915(rc6)))
 		target = 0x6; /* deepest rc6 */
@@ -663,7 +663,7 @@ void intel_rc6_park(struct intel_rc6 *rc6)
 		target = 0x5; /* deep rc6 */
 	else
 		target = 0x4; /* normal rc6 */
-	set(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
+	intel_uncore_write(uncore, GEN6_RC_STATE, target << RC_SW_TARGET_STATE_SHIFT);
 }
 
 void intel_rc6_disable(struct intel_rc6 *rc6)
-- 
2.25.1

