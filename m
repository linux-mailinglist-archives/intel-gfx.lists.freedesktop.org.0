Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 556605531E2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B7010ECA9;
	Tue, 21 Jun 2022 12:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C4C10EC81
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814155; x=1687350155;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4u/Up6sfop3h8WtEzMoXhS4Kb9FwLoe886Egzera3Ls=;
 b=i2GERgfyki0nMrUDIkrlkmg+tcSjg5aW5RcJmH4FKyFRmogqES2F9DK9
 wRIyFyGNmtc7eL2TI95LcY+lMtiUlfWdcNBdKqbtsuaKX7+kIPpaDbbzG
 V0n511JsGM21aWWVePofH0vjniAlll31Lc8BqkFnzyEYiv6Vqis6JVH87
 Uh6zmeyQ5n4qP0Qn1B74KAhi7Sbp8mQp8EltwItqWGxn5D9neo1SQDzrl
 fbj2GNLQ/sJkW1OBfGhKmW/ye8OmVnt1JirtVCYkUiFF6+yMXkV88QbEJ
 nRfQB1vtViDshi7Psmuz2atWNoxB/EL45x471U5OainkJzUlm5FjUp/HL g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="268823152"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="268823152"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="676976327"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jun 2022 05:22:31 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjn013778; Tue, 21 Jun 2022 13:22:28 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:07 +0530
Message-Id: <20220621123516.370479-3-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: Avoid rpm helpers in
 intel_guc_slpc_set_media_ratio_mode
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

Removed rpm helpers from intel_guc_slpc_set_media_ratio_mode
and added rpm helpers at below high level functions.
-media_freq_factor_store
-intel_guc_slpc_enable via intel_gt_init_hw (already rpm wakeref is hold)

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 8 +++-----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index ae8a8f725f01..b8f151044780 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -648,6 +648,7 @@ static ssize_t media_freq_factor_store(struct device *dev,
 {
 	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
 	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
+	intel_wakeref_t wakeref;
 	u32 factor, mode;
 	int err;
 
@@ -663,6 +664,7 @@ static ssize_t media_freq_factor_store(struct device *dev,
 	if (mode > SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO)
 		return -EINVAL;
 
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
 	err = intel_guc_slpc_set_media_ratio_mode(slpc, mode);
 	if (!err) {
 		slpc->media_ratio_mode = mode;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 2df31af70d63..9a8440378dc2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -510,16 +510,14 @@ int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val)
 int intel_guc_slpc_set_media_ratio_mode(struct intel_guc_slpc *slpc, u32 val)
 {
 	struct drm_i915_private *i915 = slpc_to_i915(slpc);
-	intel_wakeref_t wakeref;
 	int ret = 0;
 
 	if (!HAS_MEDIA_RATIO_MODE(i915))
 		return -ENODEV;
 
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		ret = slpc_set_param(slpc,
-				     SLPC_PARAM_MEDIA_FF_RATIO_MODE,
-				     val);
+	ret = slpc_set_param(slpc,
+			     SLPC_PARAM_MEDIA_FF_RATIO_MODE,
+			     val);
 	return ret;
 }
 
-- 
2.25.1

