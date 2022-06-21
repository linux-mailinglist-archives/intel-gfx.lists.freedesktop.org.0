Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6985531E5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DB710EF32;
	Tue, 21 Jun 2022 12:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34EE10ECB2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814161; x=1687350161;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/4l9dvYZ24W2y9TVq9WPDMG1kNy2JgpNAiHQcivzfs8=;
 b=RihTuADpeOhqYYmolkZuTjyYWUOX5owdOhMSb+YMCP6TSestRBEYlz00
 mjQVCTKaGYYBDtrOba4+SxfwKe3djhmSII7EEU+nXj0YeuibpB1730f9P
 tSvJZbiK2xJGrxBA18UL9cMg7VVgYtGzDJoJZ469C7kvfwq5JNhK5sJcv
 v/nRX6x0e3zEGeCdQxN6JV8v2K5FVyUTzxtr1jPNU/Ub36uoZukPuXYol
 OQqBlnUbvul3N/c8gDNY0KCjnV6UVTJAaBsrcRc8xJGjGptnj61dCqAQ8
 sGrRqROFaC/ImN6R/5Q73AF2hGV4MbQEmU4sFrqQPneqRLPbz9DdTFyep Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="277652903"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="277652903"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591629699"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2022 05:22:38 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjp013778; Tue, 21 Jun 2022 13:22:35 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:09 +0530
Message-Id: <20220621123516.370479-5-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
 helper
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

Added is_intel_rpm_allowed function to query the runtime_pm
status and disllow during suspending and resuming.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6ed5786bcd29..3759a8596084 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
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

