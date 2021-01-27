Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B77306319
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 19:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B520C6E86B;
	Wed, 27 Jan 2021 18:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA166E86B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 18:19:14 +0000 (UTC)
IronPort-SDR: 5p6R6yFsrWNXbQxMj2LINWNod/htYvmkRXTNbM6MvGcQshibniM1ku/hKDEliy9OUUqtWapqyE
 hT4sdwBbcbWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="159284986"
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="159284986"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 10:19:14 -0800
IronPort-SDR: 7UOjegkU764yfXn0t2vldLXWZEKZBaSTfd2gS4tUVHzxS6iYrnR6CeftRy3q47w8Mc8O4tXZRz
 jne3cQXukgRg==
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="362522882"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 10:19:12 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 20:19:09 +0200
Message-Id: <20210127181909.128094-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable runtime power management
 during shutdown
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At least on some TGL platforms PUNIT wants to access some display HW
registers, but it doesn't handle display power managment (disabling DC
states as required) and so this register access will lead to a hang. To
prevent this disable runtime power management for poweroff and reboot.

Reported-and-tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 0037b81d991e..6f83cca8e27b 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1054,6 +1054,8 @@ static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
 void i915_driver_shutdown(struct drm_i915_private *i915)
 {
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
+	intel_runtime_pm_disable(&i915->runtime_pm);
+	intel_power_domains_disable(i915);
 
 	i915_gem_suspend(i915);
 
@@ -1069,7 +1071,10 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_suspend_encoders(i915);
 	intel_shutdown_encoders(i915);
 
+	intel_power_domains_driver_remove(i915);
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
+
+	intel_runtime_pm_driver_release(&i915->runtime_pm);
 }
 
 static bool suspend_to_idle(struct drm_i915_private *dev_priv)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
