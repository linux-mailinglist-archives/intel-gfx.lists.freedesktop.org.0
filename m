Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3B92FF574
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 21:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D6F16E134;
	Thu, 21 Jan 2021 20:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2754C6E160
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 20:09:27 +0000 (UTC)
IronPort-SDR: s75t+9u/V9ex5C+o2Q4xKMsNt14bHvpQ+9inSaUeIundJgAdBAIEohEp8uFVuWi3cvjIFpftaD
 UKaMZzUvRdeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="159114858"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="159114858"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 12:09:26 -0800
IronPort-SDR: kPyP3N5+8q1j4eD4vdh1QCdWxRaGbew5rCfacMtQrzVacIyfJG76F30X6bHLtXK72PyS0WFTiz
 XeY4JYN77iCQ==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="427491032"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 12:09:25 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 12:09:22 -0800
Message-Id: <f73c1e911c4ba52d4cecc28997821e10341c4085.1611258840.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611258840.git.ashutosh.dixit@intel.com>
References: <cover.1611258840.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/1] drm/i915: Disable pread/pwrite ioctl's for IGT
 testing
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FOR CI ONLY. PLEASE DON'T REVIEW.

The upstream guidance at this time is to start phasing out
pread/pwrite ioctl's, the rationale being (a) the functionality can be
done entirely in userspace with a combination of mmap + memcpy, and
(b) no existing user mode clients actually use the pread/pwrite
interface.

The plan is to phase out these ioctls for _new_ Gen12+ platforms. However,
since this patch is actually for CI and the real changes which need to be
validated are in IGT, in this patch we are disabling pread/pwrite for
existing Gen11 and Gen12 platforms. This will be changed once IGT changes
are validated and finalized.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 9b04dff5eb32..1c799d0006c8 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -366,6 +366,18 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 	return ret;
 }
 
+static bool gem_has_pread_pwrite(struct drm_device *dev)
+{
+	/*
+	 * FIXME: Finally we only want to enable this for _new_ Gen12+
+	 * platforms but for now for CI purposes declare pread/pwrite are
+	 * unavailable for all Gen11 and Gen12 platforms so that the IGT
+	 * changes which handle absence of pread/pwrite ioctl's can be
+	 * validated.
+	*/
+	return INTEL_GEN(to_i915(dev)) < 11;
+}
+
 /**
  * Reads data from the object referenced by handle.
  * @dev: drm device pointer
@@ -382,6 +394,9 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	if (!gem_has_pread_pwrite(dev))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
@@ -687,6 +702,9 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	if (!gem_has_pread_pwrite(dev))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
