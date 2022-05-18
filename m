Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C430952BB58
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2CA10ED93;
	Wed, 18 May 2022 13:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC3310EDD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879276; x=1684415276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=irv+D35PTx3xSADxPJOUoMTtlfW0lv3c8qVEqXlqnwM=;
 b=Yu9KZniCNG+tFvqPz+raAX6BIU4ciewa3AppvEkAVk3FSpwqTOrM9xLQ
 g5W7Jm3y3lGLys4RowZM8TB0DzUpz1uw9OSa+0USGPywHF2+dsXfbKQIJ
 DFQQGXScWV46IivriOPmh85wLMwA8AIBedN4TbIE5mCRGd182QgFdisnb
 B7Od7O7yQbG2w1a3GyuF/zuczQdth2tDSqElx7MVJ8FjgEtt1SkY5o1H8
 ISsXM9GYJh/1LEnxSlHj+GxKz7ESPNz9Bbmw1QHgObdp9KJQavXUu5pYc
 6ROKF572FSTM/QbnAnQAthgdjQ7Ba1rL91yf30rItdGSKAZ0kWEiqpflh w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071836"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071836"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:46 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314402"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:44 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:16 +0530
Message-Id: <20220518130716.10936-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220518130716.10936-1-anshuman.gupta@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/rpm: Enable D3Cold VRAM SR Support
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
Cc: jani.nikula@intel.com, Chris Wilson <chris.p.wilson@intel.com>,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel Client DGFX card supports D3Cold with two option.
D3Cold-off zero watt, D3Cold-VRAM Self Refresh.

i915 requires to evict the lmem objects to smem in order to
support D3Cold-Off, which increases i915 the suspend/resume
latency. Enabling VRAM Self Refresh feature optimize the
latency with additional power cost which required to retain
the lmem.

Adding intel_runtime_idle (runtime_idle callback) to enable
VRAM_SR, it will be used for policy to choose
between D3Cold-off vs D3Cold-VRAM_SR.

Since we have introduced i915 runtime_idle callback.
It need to be warranted that Runtime PM Core invokes runtime_idle
callback when runtime usages count becomes zero. That requires
to use pm_runtime_put instead of pm_runtime_put_autosuspend.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 26 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.c |  3 +--
 2 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5a9d5529fc90..bbb11c632799 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1541,6 +1541,31 @@ static int i915_pm_restore(struct device *kdev)
 	return i915_pm_resume(kdev);
 }
 
+static int intel_runtime_idle(struct device *kdev)
+{
+	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	int ret = 1;
+
+	if (!HAS_LMEM_SR(dev_priv)) {
+		/*TODO: Prepare for D3Cold-Off */
+		goto out;
+	}
+
+	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+
+	ret = intel_pm_vram_sr(dev_priv, true);
+	if (!ret)
+		drm_dbg(&dev_priv->drm, "VRAM Self Refresh enabled\n");
+
+	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
+
+out:
+	pm_runtime_mark_last_busy(kdev);
+	pm_runtime_autosuspend(kdev);
+
+	return ret;
+}
+
 static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
@@ -1726,6 +1751,7 @@ const struct dev_pm_ops i915_pm_ops = {
 	.restore = i915_pm_restore,
 
 	/* S0ix (via runtime suspend) event handlers */
+	.runtime_idle = intel_runtime_idle,
 	.runtime_suspend = intel_runtime_suspend,
 	.runtime_resume = intel_runtime_resume,
 };
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6ed5786bcd29..4dade7e8a795 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -492,8 +492,7 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
 
 	intel_runtime_pm_release(rpm, wakelock);
 
-	pm_runtime_mark_last_busy(kdev);
-	pm_runtime_put_autosuspend(kdev);
+	pm_runtime_put(kdev);
 }
 
 /**
-- 
2.26.2

