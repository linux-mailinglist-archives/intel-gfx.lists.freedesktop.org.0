Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ACB8C65FF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7BDE10E68D;
	Wed, 15 May 2024 11:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a8S6oXzR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6B1E10E68D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774224; x=1747310224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Mjbg/3OQHyrPnIGip26Uya3NELH7J1xXRfTUMiy3bw=;
 b=a8S6oXzRPHlyvWEbSVDHx3KtIdIaSHk/JVt6dX0qFsMbEdzijW+K8mIb
 n7wEpwoSM9ZAwpCyQ6CBkuCEnWJB4GA7NWKRRmOaQ6NbEo8W+obrhtFjY
 GC6GdoZv4bmdbBTQyvfhzTZCDywHIM4rBEfyribJYbMa/a2ycuEdkwwym
 yG1xhOZuAjVpLh9BTLSexYJT90Lj5FvgtCDdkzN2666hx78XoJ2CQc2O5
 wNOZ6CpluUPDbTOkFA8ql9EH0UfVt1w8//SRDLfMabfSXFua6tDD4MTWx
 ghp44or6DdgWoKkp8aJzAgJA1tEmy7YgvLjUnT6OeaFxCLz1BWlxZzbzA w==;
X-CSE-ConnectionGUID: qKJz9PK7TPSpkWoR/DFqCQ==
X-CSE-MsgGUID: fIqBSY/bT+y7x7HeaCDi3A==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15604783"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="15604783"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:04 -0700
X-CSE-ConnectionGUID: xUz6/RMzQJKlhXW2xGBfnw==
X-CSE-MsgGUID: BBTj2s8pQ02wgfnTi297LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="30962296"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 2/8] drm/i915: pass dev_priv explicitly to CURBASE
Date: Wed, 15 May 2024 14:56:42 +0300
Message-Id: <e552df69a4e6a3dbd562ba8c442d0219cda3bfd0.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the CURBASE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_cursor_regs.h | 2 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c            | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 6 +++---
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 31cb614b6ba8..573bbdec3e3d 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -296,7 +296,7 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 	    plane->cursor.size != size ||
 	    plane->cursor.cntl != cntl) {
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), 0);
-		intel_de_write_fw(dev_priv, CURBASE(PIPE_A), base);
+		intel_de_write_fw(dev_priv, CURBASE(dev_priv, PIPE_A), base);
 		intel_de_write_fw(dev_priv, CURSIZE(PIPE_A), size);
 		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), cntl);
@@ -648,14 +648,14 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 					  fbc_ctl);
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, pipe), cntl);
 		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
-		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
+		intel_de_write_fw(dev_priv, CURBASE(dev_priv, pipe), base);
 
 		plane->cursor.base = base;
 		plane->cursor.size = fbc_ctl;
 		plane->cursor.cntl = cntl;
 	} else {
 		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
-		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
+		intel_de_write_fw(dev_priv, CURBASE(dev_priv, pipe), base);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index 5f522a4ecc2e..4a7e27f0c3c1 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -67,7 +67,7 @@
 #define _CURBPOS_IVB		0x71088
 
 #define CURCNTR(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
-#define CURBASE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
+#define CURBASE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
 #define CURPOS(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
 #define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
 #define CURSIZE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 6e226ea1afa2..60f368affb6c 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -373,7 +373,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 		gvt_dbg_core("alpha_plane=0x%x, alpha_force=0x%x\n",
 			alpha_plane, alpha_force);
 
-	plane->base = vgpu_vreg_t(vgpu, CURBASE(pipe)) & I915_GTT_PAGE_MASK;
+	plane->base = vgpu_vreg_t(vgpu, CURBASE(dev_priv, pipe)) & I915_GTT_PAGE_MASK;
 	if (!vgpu_gmadr_is_valid(vgpu, plane->base))
 		return  -EINVAL;
 
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 18deaf416b7e..f562172995a6 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -151,9 +151,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(CURPOS(PIPE_A));
 	MMIO_D(CURPOS(PIPE_B));
 	MMIO_D(CURPOS(PIPE_C));
-	MMIO_D(CURBASE(PIPE_A));
-	MMIO_D(CURBASE(PIPE_B));
-	MMIO_D(CURBASE(PIPE_C));
+	MMIO_D(CURBASE(dev_priv, PIPE_A));
+	MMIO_D(CURBASE(dev_priv, PIPE_B));
+	MMIO_D(CURBASE(dev_priv, PIPE_C));
 	MMIO_D(CUR_FBC_CTL(PIPE_A));
 	MMIO_D(CUR_FBC_CTL(PIPE_B));
 	MMIO_D(CUR_FBC_CTL(PIPE_C));
-- 
2.39.2

