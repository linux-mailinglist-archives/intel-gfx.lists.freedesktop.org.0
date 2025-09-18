Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365CAB872C4
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 23:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D47710E1B2;
	Thu, 18 Sep 2025 21:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OtXNOsur";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0730510E1B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Sep 2025 21:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758231917; x=1789767917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CWA34Cvr7Pexi0GVS+3HV6E9c/Gkok3Km+Kv2y2Od5Q=;
 b=OtXNOsur/20UGtrCNZ+RE17AUS4CBbcdh7adUUktvnPS8rCjzZ8wJRnM
 ypkJTP/D79AU1g9p0eCTaAqANQJ9iDmIP9lZp/HQtwKVgceW3FQnik5bG
 U+FW1CztDpT38Sl2s9rYcHgpkALMxhFgEU+yjr8VxgMbuSB0IB8yUF7bo
 isnjpt5S6YSGG6rLc+yg7sCRQM9k2d/UJdqCK1zkpvPtPURniCQgkv6XS
 3f4wsIoxWqJ5OpK7aS5VxWs7kzGOkUithwiZykdmCnSSgGyw/7S1ftmhS
 aD4DkJId+/A+j5vWzq/Tml380GJv7FdHhz8ctoABvv2KR1ftfnF6Ya6CD Q==;
X-CSE-ConnectionGUID: b7Nr8z/eSJCMd6w5fjuQzA==
X-CSE-MsgGUID: Xj3msW7TTVeDltrs5t3o9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60523852"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60523852"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:45:16 -0700
X-CSE-ConnectionGUID: eyWeGADZTaa8jTSHslzYqg==
X-CSE-MsgGUID: fLqBjaN7Rrqz8xJK8XuC5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="180946707"
Received: from dut4412lnl.fm.intel.com ([10.105.8.90])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:45:15 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 andi.shyti@linux.intel.com
Subject: [PATCH] drm/i915/gvt: Simplify case switch in intel_vgpu_ioctl
Date: Thu, 18 Sep 2025 21:45:16 +0000
Message-ID: <20250918214515.66926-2-jonathan.cavitt@intel.com>
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

We do not need a case switch to check cap_type_id in intel_vgpu_ioctl
for various reasons (it's impossible to hit the default case in the
current code, there's only one valid case to check, the error handling
code overlaps in both cases, etc.).  Simplify the case switch into a
single if statement.  This has the additional effect of simplifying the
error handling code.

Note that it is still currently impossible for
'if (cap_type_id == VFIO_REGION_INFO_CAP_SPARSE_MMAP)'
to fail, but we should still guard against the possibility of this
changing in the future.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 69830a5c49d3..70af86d46fe8 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1279,20 +1279,15 @@ static long intel_vgpu_ioctl(struct vfio_device *vfio_dev, unsigned int cmd,
 		}
 
 		if ((info.flags & VFIO_REGION_INFO_FLAG_CAPS) && sparse) {
-			switch (cap_type_id) {
-			case VFIO_REGION_INFO_CAP_SPARSE_MMAP:
+			ret = -EINVAL;
+			if (cap_type_id == VFIO_REGION_INFO_CAP_SPARSE_MMAP)
 				ret = vfio_info_add_capability(&caps,
 					&sparse->header,
 					struct_size(sparse, areas,
 						    sparse->nr_areas));
-				if (ret) {
-					kfree(sparse);
-					return ret;
-				}
-				break;
-			default:
+			if (ret) {
 				kfree(sparse);
-				return -EINVAL;
+				return ret;
 			}
 		}
 
-- 
2.43.0

