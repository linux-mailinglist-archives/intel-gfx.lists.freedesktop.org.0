Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9422939758C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 16:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEF06EA80;
	Tue,  1 Jun 2021 14:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A766EA80
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 14:37:21 +0000 (UTC)
IronPort-SDR: kDzCnK60zstCtHclgJDn3UdU4WfOzYYAKXLtAj27IZx6H/cdKfOK4qKXAdpYSkpIKh7ov7aHzu
 fuGD6xInSB8w==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="289179090"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="289179090"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:37:16 -0700
IronPort-SDR: Z4x05s+R3wTNeCiK9nNcyFozOGRDBDclv+s+jc9ew9MDB6982ZekRGeK4MwPu4wGrjo0a/4lsJ
 mjX0RoHR+Scw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="467076145"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jun 2021 07:37:14 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Jun 2021 19:58:14 +0530
Message-Id: <1622557694-9777-1-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] [RFC] drm/vgem: Fix the pitch to be 64 byte
 aligned for Intel platforms
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

User space like igt/kms_prime use vgem_gem_dumb_create
before reaching i915_gem_dumb_create (which has 64 byte alignment done).
For panel resolutions like 1366x768, the pitch calculated by vgem
is not 64 byte aligned. This results in frame buffer not being
created by intel_framebuffer_init.

Test: igt/kms_prime with panel resolution 1366x768

Change-Id: If68914421b1a9432a73af96c8b426045772629eb
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/vgem/vgem_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index fa54a6d1403d..48535c88aa27 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -215,7 +215,7 @@ static int vgem_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
 	struct drm_gem_object *gem_object;
 	u64 pitch, size;
 
-	pitch = args->width * DIV_ROUND_UP(args->bpp, 8);
+	pitch = ALIGN(args->width * DIV_ROUND_UP(args->bpp, 8), 64);
 	size = args->height * pitch;
 	if (size == 0)
 		return -EINVAL;
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
