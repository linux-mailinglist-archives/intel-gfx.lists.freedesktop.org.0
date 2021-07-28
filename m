Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CD63D981D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:04:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B82389F08;
	Wed, 28 Jul 2021 22:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D227089F08;
 Wed, 28 Jul 2021 22:04:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="210872228"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="210872228"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:04:10 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="437959312"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:04:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 15:03:25 -0700
Message-Id: <20210728220326.1578242-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728220326.1578242-1-lucas.demarchi@intel.com>
References: <20210728220326.1578242-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gt: rename CNL references in
 intel_engine.h
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the removal of CNL, let's consider ICL as the first platform using
that index.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h | 2 +-
 drivers/gpu/drm/i915/i915_drv.h        | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index c2a5640ae055..87579affb952 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -179,7 +179,7 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 
 #define I915_HWS_CSB_BUF0_INDEX		0x10
 #define I915_HWS_CSB_WRITE_INDEX	0x1f
-#define CNL_HWS_CSB_WRITE_INDEX		0x2f
+#define ICL_HWS_CSB_WRITE_INDEX		0x2f
 
 void intel_engine_stop(struct intel_engine_cs *engine);
 void intel_engine_cleanup(struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d22cea642627..65000b57ddb6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1958,8 +1958,8 @@ int remap_io_sg(struct vm_area_struct *vma,
 
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
-	if (GRAPHICS_VER(i915) >= 10)
-		return CNL_HWS_CSB_WRITE_INDEX;
+	if (GRAPHICS_VER(i915) >= 11)
+		return ICL_HWS_CSB_WRITE_INDEX;
 	else
 		return I915_HWS_CSB_WRITE_INDEX;
 }
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
