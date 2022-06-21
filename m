Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7BB5531EF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5678310F0F0;
	Tue, 21 Jun 2022 12:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6955D10F621
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814183; x=1687350183;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JFl2oB3UEE105sonw21uOzIYdTiUlgSF2/FwxF9soHM=;
 b=jm1xct9+T6FOxEtyJKOPCCwkvEWMnYEIFDUSUFBfYYhsHCMril9YQBB9
 PgXnLBvAPf8SSF0IgAvr+6YDWHWLRXgbrBHIApOIUPayYn+EV/RjaUMzF
 /A/ILybAaVwxljX+6Eaw3BqHaz2GVSYa4vRMIBIWMXBBz50LvM8ECm7VU
 lWkZadQdDXG8q2x8cfeYbXab1NEVpowyFmbk8JRBN/+bIJC/en/6+GFqy
 L+p+gU87/66jYdjhgBH1vyRJxyR2r1JvfoZrdkvd2J4DtbNv7dZzl3dvy
 F6pdHOB0H7yTNZIY+f8hHW1TEWc4FOfP73NKm6Ak4xN1iNNhp2NQpfqTo Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366428438"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="366428438"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="585263433"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 21 Jun 2022 05:23:00 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjv013778; Tue, 21 Jun 2022 13:22:56 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:15 +0530
Message-Id: <20220621123516.370479-11-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Guard rpm helpers at
 gt_park/unpark
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

Guard rpm helpers at gt_park/unpark with is_intel_rpm_allowed
to guard (gt/engine)_pm_(get/put)

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  9 ++++++---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 10 ++++++----
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 136cc44c3deb..e353aa0c649b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1600,9 +1600,12 @@ bool intel_engines_are_idle(struct intel_gt *gt)
 	if (intel_gt_is_wedged(gt))
 		return true;
 
-	/* Already parked (and passed an idleness test); must still be idle */
-	if (!READ_ONCE(gt->awake))
-		return true;
+	/* Ignore gt->awake when rpm is not allowed as wakeref is not held at gt_unpark */
+	if (is_intel_rpm_allowed(gt->uncore->rpm)) {
+		/* Already parked (and passed an idleness test); must still be idle */
+		if (!READ_ONCE(gt->awake))
+			return true;
+	}
 
 	for_each_engine(engine, gt, id) {
 		if (!intel_engine_is_idle(engine))
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 9857b91194b7..12117cf7eb94 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -81,8 +81,10 @@ static int __gt_unpark(struct intel_wakeref *wf)
 	 * Work around it by grabbing a GT IRQ power domain whilst there is any
 	 * GT activity, preventing any DC state transitions.
 	 */
-	gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
-	GEM_BUG_ON(!gt->awake);
+	if (is_intel_rpm_allowed(gt->uncore->rpm)) {
+		gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
+		GEM_BUG_ON(!gt->awake);
+	}
 
 	intel_rc6_unpark(&gt->rc6);
 	intel_rps_unpark(&gt->rps);
@@ -116,8 +118,8 @@ static int __gt_park(struct intel_wakeref *wf)
 	intel_synchronize_irq(i915);
 
 	/* Defer dropping the display power well for 100ms, it's slow! */
-	GEM_BUG_ON(!wakeref);
-	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
+	if (wakeref)
+		intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
 
 	return 0;
 }
-- 
2.25.1

