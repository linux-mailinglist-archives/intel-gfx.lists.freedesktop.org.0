Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A74749D33
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 15:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2711D10E033;
	Thu,  6 Jul 2023 13:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out-7.mta0.migadu.com (out-7.mta0.migadu.com [91.218.175.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B882C10E153
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Jul 2023 18:28:34 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1688322512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3gdqYsSHavNjy6uu6OI5/B6vHhjDXBQp6xohAWX8uZE=;
 b=m25TPTQophaiDUZ//UGt3Os2cQOocfRXNRltUvkgGKUmmO1Z9ZWC0+jbrfZCCmk5ZDhcWG
 RwWTo0rs4bnl6YWCbMPzsuPUmdOIrtmtok5pZW7Bwy9cqQ4Ab13vfqjcUiKXmWEE53TSZU
 DBeEwVD0D5LNY0mxMcaZN1DBsAGHjbk=
From: Sui Jingfeng <sui.jingfeng@linux.dev>
To: Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude Paul <lyude@redhat.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mario Limonciello <mario.limonciello@amd.com>
Date: Mon,  3 Jul 2023 02:27:43 +0800
Message-Id: <20230702182744.755467-6-sui.jingfeng@linux.dev>
In-Reply-To: <20230702182744.755467-1-sui.jingfeng@linux.dev>
References: <20230702182744.755467-1-sui.jingfeng@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Thu, 06 Jul 2023 13:18:28 +0000
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915: Implement the is_boot_device
 callback function
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
Cc: linux-fbdev@vger.kernel.org, Sui Jingfeng <suijingfeng@loongson.cn>,
 kvm@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 dri-devel@lists.freedesktop.org, linux-pci@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sui Jingfeng <suijingfeng@loongson.cn>

This patch add a function to identify if a device is the default boot
selected by the firmware, it require the GPU has firmware framebuffer
driver support (such as efifb). If a specific hardware doesn't have
firmware framebuffer support, then the introduced function will just
return false. But even in this case, it still do no harms.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: "Ville Syrjälä" <ville.syrjala@linux.intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Sui Jingfeng <suijingfeng@loongson.cn>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 31 +++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 98d7d4dffe9f..7a0ba677c932 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -6,6 +6,8 @@
 #include <linux/pci.h>
 #include <linux/vgaarb.h>
 
+#include <drm/drm_aperture.h>
+
 #include <video/vga.h>
 
 #include "soc/intel_gmch.h"
@@ -113,6 +115,32 @@ intel_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
 		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 }
 
+static bool intel_vga_is_default_boot_device(struct pci_dev *pdev)
+{
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+	struct drm_device *drm = &i915->drm;
+	struct i915_gem_mm *mm = &i915->mm;
+	struct intel_memory_region *mr;
+	unsigned int i;
+	bool ret;
+
+	for (i = 0; i < ARRAY_SIZE(mm->regions); i++) {
+		mr = mm->regions[i];
+		if (mr) {
+			ret = drm_aperture_contain_firmware_fb(mr->io_start,
+							       mr->io_size);
+
+			if (ret) {
+				drm_dbg(drm, "%s contains firmware fb\n",
+					mr->name);
+				return true;
+			}
+		}
+	}
+
+	return false;
+}
+
 int intel_vga_register(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
@@ -126,7 +154,8 @@ int intel_vga_register(struct drm_i915_private *i915)
 	 * then we do not take part in VGA arbitration and the
 	 * vga_client_register() fails with -ENODEV.
 	 */
-	ret = vga_client_register(pdev, intel_vga_set_decode, NULL);
+	ret = vga_client_register(pdev, intel_vga_set_decode,
+				  intel_vga_is_default_boot_device);
 	if (ret && ret != -ENODEV)
 		return ret;
 
-- 
2.25.1

