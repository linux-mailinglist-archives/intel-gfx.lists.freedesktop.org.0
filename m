Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB037B8B2D5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 22:15:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9EC10EA83;
	Fri, 19 Sep 2025 20:15:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i611Qf2S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E69410EA83
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 20:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758312915; x=1789848915;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YU+IlZSuin9qmd6yPbAx4ylG2LzIHFA+4a2B3y2a1PA=;
 b=i611Qf2SfFnYYNbRok/FjDg/I037X6Y9+Y70BbQArI9S3cS8DLhBZADv
 itEGCGCx5SIAKHW5R11CkJy2K2B6eXlb1u7mn+ANK63sYNxicdztV1uMG
 Tu8jHLx7HQD5k0kjBQxXCdXmlu2G+G6PnBLnYTqwRIQ+4sZP457UqkwxM
 F/yii1UKt8SueVgVqk4bE0DJGh2mHWt4F9t1AOy8xvsDF05y5eaC5k8lv
 AdWgfOT5IpThCYKJCckoBECDYgTGq2FM917Ge8hDuBiEQFmLJdYXcpDXz
 g5U7xqCXZfWTaaOtMA0IPZ89EN+tsZ4gHv+z6yg5UAeLvvO9FP5d1LAv7 w==;
X-CSE-ConnectionGUID: 4P9BXUGbTUGjv9QWcFB+9g==
X-CSE-MsgGUID: CF9bjbWpQQKmUDNVUkhYbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60819750"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60819750"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:15:15 -0700
X-CSE-ConnectionGUID: m4hMB5oOTTKDirYBIeeFIA==
X-CSE-MsgGUID: AlLfn24bTh2fyIOyGznxwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175841231"
Received: from dut4412lnl.fm.intel.com ([10.105.8.90])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:15:14 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 andi.shyti@linux.intel.com
Subject: [PATCH] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error handling
Date: Fri, 19 Sep 2025 20:15:14 +0000
Message-ID: <20250919201514.73182-2-jonathan.cavitt@intel.com>
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

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 69830a5c49d3..d1c9d43ae12f 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1361,21 +1361,27 @@ static long intel_vgpu_ioctl(struct vfio_device *vfio_dev, unsigned int cmd,
 		if (copy_from_user(&hdr, (void __user *)arg, minsz))
 			return -EFAULT;
 
+		if (hweight32(hdr.flags & VFIO_IRQ_DATA_TYPE_MASK) != 1 ||
+		    hweight32(hdr.flags & VFIO_IRQ_ACTION_TYPE_MASK) != 1)
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

