Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02168534321
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78FA110EC45;
	Wed, 25 May 2022 18:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734A610EC4E;
 Wed, 25 May 2022 18:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653503885; x=1685039885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dEoHLI4g1sZEcvGOE8LAOndC0SH+F5ck9wIctTiiq5s=;
 b=UubxCu90VTdekPJZnEub/VFRk6hh9CHfUGJ4PI18vCKNKkYxqCJRC68r
 fkuiPSxjkYAqJfIUm1A04wHzALOJG6BQwQvP5Q547uCXQXtMGGj6Tca7+
 nC0Jvs5GhcCjM3BFMRVIK0K6n6rHA9RXFShg06pjfyMln1sxIIfoZxXyz
 IjYqIcLjlqGF6MzwKw9CnnrznqyldF01DW2jEic8r/aLg89fcy5oYE3A5
 dtr+IsK/RY3u3lC81/v6mXUIJ/vScp/y+RkyRIWoZeGiJjMxCqojDzoNr
 P0Azmg4CpafTKbbKqHiCr4KzXwv3rR93xMLe5oZf65H7mNw/Bv+9e5cNH g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="336954760"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336954760"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="526989500"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 25 May 2022 19:36:54 +0100
Message-Id: <20220525183702.490989-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220525183702.490989-1-matthew.auld@intel.com>
References: <20220525183702.490989-1-matthew.auld@intel.com>
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For now dump into i915_drm_local.h. Once the uapi on the kernel side is
merged, and is part of drm-next, we can sync the kernel headers and
remove this.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
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
2.34.3

