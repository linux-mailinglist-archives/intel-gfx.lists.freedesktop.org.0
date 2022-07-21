Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F24C57C803
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B4558BD14;
	Thu, 21 Jul 2022 09:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C06598BFC3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396899; x=1689932899;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BL9VeBf/caHn0UbibU5ncINZvLy2PWzEo1J47ZX3dHo=;
 b=ZovWzc1ut9GwQYDI1qT2B2pFQZwrDqrWGrl/H8rCGvXpxJdj4yeQ3yu5
 VViHQR/RP+QZeeJ1XqO3qhvy+UvEVIGjLsgBIZ9Dk+u7rsgZsZGOJJR2t
 AY9qaydq3IUANpWt5pxSp//8hBCA7aKsv2APe3zJ0ZyyZiKVfxF+ZydGK
 zQbmXJRRGcIWrRRG0qvfuImm7/ih6nAkQtRNsQk9sfAFEoHa3vYyAljBu
 7L1cCXY1DIvjGG37G2p+/9EQ9Fs/E/Cpk3FEbKYy7n9IumL8fwo5aYGCt
 //19S2Rzm3DYegW2BNcIqpWyXlJsgZYLHB8F/PiIUQqHszV0FkDz4A+Z8 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="287011195"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="287011195"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="701212997"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jul 2022 02:48:16 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwW026833; Thu, 21 Jul 2022 10:48:13 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:52 +0530
Message-Id: <20220721095955.3986943-6-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] Drm/i915/rpm: Add intel_runtime_idle
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

From: Anshuman Gupta <anshuman.gupta@intel.com>

Adding intel_runtime_idle (runtime_idle callback) to prepare the
tageted D3 state.

Since we have introduced i915 runtime_idle callback.
It need to be warranted that Runtime PM Core invokes runtime_idle
callback when runtime usages count becomes zero. That requires
to use pm_runtime_put instead of pm_runtime_put_autosuspend.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 12 ++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.c |  3 +--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..4c36554567fd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1576,6 +1576,17 @@ static int i915_pm_restore(struct device *kdev)
 	return i915_pm_resume(kdev);
 }
 
+static int intel_runtime_idle(struct device *kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	int ret = 1;
+
+	pm_runtime_mark_last_busy(kdev);
+	pm_runtime_autosuspend(kdev);
+
+	return ret;
+}
+
 static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
@@ -1752,6 +1763,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.restore = i915_pm_restore,
 
 	/* S0ix (via runtime suspend) event handlers */
+	.runtime_idle = intel_runtime_idle,
 	.runtime_suspend = intel_runtime_suspend,
 	.runtime_resume = intel_runtime_resume,
 };
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 704beeeb560b..1c3ed0c29330 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -513,8 +513,7 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
 
 	intel_runtime_pm_release(rpm, wakelock);
 
-	pm_runtime_mark_last_busy(kdev);
-	pm_runtime_put_autosuspend(kdev);
+	pm_runtime_put(kdev);
 }
 
 /**
-- 
2.25.1

