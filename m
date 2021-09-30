Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2201541D89A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 13:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C4C6EB79;
	Thu, 30 Sep 2021 11:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4D16EB79
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 11:25:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225203606"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="225203606"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:25:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="555743528"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:25:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 30 Sep 2021 14:24:35 +0300
Message-Id: <1ee72c31963d8be98490cd78f7c1182ba4f54c13.1633000838.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1633000838.git.jani.nikula@intel.com>
References: <cover.1633000838.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/drv: return -EIO instead of -1
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

Avoid using the incidental -EPERM. Return the -EIO directly from
i915_get_bridge_dev() instead of converting return values later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index ed7b421cad44..6b1bba4b6b16 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -97,7 +97,7 @@ static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
 		pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
 	if (!dev_priv->bridge_dev) {
 		drm_err(&dev_priv->drm, "bridge device not found\n");
-		return -1;
+		return -EIO;
 	}
 	return 0;
 }
@@ -409,8 +409,9 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	if (i915_inject_probe_failure(dev_priv))
 		return -ENODEV;
 
-	if (i915_get_bridge_dev(dev_priv))
-		return -EIO;
+	ret = i915_get_bridge_dev(dev_priv);
+	if (ret < 0)
+		return ret;
 
 	ret = intel_uncore_init_mmio(&dev_priv->uncore);
 	if (ret < 0)
-- 
2.30.2

