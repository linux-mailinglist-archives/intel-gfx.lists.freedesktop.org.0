Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3886B300E0D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 21:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D9C6EA48;
	Fri, 22 Jan 2021 20:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4006EA4E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 20:49:15 +0000 (UTC)
IronPort-SDR: lvX5hEwGWsP77YZl+uc7zLgpq3eFWEFpNBul7m2xD4K5Oo8IbgsUeL4MIfnbQfFF+r3G1+kwR9
 OETrf3coRLFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="243581172"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="243581172"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:49:13 -0800
IronPort-SDR: kxNqrTBOqlaCma24f0teNMeaSkRkiqvi0CMc0co0Lm42zYLYc5lDkvzc5sDKT9NmE+cRz1fVnd
 qVM6jSN7pCtg==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="468038800"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:49:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 12:48:56 -0800
Message-Id: <20210122204858.1319260-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: stop registering if
 drm_dev_register() fails
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If drm_dev_register() fails there is no reason to continue registering
the driver and initializing.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index b37b189e219c..ea4323a83535 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -664,17 +664,19 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	intel_vgpu_register(dev_priv);
 
 	/* Reveal our presence to userspace */
-	if (drm_dev_register(dev, 0) == 0) {
-		i915_debugfs_register(dev_priv);
-		if (HAS_DISPLAY(dev_priv))
-			intel_display_debugfs_register(dev_priv);
-		i915_setup_sysfs(dev_priv);
-
-		/* Depends on sysfs having been initialized */
-		i915_perf_register(dev_priv);
-	} else
+	if (drm_dev_register(dev, 0) != 0) {
 		drm_err(&dev_priv->drm,
 			"Failed to register driver for userspace access!\n");
+		return;
+	}
+
+	i915_debugfs_register(dev_priv);
+	if (HAS_DISPLAY(dev_priv))
+		intel_display_debugfs_register(dev_priv);
+	i915_setup_sysfs(dev_priv);
+
+	/* Depends on sysfs having been initialized */
+	i915_perf_register(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv)) {
 		/* Must be done after probing outputs */
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
