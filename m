Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A520711C66E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 08:35:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC2F6EC6D;
	Thu, 12 Dec 2019 07:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A476EC6D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:35:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 23:35:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="413787299"
Received: from linux.fm.intel.com ([10.1.27.42])
 by fmsmga005.fm.intel.com with ESMTP; 11 Dec 2019 23:35:22 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 23:35:21 -0800
Message-Id: <20191212073522.27785-1-venkata.s.dhanalakota@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Register sysctl path globally
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
Cc: chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We do not require to register the sysctl paths per instance,
so making registration global.

v2: make sysctl path register and unregister function driver
    specific (Tvrtko and Lucas).

Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c        |  6 ++++++
 drivers/gpu/drm/i915/i915_perf.c       | 19 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_perf.h       |  2 ++
 drivers/gpu/drm/i915/i915_perf_types.h |  1 -
 4 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index bba6b50e6beb..c5a2bb5e87fe 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -30,6 +30,7 @@
 #include "display/intel_fbdev.h"
 
 #include "i915_drv.h"
+#include "i915_perf.h"
 #include "i915_globals.h"
 #include "i915_selftest.h"
 
@@ -1051,6 +1052,10 @@ static int __init i915_init(void)
 		return 0;
 	}
 
+	err = i915_perf_sysctl_register();
+	if (err)
+		return err;
+
 	return pci_register_driver(&i915_pci_driver);
 }
 
@@ -1059,6 +1064,7 @@ static void __exit i915_exit(void)
 	if (!i915_pci_driver.driver.owner)
 		return;
 
+	i915_perf_sysctl_unregister();
 	pci_unregister_driver(&i915_pci_driver);
 	i915_globals_exit();
 }
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 8d2e37949f46..f039beed1771 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -387,6 +387,8 @@ struct i915_oa_config_bo {
 	struct i915_vma *vma;
 };
 
+static struct ctl_table_header *sysctl_header;
+
 static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer);
 
 void i915_oa_config_release(struct kref *ref)
@@ -4345,7 +4347,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 		oa_sample_rate_hard_limit = 1000 *
 			(RUNTIME_INFO(i915)->cs_timestamp_frequency_khz / 2);
-		perf->sysctl_header = register_sysctl_table(dev_root);
 
 		mutex_init(&perf->metrics_lock);
 		idr_init(&perf->metrics_idr);
@@ -4381,6 +4382,20 @@ static int destroy_config(int id, void *p, void *data)
 	return 0;
 }
 
+int i915_perf_sysctl_register(void)
+{
+	sysctl_header = register_sysctl_table(dev_root);
+	if (!sysctl_header)
+		return -ENOMEM;
+
+	return 0;
+}
+
+void i915_perf_sysctl_unregister(void)
+{
+	unregister_sysctl_table(sysctl_header);
+}
+
 /**
  * i915_perf_fini - Counter part to i915_perf_init()
  * @i915: i915 device instance
@@ -4395,8 +4410,6 @@ void i915_perf_fini(struct drm_i915_private *i915)
 	idr_for_each(&perf->metrics_idr, destroy_config, perf);
 	idr_destroy(&perf->metrics_idr);
 
-	unregister_sysctl_table(perf->sysctl_header);
-
 	memset(&perf->ops, 0, sizeof(perf->ops));
 	perf->i915 = NULL;
 }
diff --git a/drivers/gpu/drm/i915/i915_perf.h b/drivers/gpu/drm/i915/i915_perf.h
index 4ceebce72060..1d1329e5af3a 100644
--- a/drivers/gpu/drm/i915/i915_perf.h
+++ b/drivers/gpu/drm/i915/i915_perf.h
@@ -23,6 +23,8 @@ void i915_perf_fini(struct drm_i915_private *i915);
 void i915_perf_register(struct drm_i915_private *i915);
 void i915_perf_unregister(struct drm_i915_private *i915);
 int i915_perf_ioctl_version(void);
+int i915_perf_sysctl_register(void);
+void i915_perf_sysctl_unregister(void);
 
 int i915_perf_open_ioctl(struct drm_device *dev, void *data,
 			 struct drm_file *file);
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 74ddc20a0d37..45e581455f5d 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -380,7 +380,6 @@ struct i915_perf {
 	struct drm_i915_private *i915;
 
 	struct kobject *metrics_kobj;
-	struct ctl_table_header *sysctl_header;
 
 	/*
 	 * Lock associated with adding/modifying/removing OA configs
-- 
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
