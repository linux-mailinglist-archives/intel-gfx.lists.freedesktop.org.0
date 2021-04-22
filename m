Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FA3368486
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 18:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240556E3F5;
	Thu, 22 Apr 2021 16:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D549E6E3E3;
 Thu, 22 Apr 2021 16:13:36 +0000 (UTC)
Received: from 1-171-214-192.dynamic-ip.hinet.net ([1.171.214.192]
 helo=localhost) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>)
 id 1lZbxD-0001U9-29; Thu, 22 Apr 2021 16:13:24 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, ville.syrjala@linux.intel.com
Date: Fri, 23 Apr 2021 00:13:06 +0800
Message-Id: <20210422161316.194620-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Invoke BXT _DSM to enable MUX on HP
 Workstation laptops
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Takashi Iwai <tiwai@suse.de>, Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On HP Fury G7 Workstations, graphics output is re-routed from Intel GFX
to discrete GFX after S3. This is not desirable, because userspace will
treat connected display as a new one, losing display settings.

The expected behavior is to let discrete GFX drives all external
displays.

The platform in question uses ACPI method \_SB.PCI0.HGME to enable MUX.
The method is inside the BXT _DSM, so add the _DSM and call it
accordingly.

I also tested some MUX-less and iGPU only laptops with the BXT _DSM, no
regression was found.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3113
References: https://lore.kernel.org/intel-gfx/1460040732-31417-4-git-send-email-animesh.manna@intel.com/
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_acpi.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_acpi.h |  2 ++
 drivers/gpu/drm/i915/i915_drv.c           |  5 +++++
 3 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index 833d0c1be4f1..c7b57c22dce3 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -14,11 +14,16 @@
 
 #define INTEL_DSM_REVISION_ID 1 /* For Calpella anyway... */
 #define INTEL_DSM_FN_PLATFORM_MUX_INFO 1 /* No args */
+#define INTEL_DSM_FN_PLATFORM_BXT_MUX_INFO 0 /* No args */
 
 static const guid_t intel_dsm_guid =
 	GUID_INIT(0x7ed873d3, 0xc2d0, 0x4e4f,
 		  0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
 
+static const guid_t intel_bxt_dsm_guid =
+	GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
+		  0x9d, 0x15, 0xc7, 0x1f, 0xba, 0xda, 0xe4, 0x14);
+
 static char *intel_dsm_port_name(u8 id)
 {
 	switch (id) {
@@ -176,6 +181,18 @@ void intel_unregister_dsm_handler(void)
 {
 }
 
+void intel_bxt_dsm_detect(struct pci_dev *pdev)
+{
+	acpi_handle dhandle;
+
+	dhandle = ACPI_HANDLE(&pdev->dev);
+	if (!dhandle)
+		return;
+
+	acpi_evaluate_dsm(dhandle, &intel_bxt_dsm_guid, INTEL_DSM_REVISION_ID,
+			  INTEL_DSM_FN_PLATFORM_BXT_MUX_INFO, NULL);
+}
+
 /*
  * ACPI Specification, Revision 5.0, Appendix B.3.2 _DOD (Enumerate All Devices
  * Attached to the Display Adapter).
diff --git a/drivers/gpu/drm/i915/display/intel_acpi.h b/drivers/gpu/drm/i915/display/intel_acpi.h
index e8b068661d22..0dd456335bd0 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.h
+++ b/drivers/gpu/drm/i915/display/intel_acpi.h
@@ -11,10 +11,12 @@ struct drm_i915_private;
 #ifdef CONFIG_ACPI
 void intel_register_dsm_handler(void);
 void intel_unregister_dsm_handler(void);
+void intel_bxt_dsm_detect(struct pci_dev *pdev);
 void intel_acpi_device_id_update(struct drm_i915_private *i915);
 #else
 static inline void intel_register_dsm_handler(void) { return; }
 static inline void intel_unregister_dsm_handler(void) { return; }
+static inline void intel_bxt_dsm_detect(struct pci_dev *pdev) { return; }
 static inline
 void intel_acpi_device_id_update(struct drm_i915_private *i915) { return; }
 #endif /* CONFIG_ACPI */
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 785dcf20c77b..57b12068aab4 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -853,6 +853,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto out_cleanup_gem;
 
+	intel_bxt_dsm_detect(pdev);
+
 	i915_driver_register(i915);
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -1215,6 +1217,7 @@ int i915_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state)
 static int i915_drm_resume(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
@@ -1271,6 +1274,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_gvt_resume(dev_priv);
 
+	intel_bxt_dsm_detect(pdev);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return 0;
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
