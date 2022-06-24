Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F14559DE7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88B610E341;
	Fri, 24 Jun 2022 16:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D231110E14E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 16:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086400; x=1687622400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UgoyjaKwMk0mob1FS6XvcR9Y83K30xgGGKP+OMGyNcE=;
 b=UpmEgOs5rNJs6KGxdyFSVMb4fcczSFahqg1g6xx/skac3qek+VQdEuFT
 pw3NuCBfAI2DPtyaRWXyYJiGsBLuni6+LSqzopZS81ajrhaBKor/lrgYJ
 3dxqzRy3SHFNdqwOk3lh9fy6ji3VRmOMWECIT/nRY88i/X803LdoYo5EG
 KFCPOCApXFnRalGXC5tYyqlsUU4rYhcNIvWzTeecwvJ6pvzS9BHgLCtSP
 AX+Wov0Wa67M6z1LfuMMeWFbfD0B2t6jTV4uY6jwHZk3Oi+QIESS9Oa9U
 AQ/dyCEjHCy/FoA13LL0aw13G3FeghqgaBaJp17edlMXGErhrAWDpZVPK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762326"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762326"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 09:00:00 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170404"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:57 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:20 +0530
Message-Id: <20220624155922.7435-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 7/9] Drm/i915/rpm: Enable D3Cold VRAM SR
 Support
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

TODO: GT and GuC Interface state save/restore on VRAM_SR entry/exit.

v2:
- Remove drm_dbg("VRAM Self Refresh enabled"). [Jani]

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 26 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.c |  3 +--
 2 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1bc6227c0287..7357639456b5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1573,6 +1573,31 @@ static int i915_pm_restore(struct device *kdev)
 	return i915_pm_resume(kdev);
 }
 
+static int intel_runtime_idle(struct device *kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	int ret = 1;
+
+	if (!HAS_LMEM_SR(i915)) {
+		/*TODO: Prepare for D3Cold-Off */
+		goto out;
+	}
+
+	disable_rpm_wakeref_asserts(&i915->runtime_pm);
+
+	ret = intel_pm_vram_sr(i915, true);
+	if (!ret)
+		ret = 1;
+
+	enable_rpm_wakeref_asserts(&i915->runtime_pm);
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
@@ -1758,6 +1783,7 @@ const struct dev_pm_ops i915_pm_ops = {
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

