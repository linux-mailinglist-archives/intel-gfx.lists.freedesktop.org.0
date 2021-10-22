Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F23CD437A59
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 17:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1D96EDA4;
	Fri, 22 Oct 2021 15:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC7A6EDA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 15:52:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="229192877"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="229192877"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 08:52:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="445334479"
Received: from pbabu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.213.192])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 08:52:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Fri, 22 Oct 2021 18:52:33 +0300
Message-Id: <d0de4cee3a5a6c617d4e5c4159ef3fdacdeaeb2c.1634917858.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634917858.git.jani.nikula@intel.com>
References: <cover.1634917858.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/driver: rename driver to
 i915_drm_driver
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

As a name, "driver" is too generic and short to be easily located in a
file this size. Rename it to i915_drm_driver.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index bdaa3ded5cc5..0416cff1a070 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -91,7 +91,7 @@
 #include "intel_region_ttm.h"
 #include "vlv_suspend.h"
 
-static const struct drm_driver driver;
+static const struct drm_driver i915_drm_driver;
 
 static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
 {
@@ -768,7 +768,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct intel_device_info *device_info;
 	struct drm_i915_private *i915;
 
-	i915 = devm_drm_dev_alloc(&pdev->dev, &driver,
+	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
 				  struct drm_i915_private, drm);
 	if (IS_ERR(i915))
 		return i915;
@@ -1779,7 +1779,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_GEM_VM_DESTROY, i915_gem_vm_destroy_ioctl, DRM_RENDER_ALLOW),
 };
 
-static const struct drm_driver driver = {
+static const struct drm_driver i915_drm_driver = {
 	/* Don't use MTRRs here; the Xserver or userspace app should
 	 * deal with them for Intel hardware.
 	 */
-- 
2.30.2

