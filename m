Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4613033CC4B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 04:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265AE89BDB;
	Tue, 16 Mar 2021 03:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E284989BDB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 03:49:12 +0000 (UTC)
IronPort-SDR: ZW2oqtfq8MWPMxgEk6Pm0NAD2JTDhKTYOVmZZYB9YZsa0h74pDptPj+vpVu35zsO9yNiZZUESm
 2EhtB4OVyC0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="185834262"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="185834262"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 20:49:12 -0700
IronPort-SDR: GHTdu9e67KpVXDj+6Ign+4r1cprJvgruzUPg0udujA+SkWvUuRclp2ij/X6bZSvi6KrULuYEKR
 X2QbwyTUnB2A==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="405401919"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 20:49:12 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Mar 2021 20:49:07 -0700
Message-Id: <256371051c7c0ee0628c2f374e7c495c3ffe14c0.1615865509.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1615865509.git.ashutosh.dixit@intel.com>
References: <cover.1615865509.git.ashutosh.dixit@intel.com>
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
index b2e3b5cfccb4..fde3bfa8c509 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -362,6 +362,18 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
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
@@ -378,6 +390,9 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	if (!gem_has_pread_pwrite(dev))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
@@ -679,6 +694,9 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
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
