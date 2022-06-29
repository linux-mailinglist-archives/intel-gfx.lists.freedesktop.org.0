Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF980560A09
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 21:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB41F10EC0E;
	Wed, 29 Jun 2022 19:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C3C10E102;
 Wed, 29 Jun 2022 19:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656529867; x=1688065867;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jfAmqb1dthI7paSz0YGOo7/6U7hEbwBWAqRUCGjchtk=;
 b=Ea0duXJOQ8GTwtmyuUeis2fOmicVUV3E1kSsysv4BD4lH+faUfwlNR7z
 kQMeUdWBgrLk3T7zNqnE/6rQKgTI0jyA6/HIeB70tLYLW7vVMl8an/6LC
 sKN/F7SL4t5VrREeU9GmTAc9NjD/7Few2oY2iciMBY7nrpgkKYCsUyHq9
 DGeCbcevAiHxDvLYQbXehFuyXMNAHmBanzqA2we7l3Gs79GGjMxepq8Ly
 TJEcmdhjfPQn8qQ/7ZfsriMO/z5riRTdvEXqK+WCcFw1bjPUl7U1AUtNX
 HmCfbxqbRsOcbPe6cf7OzcCxd2KMJsLdk3jUsX806kVBHO7MwPMQZNRhs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368439052"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368439052"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:11 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733297096"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 29 Jun 2022 20:06:50 +0100
Message-Id: <20220629190658.395463-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/9] lib/i915_drm_local: Add
 I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For now dump into i915_drm_local.h. Once the uapi on the kernel side is
merged, and is part of drm-next, we can sync the kernel headers and
remove this.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 lib/i915/i915_drm_local.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/lib/i915/i915_drm_local.h b/lib/i915/i915_drm_local.h
index 9a2273c4..ac35abf6 100644
--- a/lib/i915/i915_drm_local.h
+++ b/lib/i915/i915_drm_local.h
@@ -23,6 +23,27 @@ extern "C" {
 
 #define DRM_I915_QUERY_GEOMETRY_SUBSLICES      6
 
+/*
+ * Signal to the kernel that the object will need to be accessed via
+ * the CPU.
+ *
+ * Only valid when placing objects in I915_MEMORY_CLASS_DEVICE, and only
+ * strictly required on platforms where only some of the device memory
+ * is directly visible or mappable through the CPU, like on DG2+.
+ *
+ * One of the placements MUST also be I915_MEMORY_CLASS_SYSTEM, to
+ * ensure we can always spill the allocation to system memory, if we
+ * can't place the object in the mappable part of
+ * I915_MEMORY_CLASS_DEVICE.
+ *
+ * Without this hint, the kernel will assume that non-mappable
+ * I915_MEMORY_CLASS_DEVICE is preferred for this object. Note that the
+ * kernel can still migrate the object to the mappable part, as a last
+ * resort, if userspace ever CPU faults this object, but this might be
+ * expensive, and so ideally should be avoided.
+ */
+#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1 << 0)
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.36.1

