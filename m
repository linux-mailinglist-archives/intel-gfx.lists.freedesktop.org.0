Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9C657C7FD
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81378BE74;
	Thu, 21 Jul 2022 09:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B117F8BE74
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396885; x=1689932885;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W6J2Pu4uMv41iQUv5DEW8cwXIKZUkXTxQhA4G8JXoPE=;
 b=jLgADIxhqhGs4QrRSwKCPjL1z+Ubb890Jn7ryN9OQUSt9G2OjdkioCsM
 z6zX+rxCnJXBoYNR5wCznU520pQgm4ZBMyM22sU8LjvqK0eisjiyYRRik
 gPo9Oi2NPCUWYVbO6KBrhAP5TAkmln40tNBj6Fkper5rRiuQo8MftIjux
 qNU/dI9nw6LTknQYate8UZq+mlwbQk+gG86aGXxzrpIP0peNSHZHOxQjA
 eoDl+9ro0clmzyj1WcUd/WHppxV/Gqp2XIp7vIfo5L8e15xabUid9TxhL
 Sm8dm0hXm8grQOLEYo1KGVI9KUP/2Zm+twyhibBLs7NUbroz85m4F4TJK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="284559703"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="284559703"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="701212965"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jul 2022 02:48:02 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwS026833; Thu, 21 Jul 2022 10:47:59 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:48 +0530
Message-Id: <20220721095955.3986943-2-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
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

Added is_intel_rpm_allowed function to query the runtime_pm
status and disllow during suspending and resuming.

v2: Return -2 if runtime pm is not allowed in runtime_pm_get
and skip wakeref release in runtime_pm_put if wakeref value
is -2. - Jani N
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 23 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6ed5786bcd29..704beeeb560b 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -113,7 +113,7 @@ static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
 	unsigned long flags, n;
 	bool found = false;
 
-	if (unlikely(stack == -1))
+	if (unlikely(stack == -1) || unlikely(stack == -2))
 		return;
 
 	spin_lock_irqsave(&rpm->debug.lock, flags);
@@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)
 }
 
 #endif
+static int intel_runtime_pm_status(struct intel_runtime_pm *rpm)
+{
+	return rpm->kdev->power.runtime_status;
+}
+
+bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm)
+{
+	int rpm_status;
+
+	rpm_status = intel_runtime_pm_status(rpm);
+	if (rpm_status == RPM_RESUMING || rpm_status == RPM_SUSPENDING)
+		return false;
+	else
+		return true;
+}
 
 static void
 intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
@@ -354,6 +369,9 @@ static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
 						     runtime_pm);
 	int ret;
 
+	if (!is_intel_rpm_allowed(rpm))
+		return -2;
+
 	ret = pm_runtime_get_sync(rpm->kdev);
 	drm_WARN_ONCE(&i915->drm, ret < 0,
 		      "pm_runtime_get_sync() failed: %d\n", ret);
@@ -490,6 +508,9 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
 
 	untrack_intel_runtime_pm_wakeref(rpm, wref);
 
+	if (wref == -2)
+		return;
+
 	intel_runtime_pm_release(rpm, wakelock);
 
 	pm_runtime_mark_last_busy(kdev);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index d9160e3ff4af..99418c3a934a 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_enable(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_disable(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm);
+bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
 
 intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
 intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm);
-- 
2.25.1

