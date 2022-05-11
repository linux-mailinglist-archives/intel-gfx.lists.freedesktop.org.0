Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DBF5233AE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 15:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591D210EC76;
	Wed, 11 May 2022 13:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80AE210ED4C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 13:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652274311; x=1683810311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bb87XyfsnSko4OjC2I2nGBPlN/cLP8ElNJl4vDZZ+IM=;
 b=hBQkSoaLdK3E6VqdaZVC6MWMQGGONhPo0RI3QPp4SL61doDyEKJumqeV
 70rJrXsZMw5q1pFJ6WfDfwevf1qCUji6W+RX4P/DTmJkmdiighFwODcBu
 5/+YGqsMTyj89DbmJlcOTmdj7DgJFeNs7qMlkzgSR7IBiS4o+XQLl3CO2
 cjLfhCKiII3ixTV33j1HXp+QEkYT0b2pW2gzNigNjVt0BHx4w9WfzbQcW
 Hzbn2BMpxDKuepedallScL+uqC3Aoimcf6q2a++OW3I8wIfbj4QyjSR8u
 WSWemZZy5OgxsSjg6Jdf2KuzS8Tq65E7Z1hQF08jJaBmLACL+dHnchl7I w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="249586549"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="249586549"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 06:05:10 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="739211245"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 06:05:05 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 18:34:54 +0530
Message-Id: <20220511130455.22028-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use drm_dbg for rpm logging
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

RPM suspend/resume also supported on gfx platforms which doesn't have
kms support and even on platforms without any connected display panel.
There is no good reason to log rpm suspend/resume debug message with
drm_dbg_kms() therefore changing it to drm_dbg().

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 90b0ce5051af..ed6028fd442d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1549,7 +1549,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
-	drm_dbg_kms(&dev_priv->drm, "Suspending device\n");
+	drm_dbg(&dev_priv->drm, "Suspending device\n");
 
 	disable_rpm_wakeref_asserts(rpm);
 
@@ -1625,7 +1625,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
 		intel_hpd_poll_enable(dev_priv);
 
-	drm_dbg_kms(&dev_priv->drm, "Device suspended\n");
+	drm_dbg(&dev_priv->drm, "Device suspended\n");
 	return 0;
 }
 
@@ -1639,7 +1639,7 @@ static int intel_runtime_resume(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
 
-	drm_dbg_kms(&dev_priv->drm, "Resuming device\n");
+	drm_dbg(&dev_priv->drm, "Resuming device\n");
 
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
@@ -1683,7 +1683,7 @@ static int intel_runtime_resume(struct device *kdev)
 		drm_err(&dev_priv->drm,
 			"Runtime resume failed, disabling it (%d)\n", ret);
 	else
-		drm_dbg_kms(&dev_priv->drm, "Device resumed\n");
+		drm_dbg(&dev_priv->drm, "Device resumed\n");
 
 	return ret;
 }
-- 
2.26.2

