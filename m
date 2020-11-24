Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E56A12C308B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:13:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD086E520;
	Tue, 24 Nov 2020 19:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEC46E51C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:13:33 +0000 (UTC)
IronPort-SDR: 5Ut1k94RllhwddrSEs7k/UvxAzQGoo43SIfYXYXvLiYcCadzJPdgZp7WWtjGLJBdbm8Y0utwlB
 ircgiz7C3ZbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256710244"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="256710244"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:32 -0800
IronPort-SDR: CJxvBPKNNLcCeg0MDELUGhZ6ILG1ct9MiW0NTbtXiB35Kuyqsy08qEG5x4rDmwWBeNknqbgDNK
 lBuxnJESW02A==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="312676218"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:32 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 11:13:14 -0800
Message-Id: <20201124191316.1660749-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124191316.1660749-1-lucas.demarchi@intel.com>
References: <20201124191316.1660749-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: stop registering if
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If drm_dev_register() fails there is no reason to continue registering
the driver and initializing.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 320856b665a1..c3fad01ce26f 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -669,17 +669,19 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
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
