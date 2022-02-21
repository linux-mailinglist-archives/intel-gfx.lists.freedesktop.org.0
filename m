Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB7B4BDA16
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49AE10E4B2;
	Mon, 21 Feb 2022 14:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3517810E703;
 Mon, 21 Feb 2022 14:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645452778; x=1676988778;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lFGIImgHd6/ff58qxg2a/Fs06PSapnqmi056xJ7TBe0=;
 b=ZLeOrdu0OLhS9enl+Ep55GzvY04bF9frhYViGrCZrNuiD0HGT57w28JZ
 L1/ZkanVTAi6FbWdiaKOX4TimL/PVTFEJ2kCfZngT3volflkrFbps0mF+
 hSrEEldD1vIYP1W3YLsxRN62fVk52kz/WSKcJrS2uYzVNuqsANa45nJHC
 frQ7a3Z1b7NsEK/G4d1s24fGpQ7dw07a0QaSv6QeVdO+p4mf0toe/R/md
 EucN+4wzlR5ced27gwtV1H/Lj1oftTnlw/hek1NlIG9fMNIbJMGnNubV9
 DC4u0NY3vD8sQnuDYjDu17c1MH97gpc4aLmFA1W02kVwZzAQVZJju1ke6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="238931638"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="238931638"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:11:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="683217305"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:11:34 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:10:31 +0000
Message-Id: <20220221141036.2490380-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/6] lib/i915_drm_local: Add
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
 lib/i915/i915_drm_local.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/lib/i915/i915_drm_local.h b/lib/i915/i915_drm_local.h
index 9e82c968..7b5285f3 100644
--- a/lib/i915/i915_drm_local.h
+++ b/lib/i915/i915_drm_local.h
@@ -21,6 +21,33 @@ extern "C" {
  */
 #define I915_ENGINE_CLASS_COMPUTE 4
 
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
+ * Note that buffers that need to be captured with EXEC_OBJECT_CAPTURE,
+ * will need to enable this hint, if the object can also be placed in
+ * I915_MEMORY_CLASS_DEVICE, starting from DG2+. The execbuf call will
+ * throw an error otherwise. This also means that such objects will need
+ * I915_MEMORY_CLASS_SYSTEM set as a possible placement.
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
2.34.1

