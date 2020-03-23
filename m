Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C939B18F752
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80B36E183;
	Mon, 23 Mar 2020 14:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6EE66E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:09 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id 31so11416028wrs.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UGjOwzYBbj9SFwVJrRl6g/6jOkQ/m3D9pJmLjpiNGc4=;
 b=f5+Pbu2qrn/SzWePyroU/gqt1BJ3By0saE4JAQAH5NNux6Gjv8yDQMBrNOtIadMLyo
 4hJQD/eoY/S/UI0j2HBgTVvzDrjXsxclHaXoI7i8vDELtxLWkhBo3w8jIk8znF3lGBtb
 Zxxqa18FQYIzBYigGAbQ5aNqyizU7colux5jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UGjOwzYBbj9SFwVJrRl6g/6jOkQ/m3D9pJmLjpiNGc4=;
 b=OLETec0axA0PLAp2ZwGAnvbMAg12OeHPqISjQ6Dg8zmglO1wTaUO5bpbyrIlXsVIzF
 pzpvQMl/0VoncXBE+twE/yMJ9i0X7SM6av8dmak6u9Eq62L5ZWCGhFaAgHPg076/MyhW
 BLVUAWHCiT74I4TsOsJpI1J0wY8FCV5BjnIw98l+0P0Hrmu8w2iSoyZpGNReWJNdeasM
 kO56XKYlhDml9x15wrqFjpYGiCm7uQ1AcNstQ8eDS6cChIhLrOurK+63sZrbFJMh137W
 rIYDW/9g/o9xre0BXNrchkr/FUM6P3WLBCznmdn+nYWta22t4mUAvKD6+1/pRK0UfHnx
 4VtQ==
X-Gm-Message-State: ANhLgQ2UeAIC2jQgg+etOP5p/2p9RMexstk/fFbsjSV58Pqep9zcaUfL
 qYCulJo29SedmTpYN5pxldIKSQ==
X-Google-Smtp-Source: ADFU+vu7m3xEctxAjz+1FtCJIG0yDii8wNJdy4kp2q2h/vTEf7ozdjz0BdkGHBPE8T64l3NeK/jmiw==
X-Received: by 2002:adf:a387:: with SMTP id l7mr30237213wrb.250.1584975008329; 
 Mon, 23 Mar 2020 07:50:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:07 +0100
Message-Id: <20200323144950.3018436-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/51] drm/i915: Use drmm_add_final_kfree
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

The mock device in the selftests needed it's pci_device split
up from the drm_device. In the future we could simplify this again
by allocating the pci_device as a managed allocation too.

v2: I overlooked that i915_driver_destroy is also called in the
unwind code of the error path. There we need a drm_dev_put.
Similar for the mock object.

Now the problem with that is that the drm_driver->release callbacks
for both the real driver and the mock one assume everything has been
set up. Hence going through that path for a partially set up driver
will result in issues. Quickest fix is to disable the ->release() hook
until the driver is fully initialized, and keep the onion unwinding.
Long term would be cleanest to move everything over to drmm_ release
actions, but that's a lot of work for a big driver like i915. Plus
more core work needed first anyway.

v3: Fix i915_drm pointer wrangling in mock_gem_device. Also switch
over to start using drm_dev_put() to clean up even on the error path.
Aside I think the current error path is leaking the allocation.

v4: more fixes for intel-gfx-ci, some if it damage from v3 :-/

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
---
 drivers/gpu/drm/i915/i915_drv.c               | 10 ++++++-
 drivers/gpu/drm/i915/i915_drv.h               |  3 ++
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 30 ++++++++++++++-----
 3 files changed, 35 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 4792051e9e2e..481313536b5a 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -43,6 +43,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_ioctl.h>
 #include <drm/drm_irq.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
 #include "display/intel_acpi.h"
@@ -890,6 +891,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return ERR_PTR(err);
 	}
 
+	drmm_add_final_kfree(&i915->drm, i915);
+
 	i915->drm.pdev = pdev;
 	pci_set_drvdata(pdev, i915);
 
@@ -908,7 +911,6 @@ static void i915_driver_destroy(struct drm_i915_private *i915)
 	struct pci_dev *pdev = i915->drm.pdev;
 
 	drm_dev_fini(&i915->drm);
-	kfree(i915);
 }
 
 /**
@@ -992,6 +994,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	i915_welcome_messages(i915);
 
+	i915->do_release = true;
+
 	return 0;
 
 out_cleanup_irq:
@@ -1012,6 +1016,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 out_fini:
 	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
 	i915_driver_destroy(i915);
+	drm_dev_put(&i915->drm);
 	return ret;
 }
 
@@ -1051,6 +1056,9 @@ static void i915_driver_release(struct drm_device *dev)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 
+	if (!dev_priv->do_release)
+		return;
+
 	disable_rpm_wakeref_asserts(rpm);
 
 	i915_gem_driver_release(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a7ea1d855359..7ae652723ed7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -821,6 +821,9 @@ struct i915_selftest_stash {
 struct drm_i915_private {
 	struct drm_device drm;
 
+	/* FIXME: Device release actions should all be moved to drmm_ */
+	bool do_release;
+
 	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
 	struct intel_driver_caps caps;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 754d0eb6beaa..acf889e4b993 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -25,6 +25,8 @@
 #include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 
+#include <drm/drm_managed.h>
+
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/mock_engine.h"
@@ -55,6 +57,9 @@ static void mock_device_release(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 
+	if (!i915->do_release)
+		goto out;
+
 	mock_device_flush(i915);
 	intel_gt_driver_remove(&i915->gt);
 
@@ -72,7 +77,9 @@ static void mock_device_release(struct drm_device *dev)
 	drm_mode_config_cleanup(&i915->drm);
 
 	drm_dev_fini(&i915->drm);
+out:
 	put_device(&i915->drm.pdev->dev);
+	i915->drm.pdev = NULL;
 }
 
 static struct drm_driver mock_driver = {
@@ -114,9 +121,14 @@ struct drm_i915_private *mock_gem_device(void)
 	struct pci_dev *pdev;
 	int err;
 
-	pdev = kzalloc(sizeof(*pdev) + sizeof(*i915), GFP_KERNEL);
+	pdev = kzalloc(sizeof(*pdev), GFP_KERNEL);
 	if (!pdev)
-		goto err;
+		return NULL;
+	i915 = kzalloc(sizeof(*i915), GFP_KERNEL);
+	if (!i915) {
+		kfree(pdev);
+		return NULL;
+	}
 
 	device_initialize(&pdev->dev);
 	pdev->class = PCI_BASE_CLASS_DISPLAY << 16;
@@ -129,7 +141,6 @@ struct drm_i915_private *mock_gem_device(void)
 	pdev->dev.archdata.iommu = (void *)-1;
 #endif
 
-	i915 = (struct drm_i915_private *)(pdev + 1);
 	pci_set_drvdata(pdev, i915);
 
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
@@ -141,9 +152,13 @@ struct drm_i915_private *mock_gem_device(void)
 	err = drm_dev_init(&i915->drm, &mock_driver, &pdev->dev);
 	if (err) {
 		pr_err("Failed to initialise mock GEM device: err=%d\n", err);
-		goto put_device;
+		put_device(&pdev->dev);
+		kfree(i915);
+
+		return NULL;
 	}
 	i915->drm.pdev = pdev;
+	drmm_add_final_kfree(&i915->drm, i915);
 
 	intel_runtime_pm_init_early(&i915->runtime_pm);
 
@@ -188,6 +203,8 @@ struct drm_i915_private *mock_gem_device(void)
 	__clear_bit(I915_WEDGED, &i915->gt.reset.flags);
 	intel_engines_driver_register(i915);
 
+	i915->do_release = true;
+
 	return i915;
 
 err_context:
@@ -199,8 +216,7 @@ struct drm_i915_private *mock_gem_device(void)
 	intel_memory_regions_driver_release(i915);
 	drm_mode_config_cleanup(&i915->drm);
 	drm_dev_fini(&i915->drm);
-put_device:
-	put_device(&pdev->dev);
-err:
+	drm_dev_put(&i915->drm);
+
 	return NULL;
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
