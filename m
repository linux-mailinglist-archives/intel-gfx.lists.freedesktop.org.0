Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA6E57C800
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B47A48BF9B;
	Thu, 21 Jul 2022 09:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9A68BCC0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396889; x=1689932889;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aimUTLQpAWZwsTsbAl24iPzat4dawHp1aaSJwKg7djI=;
 b=g5iVYLVL/C+YokGkqsPRNTc5f6ESN511LsJFTmXr+C6xKPcD4nlywjmI
 VuZD5S+qVuCyNaXiLF6ML3Km+FvAUL1bklqS7p4zfDJe4OCq+F51nrIGf
 VTHxZ6pUYVe4vp2yVRxrF9c8G3TZgcy5vLrjcqQtC5k4LvGpqYDiR3HVY
 kZKErV6kqYonA/n/q1i9q2cLeTFfyplEb8npp6u8B6WnSHuIoRF2ZS/To
 mlfyR08Q5amlTncaC/Qf25Nk4ksvOvj/AHrkK6OkoGvduD08CQkg2l4m2
 wGrIQMaJYaNx1Tv0W6r3nto6PutHmzEieT0H/vNO0m5JpGKagq662dR0W A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="284559719"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="284559719"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="598403864"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 21 Jul 2022 02:48:06 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwT026833; Thu, 21 Jul 2022 10:48:02 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:49 +0530
Message-Id: <20220721095955.3986943-3-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Guard rc6 helpers with
 is_intel_rpm_allowed
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

Guard intel_rc6_sanitize/intel_rc6_enable/intel_rc6_disable
rc6 helpers with is_intel_rpm_allowed as these
are called in intel_gt_resume/intel_gt_suspend_late.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f8d0523f4c18..73e2fb9420a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -507,9 +507,14 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 
 static void rpm_get(struct intel_rc6 *rc6)
 {
+	struct drm_i915_private *i915 = rc6_to_i915(rc6);
+
 	GEM_BUG_ON(rc6->wakeref);
-	pm_runtime_get_sync(rc6_to_i915(rc6)->drm.dev);
-	rc6->wakeref = true;
+
+	if (is_intel_rpm_allowed(&i915->runtime_pm)) {
+		pm_runtime_get_sync(i915->drm.dev);
+		rc6->wakeref = true;
+	}
 }
 
 static void rpm_put(struct intel_rc6 *rc6)
@@ -623,7 +628,9 @@ void intel_rc6_enable(struct intel_rc6 *rc6)
 		return;
 
 	/* rc6 is ready, runtime-pm is go! */
-	rpm_put(rc6);
+	if (rc6->wakeref)
+		rpm_put(rc6);
+
 	rc6->enabled = true;
 }
 
-- 
2.25.1

