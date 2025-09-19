Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBAEB8B41A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 22:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A3110EA97;
	Fri, 19 Sep 2025 20:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ErV8gmAZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2BA10EA97
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 20:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758315466; x=1789851466;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f1x5MigbdyUz6sDyUkCHX1avhhvAbkcq20sgk4ibd1M=;
 b=ErV8gmAZ6k6ZsBh5wBBJZGblXctE1thqWvW7xqibgJNXPw8fiwAq8ppQ
 jDPBo0IKOwx5cMh2GSB41y0bTZYn5hpQuGlQav5Bwb7+zuJJxisIHCzx5
 sbtGNPVXrr+U1eD+YGsjq/6OyJ+Jb1YXFD29TGJgR6OQ9yMjbkJ/oQDbl
 F5eW2wCLPxYrQx2LVSNBefiQJhbRbZa2b5WJwAidwpkuZip835B/wcptp
 LwiVf8/451kMajOozGOpXmRgqYwxz4gliaXZiJV56gSejtWJCKhMC5/gA
 +egVer/9MDDxhNmolXAuj4+VdC/zx8eMnT49/6QfUkmbeoiIsvqDPf5cv Q==;
X-CSE-ConnectionGUID: ICdP9JvQQJaNnYBOLqUE1g==
X-CSE-MsgGUID: Ziibps+QRomLTufQw+9Pyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="71346606"
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="71346606"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:57:42 -0700
X-CSE-ConnectionGUID: w/LR8FjkSEy2SYxqUJAmhg==
X-CSE-MsgGUID: XCapiv5SQo2uFb5UmuOGEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,279,1751266800"; d="scan'208";a="175048469"
Received: from dut4412lnl.fm.intel.com ([10.105.8.90])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:57:42 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 andi.shyti@linux.intel.com
Subject: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error handling
Date: Fri, 19 Sep 2025 20:57:41 +0000
Message-ID: <20250919205740.77847-2-jonathan.cavitt@intel.com>
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

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 69830a5c49d3..a980269070d8 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1361,21 +1361,27 @@ static long intel_vgpu_ioctl(struct vfio_device *vfio_dev, unsigned int cmd,
 		if (copy_from_user(&hdr, (void __user *)arg, minsz))
 			return -EFAULT;
 
+		if (hweight32(hdr.flags & VFIO_IRQ_SET_DATA_TYPE_MASK) != 1 ||
+		    hweight32(hdr.flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) != 1)
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

