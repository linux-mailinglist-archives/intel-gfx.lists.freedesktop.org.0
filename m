Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72435B9790E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 23:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064E910E32F;
	Tue, 23 Sep 2025 21:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D783fcOF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D05910E5DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 21:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758662615; x=1790198615;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+H74UpP5BuXl9A6XjnsP4WdadYr43gVJOgdDbQ4yEoY=;
 b=D783fcOF/BIGWbF23SAd6sORBGIb2sScMT8Yer8/EI1OVgCcB3PJZruy
 UQpSFyY7IVVRbzyeqTEDzDK/Hr1lou4AnLcpG7H4rUTj0PZjPHSR3YSyA
 X6q3z3Wh6Q4BCosEAUhZedGNyRfdxmee+jjGDmcG+RU7FND/UArLNMBrz
 5m7I2OgY5kzUD14kqicIFCk8PCs9F0kK1Hse3Y10W3PwCvTqO3roeediy
 ojfBniV27Qjy3I0bW6tq9V5nF8+Y2Ozc1hBWxwHOtHB8dSFnp36SsWdCs
 zquoCXMMsiFlA772ApSEAbd0klJKuOilzMHXJNKzXGVGY4S4gd1aGT3jH Q==;
X-CSE-ConnectionGUID: 35dW4yd2RXe3mF+KvkMzSg==
X-CSE-MsgGUID: pDgpg+bPTYS9sxhkAm0jAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61005020"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61005020"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 14:23:34 -0700
X-CSE-ConnectionGUID: vQ1SjeoBTHmqXjZGGxIsFw==
X-CSE-MsgGUID: gqLEfHyyRnS3YAzByarHOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,289,1751266800"; d="scan'208";a="181173313"
Received: from dut4412lnl.fm.intel.com ([10.105.8.90])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 14:23:34 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 andi.shyti@linux.intel.com, zhenyuw.linux@gmail.com
Subject: [PATCH v3] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error handling
Date: Tue, 23 Sep 2025 21:23:33 +0000
Message-ID: <20250923212332.112137-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add error handling for the following VFIO_DEVICE_SET_IRQS cases with
respect to the hdr struct:

- More than one VFIO_IRQ_DATA_TYPE_MASK flag is set in hdr.flags
- More than one VFIO_IRQ_ACTION_TYPE_MASK flag is set in hdr.flags
- hdr.count is not specified

Note that since hdr.count != 0, data_size != 0 is guaranteed unless
vfio_set_irqs_validate_and_prepare fails and returns an error.  So, we
no longer need to check data_size before running memdup_user because
checking the return value of the function is sufficient.

v2: Use correct name for mask

v3: Use is_power_of_2 over hweight32 as it's more efficient (Andi)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 69830a5c49d3..cb865adc28ca 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1361,21 +1361,27 @@ static long intel_vgpu_ioctl(struct vfio_device *vfio_dev, unsigned int cmd,
 		if (copy_from_user(&hdr, (void __user *)arg, minsz))
 			return -EFAULT;
 
+		if (!is_power_of_2(hdr.flags & VFIO_IRQ_SET_DATA_TYPE_MASK) ||
+		    !is_power_of_2(hdr.flags & VFIO_IRQ_SET_ACTION_TYPE_MASK))
+			return -EINVAL;
+
 		if (!(hdr.flags & VFIO_IRQ_SET_DATA_NONE)) {
 			int max = intel_vgpu_get_irq_count(vgpu, hdr.index);
 
+			if (!hdr.count)
+				return -EINVAL;
+
 			ret = vfio_set_irqs_validate_and_prepare(&hdr, max,
 						VFIO_PCI_NUM_IRQS, &data_size);
 			if (ret) {
 				gvt_vgpu_err("intel:vfio_set_irqs_validate_and_prepare failed\n");
 				return -EINVAL;
 			}
-			if (data_size) {
-				data = memdup_user((void __user *)(arg + minsz),
-						   data_size);
-				if (IS_ERR(data))
-					return PTR_ERR(data);
-			}
+
+			data = memdup_user((void __user *)(arg + minsz),
+					   data_size);
+			if (IS_ERR(data))
+				return PTR_ERR(data);
 		}
 
 		ret = intel_vgpu_set_irqs(vgpu, hdr.flags, hdr.index,
-- 
2.43.0

