Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A994F7741
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 09:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A40010E53C;
	Thu,  7 Apr 2022 07:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18A1110E098;
 Thu,  7 Apr 2022 07:19:53 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id d5so8037852lfj.9;
 Thu, 07 Apr 2022 00:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=giv7RzOtctrCzaFxO8kZBREVJSt9g1Ew5u1RzbIrOAw=;
 b=he36WSdJ7VwyRHGQd0MggX+H/MnFKuhct6EJ06TZyxT7EXrfPa2PiYcrO9+VipuQak
 /wV83pxh0Y+O8kkjMokkxwYZ+rTXBlJyoWAQ2dtrDbWvHAI0tGtqzat3Tn07vifWCLgK
 zFcL0mHm+cfahMLKqMEVGhzgMvZGQ57GvyIS8jwZwpM7q7VRBtK/5olmJpWVn5roSquO
 GyiMMmvZ7izUQ9O4npUsJGoeQJjw2d/L2xu0vFcZjkY+FhguG71IQQBO8X8SjAV+Yvll
 5fa01la8dYxUWZr63HyfnxOnFOtIxL1fVNrPNbe+B7oIL6oEEY8JpEOU90/GVZ806340
 sbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=giv7RzOtctrCzaFxO8kZBREVJSt9g1Ew5u1RzbIrOAw=;
 b=clFNqwniMdpXSzH+xjFFWZ+UKSHaYCkoloOVJklShavAuzLXDfhqlR8mOUXr+UuiVi
 ieW/enlgZfYPG9GTGwHMUHOotiY4UMmw3t0tKfIdCKPx8q/NsBJPE0uXBv0EH8G98bwX
 Q3Em63hvhmtKizIsAVxjMcLO8ja86q92OJZXs0V1YOiIBlG2uB06/HS2ztaR1a3YdULF
 x3F7vW1S49Tzo0dVua305zty4a2dDeVsxBCosw1naJHf0mVAhzyS8tGyCOmyUTqoTWfW
 aNg7mpr9mUbqHhJIZsUKfwbxloWdtXyd+r+nIBRh+WeggQdtZVHekxcLamA2i5BgJThe
 j/IA==
X-Gm-Message-State: AOAM531OC137i7QOAz9mJ2fiMsbVSP7VcJ6mZyp5qVf2c5wRKW+gwqxN
 J0rt4Wj3n0kuUBUpmuoWPjcVndM70pA=
X-Google-Smtp-Source: ABdhPJwuz8C+dhtV1Q8dEi17xvuEY5+oKKine0RjDVUF8gImaRKMDtKI9jS7Hn7CUWlA17sUjKSDgw==
X-Received: by 2002:a05:6512:3da6:b0:44b:1031:29eb with SMTP id
 k38-20020a0565123da600b0044b103129ebmr8597075lfv.117.1649315990594; 
 Thu, 07 Apr 2022 00:19:50 -0700 (PDT)
Received: from inno-pc.lan (88-115-161-74.elisa-laajakaista.fi.
 [88.115.161.74]) by smtp.gmail.com with ESMTPSA id
 h10-20020a056512220a00b0044a308dad8csm2081465lfu.149.2022.04.07.00.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 00:19:50 -0700 (PDT)
From: Zhi Wang <zhi.wang.linux@gmail.com>
X-Google-Original-From: Zhi Wang <zhi.a.wang@intel.com>
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org
Date: Thu,  7 Apr 2022 03:19:43 -0400
Message-Id: <20220407071945.72148-2-zhi.a.wang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407071945.72148-1-zhi.a.wang@intel.com>
References: <20220407071945.72148-1-zhi.a.wang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 1/3] i915/gvt: Separate the MMIO tracking
 table from GVT-g
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
Cc: Zhi Wang <zhi.a.wang@gmail.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Vivi Rodrigo <rodrigo.vivi@intel.com>, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Zhi Wang <zhi.a.wang@gmail.com>

To support the new mdev interfaces and the re-factor patches from
Christoph, which moves the GVT-g code into a dedicated module, the GVT-g
MMIO tracking table needs to be separated from GVT-g.

v9:
- Fix a problem might cause kernel panic.

v8:
- Use SPDX header in the intel_gvt_mmio_table.c
- Reference the gvt.h with path. (Jani)
- Add a missing fix on mmio emulation path during the debug.
- Fix a building problem on refreshed gvt-staging branch. (Christoph)

v7:
- Keep the marcos of device generation in GVT-g. (Christoph, Jani)

v6:
- Move the mmio_table.c into i915. (Christoph)
- Keep init_device_info and related structures in GVT-g. (Christoph)
- Refine the callbacks of the iterator. (Christoph)
- Move the flags of MMIO register defination to GVT-g. (Chrsitoph)
- Move the mmio block handling to GVT-g.

v5:
- Re-design the mmio table framework. (Christoph)

v4:
- Fix the errors of patch checking scripts.

v3:
- Fix the errors when CONFIG_DRM_I915_WERROR is turned on. (Jani)

v2:
- Implement a mmio table instead of generating it by marco in i915. (Jani)

Cc: Christoph Hellwig <hch@lst.de>
Cc: Jason Gunthorpe <jgg@nvidia.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Vivi Rodrigo <rodrigo.vivi@intel.com>
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Zhi Wang <zhi.a.wang@intel.com>
Signed-off-by: Zhi Wang <zhi.a.wang@gmail.com>
---
 drivers/gpu/drm/i915/Makefile               |    2 +-
 drivers/gpu/drm/i915/gvt/gvt.h              |    3 +-
 drivers/gpu/drm/i915/gvt/handlers.c         | 1033 ++-------------
 drivers/gpu/drm/i915/gvt/mmio.h             |    1 -
 drivers/gpu/drm/i915/gvt/reg.h              |    9 +-
 drivers/gpu/drm/i915/intel_gvt.h            |   21 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 1290 +++++++++++++++++++
 7 files changed, 1460 insertions(+), 899 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_gvt_mmio_table.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1a771ee5b1d0..b4abe0650ba1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -321,7 +321,7 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
 i915-y += i915_vgpu.o
 
 ifeq ($(CONFIG_DRM_I915_GVT),y)
-i915-y += intel_gvt.o
+i915-y += intel_gvt.o intel_gvt_mmio_table.o
 include $(src)/gvt/Makefile
 endif
 
diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 0ebffc327528..bfe07c69cfd2 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -36,6 +36,7 @@
 #include <uapi/linux/pci_regs.h>
 
 #include "i915_drv.h"
+#include "intel_gvt.h"
 
 #include "debug.h"
 #include "hypercall.h"
@@ -272,7 +273,7 @@ struct intel_gvt_mmio {
 /* Value of command write of this reg needs to be patched */
 #define F_CMD_WRITE_PATCH	(1 << 8)
 
-	const struct gvt_mmio_block *mmio_block;
+	struct gvt_mmio_block *mmio_block;
 	unsigned int num_mmio_block;
 
 	DECLARE_HASHTABLE(mmio_info_table, INTEL_GVT_MMIO_HASH_BITS);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 520a7e1942f3..9bd3c15bfab6 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -101,12 +101,11 @@ struct intel_gvt_mmio_info *intel_gvt_find_mmio_info(struct intel_gvt *gvt,
 	return NULL;
 }
 
-static int new_mmio_info(struct intel_gvt *gvt,
-		u32 offset, u16 flags, u32 size,
-		u32 addr_mask, u32 ro_mask, u32 device,
-		gvt_mmio_func read, gvt_mmio_func write)
+static int setup_mmio_info(struct intel_gvt *gvt, u32 offset, u32 size,
+			   u16 flags, u32 addr_mask, u32 ro_mask, u32 device,
+			   gvt_mmio_func read, gvt_mmio_func write)
 {
-	struct intel_gvt_mmio_info *info, *p;
+	struct intel_gvt_mmio_info *p;
 	u32 start, end, i;
 
 	if (!intel_gvt_match_device(gvt, device))
@@ -119,32 +118,18 @@ static int new_mmio_info(struct intel_gvt *gvt,
 	end = offset + size;
 
 	for (i = start; i < end; i += 4) {
-		info = kzalloc(sizeof(*info), GFP_KERNEL);
-		if (!info)
-			return -ENOMEM;
-
-		info->offset = i;
-		p = intel_gvt_find_mmio_info(gvt, info->offset);
-		if (p) {
-			WARN(1, "dup mmio definition offset %x\n",
-				info->offset);
-			kfree(info);
-
-			/* We return -EEXIST here to make GVT-g load fail.
-			 * So duplicated MMIO can be found as soon as
-			 * possible.
-			 */
-			return -EEXIST;
+		p = intel_gvt_find_mmio_info(gvt, i);
+		if (!p) {
+			WARN(1, "assign a handler to a non-tracked mmio %x\n",
+				i);
+			return -ENODEV;
 		}
-
-		info->ro_mask = ro_mask;
-		info->device = device;
-		info->read = read ? read : intel_vgpu_default_mmio_read;
-		info->write = write ? write : intel_vgpu_default_mmio_write;
-		gvt->mmio.mmio_attribute[info->offset / 4] = flags;
-		INIT_HLIST_NODE(&info->node);
-		hash_add(gvt->mmio.mmio_info_table, &info->node, info->offset);
-		gvt->mmio.num_tracked_mmio++;
+		p->ro_mask = ro_mask;
+		gvt->mmio.mmio_attribute[i / 4] = flags;
+		if (read)
+			p->read = read;
+		if (write)
+			p->write = write;
 	}
 	return 0;
 }
@@ -2137,15 +2122,12 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 }
 
 #define MMIO_F(reg, s, f, am, rm, d, r, w) do { \
-	ret = new_mmio_info(gvt, i915_mmio_reg_offset(reg), \
-		f, s, am, rm, d, r, w); \
+	ret = setup_mmio_info(gvt, i915_mmio_reg_offset(reg), \
+		s, f, am, rm, d, r, w); \
 	if (ret) \
 		return ret; \
 } while (0)
 
-#define MMIO_D(reg, d) \
-	MMIO_F(reg, 4, 0, 0, 0, d, NULL, NULL)
-
 #define MMIO_DH(reg, d, r, w) \
 	MMIO_F(reg, 4, 0, 0, 0, d, r, w)
 
@@ -2170,9 +2152,6 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d, r, w); \
 } while (0)
 
-#define MMIO_RING_D(prefix, d) \
-	MMIO_RING_F(prefix, 4, 0, 0, 0, d, NULL, NULL)
-
 #define MMIO_RING_DFH(prefix, d, f, r, w) \
 	MMIO_RING_F(prefix, 4, f, 0, 0, d, r, w)
 
@@ -2196,7 +2175,6 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(SDEIMR, D_ALL, 0, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DFH(SDEIER, D_ALL, 0, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DFH(SDEIIR, D_ALL, 0, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(SDEISR, D_ALL);
 
 	MMIO_RING_DFH(RING_HWSTAM, D_ALL, 0, NULL, NULL);
 
@@ -2224,7 +2202,6 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_GM_RDR(_MMIO(0x2148), D_ALL, NULL, NULL);
 	MMIO_GM_RDR(CCID(RENDER_RING_BASE), D_ALL, NULL, NULL);
 	MMIO_GM_RDR(_MMIO(0x12198), D_ALL, NULL, NULL);
-	MMIO_D(GEN7_CXT_SIZE, D_ALL);
 
 	MMIO_RING_DFH(RING_TAIL, D_ALL, 0, NULL, NULL);
 	MMIO_RING_DFH(RING_HEAD, D_ALL, 0, NULL, NULL);
@@ -2278,257 +2255,32 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(GEN7_HALF_SLICE_CHICKEN1, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 
 	/* display */
-	MMIO_F(_MMIO(0x60220), 0x20, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_D(_MMIO(0x602a0), D_ALL);
-
-	MMIO_D(_MMIO(0x65050), D_ALL);
-	MMIO_D(_MMIO(0x650b4), D_ALL);
-
-	MMIO_D(_MMIO(0xc4040), D_ALL);
-	MMIO_D(DERRMR, D_ALL);
-
-	MMIO_D(PIPEDSL(PIPE_A), D_ALL);
-	MMIO_D(PIPEDSL(PIPE_B), D_ALL);
-	MMIO_D(PIPEDSL(PIPE_C), D_ALL);
-	MMIO_D(PIPEDSL(_PIPE_EDP), D_ALL);
-
 	MMIO_DH(PIPECONF(PIPE_A), D_ALL, NULL, pipeconf_mmio_write);
 	MMIO_DH(PIPECONF(PIPE_B), D_ALL, NULL, pipeconf_mmio_write);
 	MMIO_DH(PIPECONF(PIPE_C), D_ALL, NULL, pipeconf_mmio_write);
 	MMIO_DH(PIPECONF(_PIPE_EDP), D_ALL, NULL, pipeconf_mmio_write);
-
-	MMIO_D(PIPESTAT(PIPE_A), D_ALL);
-	MMIO_D(PIPESTAT(PIPE_B), D_ALL);
-	MMIO_D(PIPESTAT(PIPE_C), D_ALL);
-	MMIO_D(PIPESTAT(_PIPE_EDP), D_ALL);
-
-	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_A), D_ALL);
-	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B), D_ALL);
-	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C), D_ALL);
-	MMIO_D(PIPE_FLIPCOUNT_G4X(_PIPE_EDP), D_ALL);
-
-	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_A), D_ALL);
-	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_B), D_ALL);
-	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_C), D_ALL);
-	MMIO_D(PIPE_FRMCOUNT_G4X(_PIPE_EDP), D_ALL);
-
-	MMIO_D(CURCNTR(PIPE_A), D_ALL);
-	MMIO_D(CURCNTR(PIPE_B), D_ALL);
-	MMIO_D(CURCNTR(PIPE_C), D_ALL);
-
-	MMIO_D(CURPOS(PIPE_A), D_ALL);
-	MMIO_D(CURPOS(PIPE_B), D_ALL);
-	MMIO_D(CURPOS(PIPE_C), D_ALL);
-
-	MMIO_D(CURBASE(PIPE_A), D_ALL);
-	MMIO_D(CURBASE(PIPE_B), D_ALL);
-	MMIO_D(CURBASE(PIPE_C), D_ALL);
-
-	MMIO_D(CUR_FBC_CTL(PIPE_A), D_ALL);
-	MMIO_D(CUR_FBC_CTL(PIPE_B), D_ALL);
-	MMIO_D(CUR_FBC_CTL(PIPE_C), D_ALL);
-
-	MMIO_D(_MMIO(0x700ac), D_ALL);
-	MMIO_D(_MMIO(0x710ac), D_ALL);
-	MMIO_D(_MMIO(0x720ac), D_ALL);
-
-	MMIO_D(_MMIO(0x70090), D_ALL);
-	MMIO_D(_MMIO(0x70094), D_ALL);
-	MMIO_D(_MMIO(0x70098), D_ALL);
-	MMIO_D(_MMIO(0x7009c), D_ALL);
-
-	MMIO_D(DSPCNTR(PIPE_A), D_ALL);
-	MMIO_D(DSPADDR(PIPE_A), D_ALL);
-	MMIO_D(DSPSTRIDE(PIPE_A), D_ALL);
-	MMIO_D(DSPPOS(PIPE_A), D_ALL);
-	MMIO_D(DSPSIZE(PIPE_A), D_ALL);
 	MMIO_DH(DSPSURF(PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
-	MMIO_D(DSPOFFSET(PIPE_A), D_ALL);
-	MMIO_D(DSPSURFLIVE(PIPE_A), D_ALL);
 	MMIO_DH(REG_50080(PIPE_A, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
-
-	MMIO_D(DSPCNTR(PIPE_B), D_ALL);
-	MMIO_D(DSPADDR(PIPE_B), D_ALL);
-	MMIO_D(DSPSTRIDE(PIPE_B), D_ALL);
-	MMIO_D(DSPPOS(PIPE_B), D_ALL);
-	MMIO_D(DSPSIZE(PIPE_B), D_ALL);
 	MMIO_DH(DSPSURF(PIPE_B), D_ALL, NULL, pri_surf_mmio_write);
-	MMIO_D(DSPOFFSET(PIPE_B), D_ALL);
-	MMIO_D(DSPSURFLIVE(PIPE_B), D_ALL);
 	MMIO_DH(REG_50080(PIPE_B, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
-
-	MMIO_D(DSPCNTR(PIPE_C), D_ALL);
-	MMIO_D(DSPADDR(PIPE_C), D_ALL);
-	MMIO_D(DSPSTRIDE(PIPE_C), D_ALL);
-	MMIO_D(DSPPOS(PIPE_C), D_ALL);
-	MMIO_D(DSPSIZE(PIPE_C), D_ALL);
 	MMIO_DH(DSPSURF(PIPE_C), D_ALL, NULL, pri_surf_mmio_write);
-	MMIO_D(DSPOFFSET(PIPE_C), D_ALL);
-	MMIO_D(DSPSURFLIVE(PIPE_C), D_ALL);
 	MMIO_DH(REG_50080(PIPE_C, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
-
-	MMIO_D(SPRCTL(PIPE_A), D_ALL);
-	MMIO_D(SPRLINOFF(PIPE_A), D_ALL);
-	MMIO_D(SPRSTRIDE(PIPE_A), D_ALL);
-	MMIO_D(SPRPOS(PIPE_A), D_ALL);
-	MMIO_D(SPRSIZE(PIPE_A), D_ALL);
-	MMIO_D(SPRKEYVAL(PIPE_A), D_ALL);
-	MMIO_D(SPRKEYMSK(PIPE_A), D_ALL);
 	MMIO_DH(SPRSURF(PIPE_A), D_ALL, NULL, spr_surf_mmio_write);
-	MMIO_D(SPRKEYMAX(PIPE_A), D_ALL);
-	MMIO_D(SPROFFSET(PIPE_A), D_ALL);
-	MMIO_D(SPRSCALE(PIPE_A), D_ALL);
-	MMIO_D(SPRSURFLIVE(PIPE_A), D_ALL);
 	MMIO_DH(REG_50080(PIPE_A, PLANE_SPRITE0), D_ALL, NULL,
 		reg50080_mmio_write);
-
-	MMIO_D(SPRCTL(PIPE_B), D_ALL);
-	MMIO_D(SPRLINOFF(PIPE_B), D_ALL);
-	MMIO_D(SPRSTRIDE(PIPE_B), D_ALL);
-	MMIO_D(SPRPOS(PIPE_B), D_ALL);
-	MMIO_D(SPRSIZE(PIPE_B), D_ALL);
-	MMIO_D(SPRKEYVAL(PIPE_B), D_ALL);
-	MMIO_D(SPRKEYMSK(PIPE_B), D_ALL);
 	MMIO_DH(SPRSURF(PIPE_B), D_ALL, NULL, spr_surf_mmio_write);
-	MMIO_D(SPRKEYMAX(PIPE_B), D_ALL);
-	MMIO_D(SPROFFSET(PIPE_B), D_ALL);
-	MMIO_D(SPRSCALE(PIPE_B), D_ALL);
-	MMIO_D(SPRSURFLIVE(PIPE_B), D_ALL);
 	MMIO_DH(REG_50080(PIPE_B, PLANE_SPRITE0), D_ALL, NULL,
 		reg50080_mmio_write);
-
-	MMIO_D(SPRCTL(PIPE_C), D_ALL);
-	MMIO_D(SPRLINOFF(PIPE_C), D_ALL);
-	MMIO_D(SPRSTRIDE(PIPE_C), D_ALL);
-	MMIO_D(SPRPOS(PIPE_C), D_ALL);
-	MMIO_D(SPRSIZE(PIPE_C), D_ALL);
-	MMIO_D(SPRKEYVAL(PIPE_C), D_ALL);
-	MMIO_D(SPRKEYMSK(PIPE_C), D_ALL);
 	MMIO_DH(SPRSURF(PIPE_C), D_ALL, NULL, spr_surf_mmio_write);
-	MMIO_D(SPRKEYMAX(PIPE_C), D_ALL);
-	MMIO_D(SPROFFSET(PIPE_C), D_ALL);
-	MMIO_D(SPRSCALE(PIPE_C), D_ALL);
-	MMIO_D(SPRSURFLIVE(PIPE_C), D_ALL);
 	MMIO_DH(REG_50080(PIPE_C, PLANE_SPRITE0), D_ALL, NULL,
 		reg50080_mmio_write);
 
-	MMIO_D(HTOTAL(TRANSCODER_A), D_ALL);
-	MMIO_D(HBLANK(TRANSCODER_A), D_ALL);
-	MMIO_D(HSYNC(TRANSCODER_A), D_ALL);
-	MMIO_D(VTOTAL(TRANSCODER_A), D_ALL);
-	MMIO_D(VBLANK(TRANSCODER_A), D_ALL);
-	MMIO_D(VSYNC(TRANSCODER_A), D_ALL);
-	MMIO_D(BCLRPAT(TRANSCODER_A), D_ALL);
-	MMIO_D(VSYNCSHIFT(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPESRC(TRANSCODER_A), D_ALL);
-
-	MMIO_D(HTOTAL(TRANSCODER_B), D_ALL);
-	MMIO_D(HBLANK(TRANSCODER_B), D_ALL);
-	MMIO_D(HSYNC(TRANSCODER_B), D_ALL);
-	MMIO_D(VTOTAL(TRANSCODER_B), D_ALL);
-	MMIO_D(VBLANK(TRANSCODER_B), D_ALL);
-	MMIO_D(VSYNC(TRANSCODER_B), D_ALL);
-	MMIO_D(BCLRPAT(TRANSCODER_B), D_ALL);
-	MMIO_D(VSYNCSHIFT(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPESRC(TRANSCODER_B), D_ALL);
-
-	MMIO_D(HTOTAL(TRANSCODER_C), D_ALL);
-	MMIO_D(HBLANK(TRANSCODER_C), D_ALL);
-	MMIO_D(HSYNC(TRANSCODER_C), D_ALL);
-	MMIO_D(VTOTAL(TRANSCODER_C), D_ALL);
-	MMIO_D(VBLANK(TRANSCODER_C), D_ALL);
-	MMIO_D(VSYNC(TRANSCODER_C), D_ALL);
-	MMIO_D(BCLRPAT(TRANSCODER_C), D_ALL);
-	MMIO_D(VSYNCSHIFT(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPESRC(TRANSCODER_C), D_ALL);
-
-	MMIO_D(HTOTAL(TRANSCODER_EDP), D_ALL);
-	MMIO_D(HBLANK(TRANSCODER_EDP), D_ALL);
-	MMIO_D(HSYNC(TRANSCODER_EDP), D_ALL);
-	MMIO_D(VTOTAL(TRANSCODER_EDP), D_ALL);
-	MMIO_D(VBLANK(TRANSCODER_EDP), D_ALL);
-	MMIO_D(VSYNC(TRANSCODER_EDP), D_ALL);
-	MMIO_D(BCLRPAT(TRANSCODER_EDP), D_ALL);
-	MMIO_D(VSYNCSHIFT(TRANSCODER_EDP), D_ALL);
-
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_A), D_ALL);
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_A), D_ALL);
-
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_B), D_ALL);
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_B), D_ALL);
-
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_C), D_ALL);
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_C), D_ALL);
-
-	MMIO_D(PIPE_DATA_M1(TRANSCODER_EDP), D_ALL);
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_EDP), D_ALL);
-	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP), D_ALL);
-	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP), D_ALL);
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP), D_ALL);
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP), D_ALL);
-	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP), D_ALL);
-	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP), D_ALL);
-
-	MMIO_D(PF_CTL(PIPE_A), D_ALL);
-	MMIO_D(PF_WIN_SZ(PIPE_A), D_ALL);
-	MMIO_D(PF_WIN_POS(PIPE_A), D_ALL);
-	MMIO_D(PF_VSCALE(PIPE_A), D_ALL);
-	MMIO_D(PF_HSCALE(PIPE_A), D_ALL);
-
-	MMIO_D(PF_CTL(PIPE_B), D_ALL);
-	MMIO_D(PF_WIN_SZ(PIPE_B), D_ALL);
-	MMIO_D(PF_WIN_POS(PIPE_B), D_ALL);
-	MMIO_D(PF_VSCALE(PIPE_B), D_ALL);
-	MMIO_D(PF_HSCALE(PIPE_B), D_ALL);
-
-	MMIO_D(PF_CTL(PIPE_C), D_ALL);
-	MMIO_D(PF_WIN_SZ(PIPE_C), D_ALL);
-	MMIO_D(PF_WIN_POS(PIPE_C), D_ALL);
-	MMIO_D(PF_VSCALE(PIPE_C), D_ALL);
-	MMIO_D(PF_HSCALE(PIPE_C), D_ALL);
-
-	MMIO_D(WM0_PIPE_ILK(PIPE_A), D_ALL);
-	MMIO_D(WM0_PIPE_ILK(PIPE_B), D_ALL);
-	MMIO_D(WM0_PIPE_ILK(PIPE_C), D_ALL);
-	MMIO_D(WM1_LP_ILK, D_ALL);
-	MMIO_D(WM2_LP_ILK, D_ALL);
-	MMIO_D(WM3_LP_ILK, D_ALL);
-	MMIO_D(WM1S_LP_ILK, D_ALL);
-	MMIO_D(WM2S_LP_IVB, D_ALL);
-	MMIO_D(WM3S_LP_IVB, D_ALL);
-
-	MMIO_D(BLC_PWM_CPU_CTL2, D_ALL);
-	MMIO_D(BLC_PWM_CPU_CTL, D_ALL);
-	MMIO_D(BLC_PWM_PCH_CTL1, D_ALL);
-	MMIO_D(BLC_PWM_PCH_CTL2, D_ALL);
-
-	MMIO_D(_MMIO(0x48268), D_ALL);
-
 	MMIO_F(PCH_GMBUS0, 4 * 4, 0, 0, 0, D_ALL, gmbus_mmio_read,
 		gmbus_mmio_write);
 	MMIO_F(PCH_GPIO_BASE, 6 * 4, F_UNALIGN, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0xe4f00), 0x28, 0, 0, 0, D_ALL, NULL, NULL);
 
 	MMIO_F(_MMIO(_PCH_DPB_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_PRE_SKL, NULL,
 		dp_aux_ch_ctl_mmio_write);
@@ -2551,74 +2303,7 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(FDI_RX_CTL(PIPE_A), D_ALL, NULL, update_fdi_rx_iir_status);
 	MMIO_DH(FDI_RX_CTL(PIPE_B), D_ALL, NULL, update_fdi_rx_iir_status);
 	MMIO_DH(FDI_RX_CTL(PIPE_C), D_ALL, NULL, update_fdi_rx_iir_status);
-
-	MMIO_D(_MMIO(_PCH_TRANS_HTOTAL_A), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_HBLANK_A), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_HSYNC_A), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VTOTAL_A), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VBLANK_A), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VSYNC_A), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VSYNCSHIFT_A), D_ALL);
-
-	MMIO_D(_MMIO(_PCH_TRANS_HTOTAL_B), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_HBLANK_B), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_HSYNC_B), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VTOTAL_B), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VBLANK_B), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VSYNC_B), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANS_VSYNCSHIFT_B), D_ALL);
-
-	MMIO_D(_MMIO(_PCH_TRANSA_DATA_M1), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANSA_DATA_N1), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANSA_DATA_M2), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANSA_DATA_N2), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANSA_LINK_M1), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANSA_LINK_N1), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANSA_LINK_M2), D_ALL);
-	MMIO_D(_MMIO(_PCH_TRANSA_LINK_N2), D_ALL);
-
-	MMIO_D(TRANS_DP_CTL(PIPE_A), D_ALL);
-	MMIO_D(TRANS_DP_CTL(PIPE_B), D_ALL);
-	MMIO_D(TRANS_DP_CTL(PIPE_C), D_ALL);
-
-	MMIO_D(TVIDEO_DIP_CTL(PIPE_A), D_ALL);
-	MMIO_D(TVIDEO_DIP_DATA(PIPE_A), D_ALL);
-	MMIO_D(TVIDEO_DIP_GCP(PIPE_A), D_ALL);
-
-	MMIO_D(TVIDEO_DIP_CTL(PIPE_B), D_ALL);
-	MMIO_D(TVIDEO_DIP_DATA(PIPE_B), D_ALL);
-	MMIO_D(TVIDEO_DIP_GCP(PIPE_B), D_ALL);
-
-	MMIO_D(TVIDEO_DIP_CTL(PIPE_C), D_ALL);
-	MMIO_D(TVIDEO_DIP_DATA(PIPE_C), D_ALL);
-	MMIO_D(TVIDEO_DIP_GCP(PIPE_C), D_ALL);
-
-	MMIO_D(_MMIO(_FDI_RXA_MISC), D_ALL);
-	MMIO_D(_MMIO(_FDI_RXB_MISC), D_ALL);
-	MMIO_D(_MMIO(_FDI_RXA_TUSIZE1), D_ALL);
-	MMIO_D(_MMIO(_FDI_RXA_TUSIZE2), D_ALL);
-	MMIO_D(_MMIO(_FDI_RXB_TUSIZE1), D_ALL);
-	MMIO_D(_MMIO(_FDI_RXB_TUSIZE2), D_ALL);
-
 	MMIO_DH(PCH_PP_CONTROL, D_ALL, NULL, pch_pp_control_mmio_write);
-	MMIO_D(PCH_PP_DIVISOR, D_ALL);
-	MMIO_D(PCH_PP_STATUS,  D_ALL);
-	MMIO_D(PCH_LVDS, D_ALL);
-	MMIO_D(_MMIO(_PCH_DPLL_A), D_ALL);
-	MMIO_D(_MMIO(_PCH_DPLL_B), D_ALL);
-	MMIO_D(_MMIO(_PCH_FPA0), D_ALL);
-	MMIO_D(_MMIO(_PCH_FPA1), D_ALL);
-	MMIO_D(_MMIO(_PCH_FPB0), D_ALL);
-	MMIO_D(_MMIO(_PCH_FPB1), D_ALL);
-	MMIO_D(PCH_DREF_CONTROL, D_ALL);
-	MMIO_D(PCH_RAWCLK_FREQ, D_ALL);
-	MMIO_D(PCH_DPLL_SEL, D_ALL);
-
-	MMIO_D(_MMIO(0x61208), D_ALL);
-	MMIO_D(_MMIO(0x6120c), D_ALL);
-	MMIO_D(PCH_PP_ON_DELAYS, D_ALL);
-	MMIO_D(PCH_PP_OFF_DELAYS, D_ALL);
-
 	MMIO_DH(_MMIO(0xe651c), D_ALL, dpy_reg_mmio_read, NULL);
 	MMIO_DH(_MMIO(0xe661c), D_ALL, dpy_reg_mmio_read, NULL);
 	MMIO_DH(_MMIO(0xe671c), D_ALL, dpy_reg_mmio_read, NULL);
@@ -2634,143 +2319,10 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 		NULL, NULL);
 
 	MMIO_DH(LCPLL_CTL, D_ALL, NULL, lcpll_ctl_mmio_write);
-	MMIO_D(FUSE_STRAP, D_ALL);
-	MMIO_D(DIGITAL_PORT_HOTPLUG_CNTRL, D_ALL);
-
-	MMIO_D(DISP_ARB_CTL, D_ALL);
-	MMIO_D(DISP_ARB_CTL2, D_ALL);
-
-	MMIO_D(ILK_DISPLAY_CHICKEN1, D_ALL);
-	MMIO_D(ILK_DISPLAY_CHICKEN2, D_ALL);
-	MMIO_D(ILK_DSPCLK_GATE_D, D_ALL);
-
-	MMIO_D(SOUTH_CHICKEN1, D_ALL);
 	MMIO_DH(SOUTH_CHICKEN2, D_ALL, NULL, south_chicken2_mmio_write);
-	MMIO_D(_MMIO(_TRANSA_CHICKEN1), D_ALL);
-	MMIO_D(_MMIO(_TRANSB_CHICKEN1), D_ALL);
-	MMIO_D(SOUTH_DSPCLK_GATE_D, D_ALL);
-	MMIO_D(_MMIO(_TRANSA_CHICKEN2), D_ALL);
-	MMIO_D(_MMIO(_TRANSB_CHICKEN2), D_ALL);
-
-	MMIO_D(ILK_DPFC_CB_BASE(INTEL_FBC_A), D_ALL);
-	MMIO_D(ILK_DPFC_CONTROL(INTEL_FBC_A), D_ALL);
-	MMIO_D(ILK_DPFC_RECOMP_CTL(INTEL_FBC_A), D_ALL);
-	MMIO_D(ILK_DPFC_STATUS(INTEL_FBC_A), D_ALL);
-	MMIO_D(ILK_DPFC_FENCE_YOFF(INTEL_FBC_A), D_ALL);
-	MMIO_D(ILK_DPFC_CHICKEN(INTEL_FBC_A), D_ALL);
-	MMIO_D(ILK_FBC_RT_BASE, D_ALL);
-
-	MMIO_D(IPS_CTL, D_ALL);
-
-	MMIO_D(PIPE_CSC_COEFF_RY_GY(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BY(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_RU_GU(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BU(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_RV_GV(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BV(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_MODE(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_HI(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_ME(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_LO(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_HI(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_ME(PIPE_A), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_LO(PIPE_A), D_ALL);
-
-	MMIO_D(PIPE_CSC_COEFF_RY_GY(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BY(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_RU_GU(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BU(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_RV_GV(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BV(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_MODE(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_HI(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_ME(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_LO(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_HI(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_ME(PIPE_B), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_LO(PIPE_B), D_ALL);
-
-	MMIO_D(PIPE_CSC_COEFF_RY_GY(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BY(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_RU_GU(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BU(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_RV_GV(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_COEFF_BV(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_MODE(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_HI(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_ME(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_PREOFF_LO(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_HI(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_ME(PIPE_C), D_ALL);
-	MMIO_D(PIPE_CSC_POSTOFF_LO(PIPE_C), D_ALL);
-
-	MMIO_D(PREC_PAL_INDEX(PIPE_A), D_ALL);
-	MMIO_D(PREC_PAL_DATA(PIPE_A), D_ALL);
-	MMIO_F(PREC_PAL_GC_MAX(PIPE_A, 0), 4 * 3, 0, 0, 0, D_ALL, NULL, NULL);
-
-	MMIO_D(PREC_PAL_INDEX(PIPE_B), D_ALL);
-	MMIO_D(PREC_PAL_DATA(PIPE_B), D_ALL);
-	MMIO_F(PREC_PAL_GC_MAX(PIPE_B, 0), 4 * 3, 0, 0, 0, D_ALL, NULL, NULL);
-
-	MMIO_D(PREC_PAL_INDEX(PIPE_C), D_ALL);
-	MMIO_D(PREC_PAL_DATA(PIPE_C), D_ALL);
-	MMIO_F(PREC_PAL_GC_MAX(PIPE_C, 0), 4 * 3, 0, 0, 0, D_ALL, NULL, NULL);
-
-	MMIO_D(_MMIO(0x60110), D_ALL);
-	MMIO_D(_MMIO(0x61110), D_ALL);
-	MMIO_F(_MMIO(0x70400), 0x40, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x71400), 0x40, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x72400), 0x40, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x70440), 0xc, 0, 0, 0, D_PRE_SKL, NULL, NULL);
-	MMIO_F(_MMIO(0x71440), 0xc, 0, 0, 0, D_PRE_SKL, NULL, NULL);
-	MMIO_F(_MMIO(0x72440), 0xc, 0, 0, 0, D_PRE_SKL, NULL, NULL);
-	MMIO_F(_MMIO(0x7044c), 0xc, 0, 0, 0, D_PRE_SKL, NULL, NULL);
-	MMIO_F(_MMIO(0x7144c), 0xc, 0, 0, 0, D_PRE_SKL, NULL, NULL);
-	MMIO_F(_MMIO(0x7244c), 0xc, 0, 0, 0, D_PRE_SKL, NULL, NULL);
-
-	MMIO_D(WM_LINETIME(PIPE_A), D_ALL);
-	MMIO_D(WM_LINETIME(PIPE_B), D_ALL);
-	MMIO_D(WM_LINETIME(PIPE_C), D_ALL);
-	MMIO_D(SPLL_CTL, D_ALL);
-	MMIO_D(_MMIO(_WRPLL_CTL1), D_ALL);
-	MMIO_D(_MMIO(_WRPLL_CTL2), D_ALL);
-	MMIO_D(PORT_CLK_SEL(PORT_A), D_ALL);
-	MMIO_D(PORT_CLK_SEL(PORT_B), D_ALL);
-	MMIO_D(PORT_CLK_SEL(PORT_C), D_ALL);
-	MMIO_D(PORT_CLK_SEL(PORT_D), D_ALL);
-	MMIO_D(PORT_CLK_SEL(PORT_E), D_ALL);
-	MMIO_D(TRANS_CLK_SEL(TRANSCODER_A), D_ALL);
-	MMIO_D(TRANS_CLK_SEL(TRANSCODER_B), D_ALL);
-	MMIO_D(TRANS_CLK_SEL(TRANSCODER_C), D_ALL);
-
-	MMIO_D(HSW_NDE_RSTWRN_OPT, D_ALL);
-	MMIO_D(_MMIO(0x46508), D_ALL);
-
-	MMIO_D(_MMIO(0x49080), D_ALL);
-	MMIO_D(_MMIO(0x49180), D_ALL);
-	MMIO_D(_MMIO(0x49280), D_ALL);
-
-	MMIO_F(_MMIO(0x49090), 0x14, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x49190), 0x14, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x49290), 0x14, 0, 0, 0, D_ALL, NULL, NULL);
-
-	MMIO_D(GAMMA_MODE(PIPE_A), D_ALL);
-	MMIO_D(GAMMA_MODE(PIPE_B), D_ALL);
-	MMIO_D(GAMMA_MODE(PIPE_C), D_ALL);
-
-	MMIO_D(PIPE_MULT(PIPE_A), D_ALL);
-	MMIO_D(PIPE_MULT(PIPE_B), D_ALL);
-	MMIO_D(PIPE_MULT(PIPE_C), D_ALL);
-
-	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_A), D_ALL);
-	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_B), D_ALL);
-	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_C), D_ALL);
-
 	MMIO_DH(SFUSE_STRAP, D_ALL, NULL, NULL);
-	MMIO_D(SBI_ADDR, D_ALL);
 	MMIO_DH(SBI_DATA, D_ALL, sbi_data_mmio_read, NULL);
 	MMIO_DH(SBI_CTL_STAT, D_ALL, NULL, sbi_ctl_mmio_write);
-	MMIO_D(PIXCLK_GATE, D_ALL);
 
 	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_ALL, NULL,
 		dp_aux_ch_ctl_mmio_write);
@@ -2793,65 +2345,18 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(DP_TP_STATUS(PORT_D), D_ALL, NULL, dp_tp_status_mmio_write);
 	MMIO_DH(DP_TP_STATUS(PORT_E), D_ALL, NULL, NULL);
 
-	MMIO_F(_MMIO(_DDI_BUF_TRANS_A), 0x50, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x64e60), 0x50, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x64eC0), 0x50, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x64f20), 0x50, 0, 0, 0, D_ALL, NULL, NULL);
-	MMIO_F(_MMIO(0x64f80), 0x50, 0, 0, 0, D_ALL, NULL, NULL);
-
-	MMIO_D(HSW_AUD_CFG(PIPE_A), D_ALL);
-	MMIO_D(HSW_AUD_PIN_ELD_CP_VLD, D_ALL);
-	MMIO_D(HSW_AUD_MISC_CTRL(PIPE_A), D_ALL);
-
 	MMIO_DH(_MMIO(_TRANS_DDI_FUNC_CTL_A), D_ALL, NULL, NULL);
 	MMIO_DH(_MMIO(_TRANS_DDI_FUNC_CTL_B), D_ALL, NULL, NULL);
 	MMIO_DH(_MMIO(_TRANS_DDI_FUNC_CTL_C), D_ALL, NULL, NULL);
 	MMIO_DH(_MMIO(_TRANS_DDI_FUNC_CTL_EDP), D_ALL, NULL, NULL);
 
-	MMIO_D(_MMIO(_TRANSA_MSA_MISC), D_ALL);
-	MMIO_D(_MMIO(_TRANSB_MSA_MISC), D_ALL);
-	MMIO_D(_MMIO(_TRANSC_MSA_MISC), D_ALL);
-	MMIO_D(_MMIO(_TRANS_EDP_MSA_MISC), D_ALL);
-
 	MMIO_DH(FORCEWAKE, D_ALL, NULL, NULL);
-	MMIO_D(FORCEWAKE_ACK, D_ALL);
-	MMIO_D(GEN6_GT_CORE_STATUS, D_ALL);
-	MMIO_D(GEN6_GT_THREAD_STATUS_REG, D_ALL);
 	MMIO_DFH(GTFIFODBG, D_ALL, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(GTFIFOCTL, D_ALL, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DH(FORCEWAKE_MT, D_PRE_SKL, NULL, mul_force_wake_write);
 	MMIO_DH(FORCEWAKE_ACK_HSW, D_BDW, NULL, NULL);
-	MMIO_D(ECOBUS, D_ALL);
 	MMIO_DH(GEN6_RC_CONTROL, D_ALL, NULL, NULL);
 	MMIO_DH(GEN6_RC_STATE, D_ALL, NULL, NULL);
-	MMIO_D(GEN6_RPNSWREQ, D_ALL);
-	MMIO_D(GEN6_RC_VIDEO_FREQ, D_ALL);
-	MMIO_D(GEN6_RP_DOWN_TIMEOUT, D_ALL);
-	MMIO_D(GEN6_RP_INTERRUPT_LIMITS, D_ALL);
-	MMIO_D(GEN6_RPSTAT1, D_ALL);
-	MMIO_D(GEN6_RP_CONTROL, D_ALL);
-	MMIO_D(GEN6_RP_UP_THRESHOLD, D_ALL);
-	MMIO_D(GEN6_RP_DOWN_THRESHOLD, D_ALL);
-	MMIO_D(GEN6_RP_CUR_UP_EI, D_ALL);
-	MMIO_D(GEN6_RP_CUR_UP, D_ALL);
-	MMIO_D(GEN6_RP_PREV_UP, D_ALL);
-	MMIO_D(GEN6_RP_CUR_DOWN_EI, D_ALL);
-	MMIO_D(GEN6_RP_CUR_DOWN, D_ALL);
-	MMIO_D(GEN6_RP_PREV_DOWN, D_ALL);
-	MMIO_D(GEN6_RP_UP_EI, D_ALL);
-	MMIO_D(GEN6_RP_DOWN_EI, D_ALL);
-	MMIO_D(GEN6_RP_IDLE_HYSTERSIS, D_ALL);
-	MMIO_D(GEN6_RC1_WAKE_RATE_LIMIT, D_ALL);
-	MMIO_D(GEN6_RC6_WAKE_RATE_LIMIT, D_ALL);
-	MMIO_D(GEN6_RC6pp_WAKE_RATE_LIMIT, D_ALL);
-	MMIO_D(GEN6_RC_EVALUATION_INTERVAL, D_ALL);
-	MMIO_D(GEN6_RC_IDLE_HYSTERSIS, D_ALL);
-	MMIO_D(GEN6_RC_SLEEP, D_ALL);
-	MMIO_D(GEN6_RC1e_THRESHOLD, D_ALL);
-	MMIO_D(GEN6_RC6_THRESHOLD, D_ALL);
-	MMIO_D(GEN6_RC6p_THRESHOLD, D_ALL);
-	MMIO_D(GEN6_RC6pp_THRESHOLD, D_ALL);
-	MMIO_D(GEN6_PMINTRMSK, D_ALL);
 	MMIO_DH(HSW_PWR_WELL_CTL1, D_BDW, NULL, power_well_ctl_mmio_write);
 	MMIO_DH(HSW_PWR_WELL_CTL2, D_BDW, NULL, power_well_ctl_mmio_write);
 	MMIO_DH(HSW_PWR_WELL_CTL3, D_BDW, NULL, power_well_ctl_mmio_write);
@@ -2859,97 +2364,17 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(HSW_PWR_WELL_CTL5, D_BDW, NULL, power_well_ctl_mmio_write);
 	MMIO_DH(HSW_PWR_WELL_CTL6, D_BDW, NULL, power_well_ctl_mmio_write);
 
-	MMIO_D(RSTDBYCTL, D_ALL);
-
 	MMIO_DH(GEN6_GDRST, D_ALL, NULL, gdrst_mmio_write);
 	MMIO_F(FENCE_REG_GEN6_LO(0), 0x80, 0, 0, 0, D_ALL, fence_mmio_read, fence_mmio_write);
 	MMIO_DH(CPU_VGACNTRL, D_ALL, NULL, vga_control_mmio_write);
 
-	MMIO_D(TILECTL, D_ALL);
-
-	MMIO_D(GEN6_UCGCTL1, D_ALL);
-	MMIO_D(GEN6_UCGCTL2, D_ALL);
-
-	MMIO_F(_MMIO(0x4f000), 0x90, 0, 0, 0, D_ALL, NULL, NULL);
-
-	MMIO_D(GEN6_PCODE_DATA, D_ALL);
-	MMIO_D(_MMIO(0x13812c), D_ALL);
 	MMIO_DH(GEN7_ERR_INT, D_ALL, NULL, NULL);
-	MMIO_D(HSW_EDRAM_CAP, D_ALL);
-	MMIO_D(HSW_IDICR, D_ALL);
 	MMIO_DH(GFX_FLSH_CNTL_GEN6, D_ALL, NULL, NULL);
 
-	MMIO_D(_MMIO(0x3c), D_ALL);
-	MMIO_D(_MMIO(0x860), D_ALL);
-	MMIO_D(ECOSKPD(RENDER_RING_BASE), D_ALL);
-	MMIO_D(_MMIO(0x121d0), D_ALL);
-	MMIO_D(ECOSKPD(BLT_RING_BASE), D_ALL);
-	MMIO_D(_MMIO(0x41d0), D_ALL);
-	MMIO_D(GAC_ECO_BITS, D_ALL);
-	MMIO_D(_MMIO(0x6200), D_ALL);
-	MMIO_D(_MMIO(0x6204), D_ALL);
-	MMIO_D(_MMIO(0x6208), D_ALL);
-	MMIO_D(_MMIO(0x7118), D_ALL);
-	MMIO_D(_MMIO(0x7180), D_ALL);
-	MMIO_D(_MMIO(0x7408), D_ALL);
-	MMIO_D(_MMIO(0x7c00), D_ALL);
 	MMIO_DH(GEN6_MBCTL, D_ALL, NULL, mbctl_write);
-	MMIO_D(_MMIO(0x911c), D_ALL);
-	MMIO_D(_MMIO(0x9120), D_ALL);
 	MMIO_DFH(GEN7_UCGCTL4, D_ALL, F_CMD_ACCESS, NULL, NULL);
 
-	MMIO_D(GAB_CTL, D_ALL);
-	MMIO_D(_MMIO(0x48800), D_ALL);
-	MMIO_D(_MMIO(0xce044), D_ALL);
-	MMIO_D(_MMIO(0xe6500), D_ALL);
-	MMIO_D(_MMIO(0xe6504), D_ALL);
-	MMIO_D(_MMIO(0xe6600), D_ALL);
-	MMIO_D(_MMIO(0xe6604), D_ALL);
-	MMIO_D(_MMIO(0xe6700), D_ALL);
-	MMIO_D(_MMIO(0xe6704), D_ALL);
-	MMIO_D(_MMIO(0xe6800), D_ALL);
-	MMIO_D(_MMIO(0xe6804), D_ALL);
-	MMIO_D(PCH_GMBUS4, D_ALL);
-	MMIO_D(PCH_GMBUS5, D_ALL);
-
-	MMIO_D(_MMIO(0x902c), D_ALL);
-	MMIO_D(_MMIO(0xec008), D_ALL);
-	MMIO_D(_MMIO(0xec00c), D_ALL);
-	MMIO_D(_MMIO(0xec008 + 0x18), D_ALL);
-	MMIO_D(_MMIO(0xec00c + 0x18), D_ALL);
-	MMIO_D(_MMIO(0xec008 + 0x18 * 2), D_ALL);
-	MMIO_D(_MMIO(0xec00c + 0x18 * 2), D_ALL);
-	MMIO_D(_MMIO(0xec008 + 0x18 * 3), D_ALL);
-	MMIO_D(_MMIO(0xec00c + 0x18 * 3), D_ALL);
-	MMIO_D(_MMIO(0xec408), D_ALL);
-	MMIO_D(_MMIO(0xec40c), D_ALL);
-	MMIO_D(_MMIO(0xec408 + 0x18), D_ALL);
-	MMIO_D(_MMIO(0xec40c + 0x18), D_ALL);
-	MMIO_D(_MMIO(0xec408 + 0x18 * 2), D_ALL);
-	MMIO_D(_MMIO(0xec40c + 0x18 * 2), D_ALL);
-	MMIO_D(_MMIO(0xec408 + 0x18 * 3), D_ALL);
-	MMIO_D(_MMIO(0xec40c + 0x18 * 3), D_ALL);
-	MMIO_D(_MMIO(0xfc810), D_ALL);
-	MMIO_D(_MMIO(0xfc81c), D_ALL);
-	MMIO_D(_MMIO(0xfc828), D_ALL);
-	MMIO_D(_MMIO(0xfc834), D_ALL);
-	MMIO_D(_MMIO(0xfcc00), D_ALL);
-	MMIO_D(_MMIO(0xfcc0c), D_ALL);
-	MMIO_D(_MMIO(0xfcc18), D_ALL);
-	MMIO_D(_MMIO(0xfcc24), D_ALL);
-	MMIO_D(_MMIO(0xfd000), D_ALL);
-	MMIO_D(_MMIO(0xfd00c), D_ALL);
-	MMIO_D(_MMIO(0xfd018), D_ALL);
-	MMIO_D(_MMIO(0xfd024), D_ALL);
-	MMIO_D(_MMIO(0xfd034), D_ALL);
-
 	MMIO_DH(FPGA_DBG, D_ALL, NULL, fpga_dbg_mmio_write);
-	MMIO_D(_MMIO(0x2054), D_ALL);
-	MMIO_D(_MMIO(0x12054), D_ALL);
-	MMIO_D(_MMIO(0x22054), D_ALL);
-	MMIO_D(_MMIO(0x1a054), D_ALL);
-
-	MMIO_D(_MMIO(0x44070), D_ALL);
 	MMIO_DFH(_MMIO(0x215c), D_BDW_PLUS, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0x2178), D_ALL, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0x217c), D_ALL, F_CMD_ACCESS, NULL, NULL);
@@ -2957,8 +2382,6 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(_MMIO(0x1217c), D_ALL, F_CMD_ACCESS, NULL, NULL);
 
 	MMIO_F(_MMIO(0x2290), 8, F_CMD_ACCESS, 0, 0, D_BDW_PLUS, NULL, NULL);
-	MMIO_D(_MMIO(0x2b00), D_BDW_PLUS);
-	MMIO_D(_MMIO(0x2360), D_BDW_PLUS);
 	MMIO_F(_MMIO(0x5200), 32, F_CMD_ACCESS, 0, 0, D_ALL, NULL, NULL);
 	MMIO_F(_MMIO(0x5240), 32, F_CMD_ACCESS, 0, 0, D_ALL, NULL, NULL);
 	MMIO_F(_MMIO(0x5280), 16, F_CMD_ACCESS, 0, 0, D_ALL, NULL, NULL);
@@ -3006,28 +2429,23 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 
 static int init_bdw_mmio_info(struct intel_gvt *gvt)
 {
-	struct drm_i915_private *dev_priv = gvt->gt->i915;
 	int ret;
 
 	MMIO_DH(GEN8_GT_IMR(0), D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DH(GEN8_GT_IER(0), D_BDW_PLUS, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_GT_IIR(0), D_BDW_PLUS, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_GT_ISR(0), D_BDW_PLUS);
 
 	MMIO_DH(GEN8_GT_IMR(1), D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DH(GEN8_GT_IER(1), D_BDW_PLUS, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_GT_IIR(1), D_BDW_PLUS, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_GT_ISR(1), D_BDW_PLUS);
 
 	MMIO_DH(GEN8_GT_IMR(2), D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DH(GEN8_GT_IER(2), D_BDW_PLUS, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_GT_IIR(2), D_BDW_PLUS, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_GT_ISR(2), D_BDW_PLUS);
 
 	MMIO_DH(GEN8_GT_IMR(3), D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DH(GEN8_GT_IER(3), D_BDW_PLUS, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_GT_IIR(3), D_BDW_PLUS, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_GT_ISR(3), D_BDW_PLUS);
 
 	MMIO_DH(GEN8_DE_PIPE_IMR(PIPE_A), D_BDW_PLUS, NULL,
 		intel_vgpu_reg_imr_handler);
@@ -3035,7 +2453,6 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 		intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_DE_PIPE_IIR(PIPE_A), D_BDW_PLUS, NULL,
 		intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_DE_PIPE_ISR(PIPE_A), D_BDW_PLUS);
 
 	MMIO_DH(GEN8_DE_PIPE_IMR(PIPE_B), D_BDW_PLUS, NULL,
 		intel_vgpu_reg_imr_handler);
@@ -3043,7 +2460,6 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 		intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_DE_PIPE_IIR(PIPE_B), D_BDW_PLUS, NULL,
 		intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_DE_PIPE_ISR(PIPE_B), D_BDW_PLUS);
 
 	MMIO_DH(GEN8_DE_PIPE_IMR(PIPE_C), D_BDW_PLUS, NULL,
 		intel_vgpu_reg_imr_handler);
@@ -3051,22 +2467,18 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 		intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_DE_PIPE_IIR(PIPE_C), D_BDW_PLUS, NULL,
 		intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_DE_PIPE_ISR(PIPE_C), D_BDW_PLUS);
 
 	MMIO_DH(GEN8_DE_PORT_IMR, D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DH(GEN8_DE_PORT_IER, D_BDW_PLUS, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_DE_PORT_IIR, D_BDW_PLUS, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_DE_PORT_ISR, D_BDW_PLUS);
 
 	MMIO_DH(GEN8_DE_MISC_IMR, D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DH(GEN8_DE_MISC_IER, D_BDW_PLUS, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_DE_MISC_IIR, D_BDW_PLUS, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_DE_MISC_ISR, D_BDW_PLUS);
 
 	MMIO_DH(GEN8_PCU_IMR, D_BDW_PLUS, NULL, intel_vgpu_reg_imr_handler);
 	MMIO_DH(GEN8_PCU_IER, D_BDW_PLUS, NULL, intel_vgpu_reg_ier_handler);
 	MMIO_DH(GEN8_PCU_IIR, D_BDW_PLUS, NULL, intel_vgpu_reg_iir_handler);
-	MMIO_D(GEN8_PCU_ISR, D_BDW_PLUS);
 
 	MMIO_DH(GEN8_MASTER_IRQ, D_BDW_PLUS, NULL,
 		intel_vgpu_reg_master_irq_handler);
@@ -3101,21 +2513,8 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 	MMIO_RING_DFH(RING_REG, D_BDW_PLUS, F_MODE_MASK, NULL, NULL);
 #undef RING_REG
 
-	MMIO_D(PIPEMISC(PIPE_A), D_BDW_PLUS);
-	MMIO_D(PIPEMISC(PIPE_B), D_BDW_PLUS);
-	MMIO_D(PIPEMISC(PIPE_C), D_BDW_PLUS);
-	MMIO_D(_MMIO(0x1c1d0), D_BDW_PLUS);
-	MMIO_D(GEN6_MBCUNIT_SNPCR, D_BDW_PLUS);
-	MMIO_D(GEN7_MISCCPCTL, D_BDW_PLUS);
-	MMIO_D(_MMIO(0x1c054), D_BDW_PLUS);
-
 	MMIO_DH(GEN6_PCODE_MAILBOX, D_BDW_PLUS, NULL, mailbox_write);
 
-	MMIO_D(GEN8_PRIVATE_PAT_LO, D_BDW_PLUS & ~D_BXT);
-	MMIO_D(GEN8_PRIVATE_PAT_HI, D_BDW_PLUS);
-
-	MMIO_D(GAMTARBMODE, D_BDW_PLUS);
-
 #define RING_REG(base) _MMIO((base) + 0x270)
 	MMIO_RING_F(RING_REG, 32, F_CMD_ACCESS, 0, 0, D_BDW_PLUS, NULL, NULL);
 #undef RING_REG
@@ -3124,24 +2523,6 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 
 	MMIO_DFH(HDC_CHICKEN0, D_BDW_PLUS, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 
-	MMIO_D(CHICKEN_PIPESL_1(PIPE_A), D_BDW_PLUS);
-	MMIO_D(CHICKEN_PIPESL_1(PIPE_B), D_BDW_PLUS);
-	MMIO_D(CHICKEN_PIPESL_1(PIPE_C), D_BDW_PLUS);
-
-	MMIO_D(WM_MISC, D_BDW);
-	MMIO_D(_MMIO(_SRD_CTL_EDP), D_BDW);
-
-	MMIO_D(_MMIO(0x6671c), D_BDW_PLUS);
-	MMIO_D(_MMIO(0x66c00), D_BDW_PLUS);
-	MMIO_D(_MMIO(0x66c04), D_BDW_PLUS);
-
-	MMIO_D(HSW_GTT_CACHE_EN, D_BDW_PLUS);
-
-	MMIO_D(GEN8_EU_DISABLE0, D_BDW_PLUS);
-	MMIO_D(GEN8_EU_DISABLE1, D_BDW_PLUS);
-	MMIO_D(GEN8_EU_DISABLE2, D_BDW_PLUS);
-
-	MMIO_D(_MMIO(0xfdc), D_BDW_PLUS);
 	MMIO_DFH(GEN8_ROW_CHICKEN, D_BDW_PLUS, F_MODE_MASK | F_CMD_ACCESS,
 		NULL, NULL);
 	MMIO_DFH(GEN7_ROW_CHICKEN2, D_BDW_PLUS, F_MODE_MASK | F_CMD_ACCESS,
@@ -3153,27 +2534,14 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(GEN8_L3SQCREG4, D_BDW_PLUS, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0xb100), D_BDW, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0xb10c), D_BDW, F_CMD_ACCESS, NULL, NULL);
-	MMIO_D(_MMIO(0xb110), D_BDW);
-	MMIO_D(GEN9_SCRATCH_LNCF1, D_BDW_PLUS);
 
 	MMIO_F(_MMIO(0x24d0), 48, F_CMD_ACCESS | F_CMD_WRITE_PATCH, 0, 0,
 		D_BDW_PLUS, NULL, force_nonpriv_write);
 
-	MMIO_D(_MMIO(0x44484), D_BDW_PLUS);
-	MMIO_D(_MMIO(0x4448c), D_BDW_PLUS);
-
 	MMIO_DFH(_MMIO(0x83a4), D_BDW, F_CMD_ACCESS, NULL, NULL);
-	MMIO_D(GEN8_L3_LRA_1_GPGPU, D_BDW_PLUS);
 
 	MMIO_DFH(_MMIO(0x8430), D_BDW, F_CMD_ACCESS, NULL, NULL);
 
-	MMIO_D(_MMIO(0x110000), D_BDW_PLUS);
-
-	MMIO_D(_MMIO(0x48400), D_BDW_PLUS);
-
-	MMIO_D(_MMIO(0x6e570), D_BDW_PLUS);
-	MMIO_D(_MMIO(0x65f10), D_BDW_PLUS);
-
 	MMIO_DFH(_MMIO(0xe194), D_BDW_PLUS, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0xe188), D_BDW_PLUS, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(HALF_SLICE_CHICKEN2, D_BDW_PLUS, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
@@ -3213,30 +2581,15 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 	MMIO_F(DP_AUX_CH_CTL(AUX_CH_D), 6 * 4, 0, 0, 0, D_SKL_PLUS, NULL,
 						dp_aux_ch_ctl_mmio_write);
 
-	MMIO_D(HSW_PWR_WELL_CTL1, D_SKL_PLUS);
 	MMIO_DH(HSW_PWR_WELL_CTL2, D_SKL_PLUS, NULL, skl_power_well_ctl_write);
 
 	MMIO_DH(DBUF_CTL_S(0), D_SKL_PLUS, NULL, gen9_dbuf_ctl_mmio_write);
 
-	MMIO_D(GEN9_PG_ENABLE, D_SKL_PLUS);
-	MMIO_D(GEN9_MEDIA_PG_IDLE_HYSTERESIS, D_SKL_PLUS);
-	MMIO_D(GEN9_RENDER_PG_IDLE_HYSTERESIS, D_SKL_PLUS);
 	MMIO_DFH(GEN9_GAMT_ECO_REG_RW_IA, D_SKL_PLUS, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(MMCD_MISC_CTRL, D_SKL_PLUS, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DH(CHICKEN_PAR1_1, D_SKL_PLUS, NULL, NULL);
-	MMIO_D(DC_STATE_EN, D_SKL_PLUS);
-	MMIO_D(DC_STATE_DEBUG, D_SKL_PLUS);
-	MMIO_D(CDCLK_CTL, D_SKL_PLUS);
 	MMIO_DH(LCPLL1_CTL, D_SKL_PLUS, NULL, skl_lcpll_write);
 	MMIO_DH(LCPLL2_CTL, D_SKL_PLUS, NULL, skl_lcpll_write);
-	MMIO_D(_MMIO(_DPLL1_CFGCR1), D_SKL_PLUS);
-	MMIO_D(_MMIO(_DPLL2_CFGCR1), D_SKL_PLUS);
-	MMIO_D(_MMIO(_DPLL3_CFGCR1), D_SKL_PLUS);
-	MMIO_D(_MMIO(_DPLL1_CFGCR2), D_SKL_PLUS);
-	MMIO_D(_MMIO(_DPLL2_CFGCR2), D_SKL_PLUS);
-	MMIO_D(_MMIO(_DPLL3_CFGCR2), D_SKL_PLUS);
-	MMIO_D(DPLL_CTRL1, D_SKL_PLUS);
-	MMIO_D(DPLL_CTRL2, D_SKL_PLUS);
 	MMIO_DH(DPLL_STATUS, D_SKL_PLUS, dpll_status_read, NULL);
 
 	MMIO_DH(SKL_PS_WIN_POS(PIPE_A, 0), D_SKL_PLUS, NULL, pf_write);
@@ -3279,22 +2632,6 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(CUR_BUF_CFG(PIPE_B), D_SKL_PLUS, NULL, NULL);
 	MMIO_DH(CUR_BUF_CFG(PIPE_C), D_SKL_PLUS, NULL, NULL);
 
-	MMIO_F(PLANE_WM(PIPE_A, 0, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(PLANE_WM(PIPE_A, 1, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(PLANE_WM(PIPE_A, 2, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-
-	MMIO_F(PLANE_WM(PIPE_B, 0, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(PLANE_WM(PIPE_B, 1, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(PLANE_WM(PIPE_B, 2, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-
-	MMIO_F(PLANE_WM(PIPE_C, 0, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(PLANE_WM(PIPE_C, 1, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(PLANE_WM(PIPE_C, 2, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-
-	MMIO_F(CUR_WM(PIPE_A, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(CUR_WM(PIPE_B, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-	MMIO_F(CUR_WM(PIPE_C, 0), 4 * 8, 0, 0, 0, D_SKL_PLUS, NULL, NULL);
-
 	MMIO_DH(PLANE_WM_TRANS(PIPE_A, 0), D_SKL_PLUS, NULL, NULL);
 	MMIO_DH(PLANE_WM_TRANS(PIPE_A, 1), D_SKL_PLUS, NULL, NULL);
 	MMIO_DH(PLANE_WM_TRANS(PIPE_A, 2), D_SKL_PLUS, NULL, NULL);
@@ -3356,30 +2693,13 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(_MMIO(_REG_701C4(PIPE_C, 3)), D_SKL_PLUS, NULL, NULL);
 	MMIO_DH(_MMIO(_REG_701C4(PIPE_C, 4)), D_SKL_PLUS, NULL, NULL);
 
-	MMIO_D(_MMIO(_PLANE_CTL_3_A), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_CTL_3_B), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x72380), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x7239c), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_SURF_3_A), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_SURF_3_B), D_SKL_PLUS);
-
-	MMIO_D(DMC_SSP_BASE, D_SKL_PLUS);
-	MMIO_D(DMC_HTP_SKL, D_SKL_PLUS);
-	MMIO_D(DMC_LAST_WRITE, D_SKL_PLUS);
-
 	MMIO_DFH(BDW_SCRATCH1, D_SKL_PLUS, F_CMD_ACCESS, NULL, NULL);
 
-	MMIO_D(SKL_DFSM, D_SKL_PLUS);
-	MMIO_D(DISPIO_CR_TX_BMU_CR0, D_SKL_PLUS);
-
 	MMIO_F(GEN9_GFX_MOCS(0), 0x7f8, F_CMD_ACCESS, 0, 0, D_SKL_PLUS,
 		NULL, NULL);
 	MMIO_F(GEN7_L3CNTLREG2, 0x80, F_CMD_ACCESS, 0, 0, D_SKL_PLUS,
 		NULL, NULL);
 
-	MMIO_D(RPM_CONFIG0, D_SKL_PLUS);
-	MMIO_D(_MMIO(0xd08), D_SKL_PLUS);
-	MMIO_D(RC6_LOCATION, D_SKL_PLUS);
 	MMIO_DFH(GEN7_FF_SLICE_CS_CHICKEN1, D_SKL_PLUS,
 		 F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(GEN9_CS_DEBUG_MODE1, D_SKL_PLUS, F_MODE_MASK | F_CMD_ACCESS,
@@ -3396,40 +2716,9 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(_MMIO(0x4dfc), D_SKL_PLUS, F_PM_SAVE,
 		 NULL, gen9_trtt_chicken_write);
 
-	MMIO_D(_MMIO(0x46430), D_SKL_PLUS);
-
-	MMIO_D(_MMIO(0x46520), D_SKL_PLUS);
-
-	MMIO_D(_MMIO(0xc403c), D_SKL_PLUS);
 	MMIO_DFH(GEN8_GARBCNTL, D_SKL_PLUS, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DH(DMA_CTRL, D_SKL_PLUS, NULL, dma_ctrl_write);
 
-	MMIO_D(_MMIO(0x65900), D_SKL_PLUS);
-	MMIO_D(GEN6_STOLEN_RESERVED, D_SKL_PLUS);
-	MMIO_D(_MMIO(0x4068), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x67054), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x6e560), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x6e554), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x2b20), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x65f00), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x65f08), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x320f0), D_SKL_PLUS);
-
-	MMIO_D(_MMIO(0x70034), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x71034), D_SKL_PLUS);
-	MMIO_D(_MMIO(0x72034), D_SKL_PLUS);
-
-	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_A)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_B)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_C)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_A)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_B)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_C)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_A)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_B)), D_SKL_PLUS);
-	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_C)), D_SKL_PLUS);
-
-	MMIO_D(_MMIO(0x44500), D_SKL_PLUS);
 #define CSFE_CHICKEN1_REG(base) _MMIO((base) + 0xD4)
 	MMIO_RING_DFH(CSFE_CHICKEN1_REG, D_SKL_PLUS, F_MODE_MASK | F_CMD_ACCESS,
 		      NULL, csfe_chicken1_mmio_write);
@@ -3440,7 +2729,6 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 		 NULL, NULL);
 
 	MMIO_DFH(GAMT_CHKN_BIT_REG, D_KBL | D_CFL, F_CMD_ACCESS, NULL, NULL);
-	MMIO_D(GEN9_CTX_PREEMPT_REG, D_SKL_PLUS & ~D_BXT);
 	MMIO_DFH(_MMIO(0xe4cc), D_BDW_PLUS, F_CMD_ACCESS, NULL, NULL);
 
 	return 0;
@@ -3448,43 +2736,13 @@ static int init_skl_mmio_info(struct intel_gvt *gvt)
 
 static int init_bxt_mmio_info(struct intel_gvt *gvt)
 {
-	struct drm_i915_private *dev_priv = gvt->gt->i915;
 	int ret;
 
-	MMIO_F(_MMIO(0x80000), 0x3000, 0, 0, 0, D_BXT, NULL, NULL);
-
-	MMIO_D(GEN7_SAMPLER_INSTDONE, D_BXT);
-	MMIO_D(GEN7_ROW_INSTDONE, D_BXT);
-	MMIO_D(GEN8_FAULT_TLB_DATA0, D_BXT);
-	MMIO_D(GEN8_FAULT_TLB_DATA1, D_BXT);
-	MMIO_D(ERROR_GEN6, D_BXT);
-	MMIO_D(DONE_REG, D_BXT);
-	MMIO_D(EIR, D_BXT);
-	MMIO_D(PGTBL_ER, D_BXT);
-	MMIO_D(_MMIO(0x4194), D_BXT);
-	MMIO_D(_MMIO(0x4294), D_BXT);
-	MMIO_D(_MMIO(0x4494), D_BXT);
-
-	MMIO_RING_D(RING_PSMI_CTL, D_BXT);
-	MMIO_RING_D(RING_DMA_FADD, D_BXT);
-	MMIO_RING_D(RING_DMA_FADD_UDW, D_BXT);
-	MMIO_RING_D(RING_IPEHR, D_BXT);
-	MMIO_RING_D(RING_INSTPS, D_BXT);
-	MMIO_RING_D(RING_BBADDR_UDW, D_BXT);
-	MMIO_RING_D(RING_BBSTATE, D_BXT);
-	MMIO_RING_D(RING_IPEIR, D_BXT);
-
-	MMIO_F(SOFT_SCRATCH(0), 16 * 4, 0, 0, 0, D_BXT, NULL, NULL);
-
 	MMIO_DH(BXT_P_CR_GT_DISP_PWRON, D_BXT, NULL, bxt_gt_disp_pwron_write);
-	MMIO_D(BXT_RP_STATE_CAP, D_BXT);
 	MMIO_DH(BXT_PHY_CTL_FAMILY(DPIO_PHY0), D_BXT,
 		NULL, bxt_phy_ctl_family_write);
 	MMIO_DH(BXT_PHY_CTL_FAMILY(DPIO_PHY1), D_BXT,
 		NULL, bxt_phy_ctl_family_write);
-	MMIO_D(BXT_PHY_CTL(PORT_A), D_BXT);
-	MMIO_D(BXT_PHY_CTL(PORT_B), D_BXT);
-	MMIO_D(BXT_PHY_CTL(PORT_C), D_BXT);
 	MMIO_DH(BXT_PORT_PLL_ENABLE(PORT_A), D_BXT,
 		NULL, bxt_port_pll_enable_write);
 	MMIO_DH(BXT_PORT_PLL_ENABLE(PORT_B), D_BXT,
@@ -3492,128 +2750,19 @@ static int init_bxt_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(BXT_PORT_PLL_ENABLE(PORT_C), D_BXT, NULL,
 		bxt_port_pll_enable_write);
 
-	MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY0), D_BXT);
-	MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY0), D_BXT);
-
-	MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY1), D_BXT);
-	MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY1), D_BXT);
-
-	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH0), D_BXT);
 	MMIO_DH(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0), D_BXT,
 		NULL, bxt_pcs_dw12_grp_write);
-	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH0), D_BXT);
 	MMIO_DH(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0), D_BXT,
 		bxt_port_tx_dw3_read, NULL);
-	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 1), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 2), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 3), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 0), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 1), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 2), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 3), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 6), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 8), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 9), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 10), D_BXT);
-
-	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH1), D_BXT);
 	MMIO_DH(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH1), D_BXT,
 		NULL, bxt_pcs_dw12_grp_write);
-	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH1), D_BXT);
 	MMIO_DH(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH1), D_BXT,
 		bxt_port_tx_dw3_read, NULL);
-	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH1), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 1), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 2), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 3), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 0), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 1), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 2), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 3), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 6), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 8), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 9), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 10), D_BXT);
-
-	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY1, DPIO_CH0), D_BXT);
 	MMIO_DH(BXT_PORT_PCS_DW12_GRP(DPIO_PHY1, DPIO_CH0), D_BXT,
 		NULL, bxt_pcs_dw12_grp_write);
-	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY1, DPIO_CH0), D_BXT);
 	MMIO_DH(BXT_PORT_TX_DW3_LN0(DPIO_PHY1, DPIO_CH0), D_BXT,
 		bxt_port_tx_dw3_read, NULL);
-	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY1, DPIO_CH0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 0), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 1), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 2), D_BXT);
-	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 3), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 0), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 1), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 2), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 3), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 6), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 8), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 9), D_BXT);
-	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 10), D_BXT);
-
-	MMIO_D(BXT_DE_PLL_CTL, D_BXT);
 	MMIO_DH(BXT_DE_PLL_ENABLE, D_BXT, NULL, bxt_de_pll_enable_write);
-	MMIO_D(BXT_DSI_PLL_CTL, D_BXT);
-	MMIO_D(BXT_DSI_PLL_ENABLE, D_BXT);
-
-	MMIO_D(GEN9_CLKGATE_DIS_0, D_BXT);
-	MMIO_D(GEN9_CLKGATE_DIS_4, D_BXT);
-
-	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_A), D_BXT);
-	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_B), D_BXT);
-	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_C), D_BXT);
-
-	MMIO_D(RC6_CTX_BASE, D_BXT);
-
-	MMIO_D(GEN8_PUSHBUS_CONTROL, D_BXT);
-	MMIO_D(GEN8_PUSHBUS_ENABLE, D_BXT);
-	MMIO_D(GEN8_PUSHBUS_SHIFT, D_BXT);
-	MMIO_D(GEN6_GFXPAUSE, D_BXT);
 	MMIO_DFH(GEN8_L3SQCREG1, D_BXT, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(GEN8_L3CNTLREG, D_BXT, F_CMD_ACCESS, NULL, NULL);
 	MMIO_DFH(_MMIO(0x20D8), D_BXT, F_CMD_ACCESS, NULL, NULL);
@@ -3633,17 +2782,14 @@ static int init_bxt_mmio_info(struct intel_gvt *gvt)
 	return 0;
 }
 
-static const struct gvt_mmio_block *find_mmio_block(struct intel_gvt *gvt,
-						    unsigned int offset)
+static struct gvt_mmio_block *find_mmio_block(struct intel_gvt *gvt,
+					      unsigned int offset)
 {
-	unsigned long device = intel_gvt_get_device_type(gvt);
-	const struct gvt_mmio_block *block = gvt->mmio.mmio_block;
+	struct gvt_mmio_block *block = gvt->mmio.mmio_block;
 	int num = gvt->mmio.num_mmio_block;
 	int i;
 
 	for (i = 0; i < num; i++, block++) {
-		if (!(device & block->device))
-			continue;
 		if (offset >= i915_mmio_reg_offset(block->offset) &&
 		    offset < i915_mmio_reg_offset(block->offset) + block->size)
 			return block;
@@ -3668,23 +2814,117 @@ void intel_gvt_clean_mmio_info(struct intel_gvt *gvt)
 	hash_for_each_safe(gvt->mmio.mmio_info_table, i, tmp, e, node)
 		kfree(e);
 
+	kfree(gvt->mmio.mmio_block);
+	gvt->mmio.mmio_block = NULL;
+	gvt->mmio.num_mmio_block = 0;
+
 	vfree(gvt->mmio.mmio_attribute);
 	gvt->mmio.mmio_attribute = NULL;
 }
 
-/* Special MMIO blocks. registers in MMIO block ranges should not be command
- * accessible (should have no F_CMD_ACCESS flag).
- * otherwise, need to update cmd_reg_handler in cmd_parser.c
- */
-static const struct gvt_mmio_block mmio_blocks[] = {
-	{D_SKL_PLUS, _MMIO(DMC_MMIO_START_RANGE), 0x3000, NULL, NULL},
-	{D_ALL, _MMIO(MCHBAR_MIRROR_BASE_SNB), 0x40000, NULL, NULL},
-	{D_ALL, _MMIO(VGT_PVINFO_PAGE), VGT_PVINFO_SIZE,
-		pvinfo_mmio_read, pvinfo_mmio_write},
-	{D_ALL, LGC_PALETTE(PIPE_A, 0), 1024, NULL, NULL},
-	{D_ALL, LGC_PALETTE(PIPE_B, 0), 1024, NULL, NULL},
-	{D_ALL, LGC_PALETTE(PIPE_C, 0), 1024, NULL, NULL},
-};
+static int handle_mmio(struct intel_gvt_mmio_table_iter *iter, u32 offset,
+		       u32 size)
+{
+	struct intel_gvt *gvt = iter->data;
+	struct intel_gvt_mmio_info *info, *p;
+	u32 start, end, i;
+
+	if (WARN_ON(!IS_ALIGNED(offset, 4)))
+		return -EINVAL;
+
+	start = offset;
+	end = offset + size;
+
+	for (i = start; i < end; i += 4) {
+		p = intel_gvt_find_mmio_info(gvt, i);
+		if (p) {
+			WARN(1, "dup mmio definition offset %x\n",
+				info->offset);
+
+			/* We return -EEXIST here to make GVT-g load fail.
+			 * So duplicated MMIO can be found as soon as
+			 * possible.
+			 */
+			return -EEXIST;
+		}
+
+		info = kzalloc(sizeof(*info), GFP_KERNEL);
+		if (!info)
+			return -ENOMEM;
+
+		info->offset = i;
+		info->read = intel_vgpu_default_mmio_read;
+		info->write = intel_vgpu_default_mmio_write;
+		INIT_HLIST_NODE(&info->node);
+		hash_add(gvt->mmio.mmio_info_table, &info->node, info->offset);
+		gvt->mmio.num_tracked_mmio++;
+	}
+	return 0;
+}
+
+static int handle_mmio_block(struct intel_gvt_mmio_table_iter *iter,
+			     u32 offset, u32 size)
+{
+	struct intel_gvt *gvt = iter->data;
+	struct gvt_mmio_block *block = gvt->mmio.mmio_block;
+	void *ret;
+
+	ret = krealloc(block,
+			 (gvt->mmio.num_mmio_block + 1) * sizeof(*block),
+			 GFP_KERNEL);
+	if (!ret)
+		return -ENOMEM;
+
+	gvt->mmio.mmio_block = block = ret;
+
+	memset(block, 0, sizeof(*block));
+
+	block += gvt->mmio.num_mmio_block;
+
+	block->offset = _MMIO(offset);
+	block->size = size;
+
+	gvt->mmio.num_mmio_block++;
+
+	return 0;
+}
+
+static int handle_mmio_cb(struct intel_gvt_mmio_table_iter *iter, u32 offset,
+			  u32 size)
+{
+	if (size < 1024 || offset == i915_mmio_reg_offset(GEN9_GFX_MOCS(0)))
+		return handle_mmio(iter, offset, size);
+	else
+		return handle_mmio_block(iter, offset, size);
+}
+
+static int init_mmio_info(struct intel_gvt *gvt)
+{
+	struct intel_gvt_mmio_table_iter iter = {
+		.i915 = gvt->gt->i915,
+		.data = gvt,
+		.handle_mmio_cb = handle_mmio_cb,
+	};
+
+	return intel_gvt_iterate_mmio_table(&iter);
+}
+
+static int init_mmio_block_handlers(struct intel_gvt *gvt)
+{
+	struct gvt_mmio_block *block;
+
+	block = find_mmio_block(gvt, VGT_PVINFO_PAGE);
+	if (!block) {
+		WARN(1, "fail to assign handlers to mmio block %x\n",
+		     i915_mmio_reg_offset(block->offset));
+		return -ENODEV;
+	}
+
+	block->read = pvinfo_mmio_read;
+	block->write = pvinfo_mmio_write;
+
+	return 0;
+}
 
 /**
  * intel_gvt_setup_mmio_info - setup MMIO information table for GVT device
@@ -3707,6 +2947,14 @@ int intel_gvt_setup_mmio_info(struct intel_gvt *gvt)
 	if (!gvt->mmio.mmio_attribute)
 		return -ENOMEM;
 
+	ret = init_mmio_info(gvt);
+	if (ret)
+		goto err;
+
+	ret = init_mmio_block_handlers(gvt);
+	if (ret)
+		goto err;
+
 	ret = init_generic_mmio_info(gvt);
 	if (ret)
 		goto err;
@@ -3737,9 +2985,6 @@ int intel_gvt_setup_mmio_info(struct intel_gvt *gvt)
 			goto err;
 	}
 
-	gvt->mmio.mmio_block = mmio_blocks;
-	gvt->mmio.num_mmio_block = ARRAY_SIZE(mmio_blocks);
-
 	return 0;
 err:
 	intel_gvt_clean_mmio_info(gvt);
@@ -3759,7 +3004,7 @@ int intel_gvt_for_each_tracked_mmio(struct intel_gvt *gvt,
 	int (*handler)(struct intel_gvt *gvt, u32 offset, void *data),
 	void *data)
 {
-	const struct gvt_mmio_block *block = gvt->mmio.mmio_block;
+	struct gvt_mmio_block *block = gvt->mmio.mmio_block;
 	struct intel_gvt_mmio_info *e;
 	int i, j, ret;
 
@@ -3775,9 +3020,7 @@ int intel_gvt_for_each_tracked_mmio(struct intel_gvt *gvt,
 			continue;
 
 		for (j = 0; j < block->size; j += 4) {
-			ret = handler(gvt,
-				      i915_mmio_reg_offset(block->offset) + j,
-				      data);
+			ret = handler(gvt, i915_mmio_reg_offset(block->offset) + j, data);
 			if (ret)
 				return ret;
 		}
@@ -3877,7 +3120,7 @@ int intel_vgpu_mmio_reg_rw(struct intel_vgpu *vgpu, unsigned int offset,
 	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
 	struct intel_gvt *gvt = vgpu->gvt;
 	struct intel_gvt_mmio_info *mmio_info;
-	const struct gvt_mmio_block *mmio_block;
+	struct gvt_mmio_block *mmio_block;
 	gvt_mmio_func func;
 	int ret;
 
diff --git a/drivers/gpu/drm/i915/gvt/mmio.h b/drivers/gpu/drm/i915/gvt/mmio.h
index 7c26af39fbfc..bba154e38705 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.h
+++ b/drivers/gpu/drm/i915/gvt/mmio.h
@@ -72,7 +72,6 @@ struct intel_gvt_mmio_info {
 const struct intel_engine_cs *
 intel_gvt_render_mmio_to_engine(struct intel_gvt *gvt, unsigned int reg);
 unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt);
-bool intel_gvt_match_device(struct intel_gvt *gvt, unsigned long device);
 
 int intel_gvt_setup_mmio_info(struct intel_gvt *gvt);
 void intel_gvt_clean_mmio_info(struct intel_gvt *gvt);
diff --git a/drivers/gpu/drm/i915/gvt/reg.h b/drivers/gpu/drm/i915/gvt/reg.h
index 7d666d34f9ff..d8216c63c39a 100644
--- a/drivers/gpu/drm/i915/gvt/reg.h
+++ b/drivers/gpu/drm/i915/gvt/reg.h
@@ -132,6 +132,13 @@
 #define RING_GFX_MODE(base)	_MMIO((base) + 0x29c)
 #define VF_GUARDBAND		_MMIO(0x83a4)
 
-
 #define BCS_TILE_REGISTER_VAL_OFFSET (0x43*4)
+
+/* XXX FIXME i915 has changed PP_XXX definition */
+#define PCH_PP_STATUS  _MMIO(0xc7200)
+#define PCH_PP_CONTROL _MMIO(0xc7204)
+#define PCH_PP_ON_DELAYS _MMIO(0xc7208)
+#define PCH_PP_OFF_DELAYS _MMIO(0xc720c)
+#define PCH_PP_DIVISOR _MMIO(0xc7210)
+
 #endif
diff --git a/drivers/gpu/drm/i915/intel_gvt.h b/drivers/gpu/drm/i915/intel_gvt.h
index d7d3fb6186fd..7665d7cf0bdd 100644
--- a/drivers/gpu/drm/i915/intel_gvt.h
+++ b/drivers/gpu/drm/i915/intel_gvt.h
@@ -26,7 +26,17 @@
 
 struct drm_i915_private;
 
+#include <linux/kernel.h>
+
 #ifdef CONFIG_DRM_I915_GVT
+
+struct intel_gvt_mmio_table_iter {
+	struct drm_i915_private *i915;
+	void *data;
+	int (*handle_mmio_cb)(struct intel_gvt_mmio_table_iter *iter,
+			      u32 offset, u32 size);
+};
+
 int intel_gvt_init(struct drm_i915_private *dev_priv);
 void intel_gvt_driver_remove(struct drm_i915_private *dev_priv);
 int intel_gvt_init_device(struct drm_i915_private *dev_priv);
@@ -34,6 +44,7 @@ void intel_gvt_clean_device(struct drm_i915_private *dev_priv);
 int intel_gvt_init_host(void);
 void intel_gvt_sanitize_options(struct drm_i915_private *dev_priv);
 void intel_gvt_resume(struct drm_i915_private *dev_priv);
+int intel_gvt_iterate_mmio_table(struct intel_gvt_mmio_table_iter *iter);
 #else
 static inline int intel_gvt_init(struct drm_i915_private *dev_priv)
 {
@@ -51,6 +62,16 @@ static inline void intel_gvt_sanitize_options(struct drm_i915_private *dev_priv)
 static inline void intel_gvt_resume(struct drm_i915_private *dev_priv)
 {
 }
+
+unsigned long intel_gvt_get_device_type(struct drm_i915_private *i915)
+{
+	return 0;
+}
+
+int intel_gvt_iterate_mmio_table(struct intel_gvt_mmio_table_iter *iter)
+{
+	return 0;
+}
 #endif
 
 #endif /* _INTEL_GVT_H_ */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
new file mode 100644
index 000000000000..d29491a6d209
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -0,0 +1,1290 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2020 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "display/vlv_dsi_pll_regs.h"
+#include "gt/intel_gt_regs.h"
+#include "intel_mchbar_regs.h"
+#include "i915_pvinfo.h"
+#include "intel_gvt.h"
+#include "gvt/gvt.h"
+
+#define MMIO_F(reg, s) do { \
+	int ret; \
+	ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
+	if (ret) \
+		return ret; \
+} while (0)
+
+#define MMIO_D(reg) MMIO_F(reg, 4)
+
+#define MMIO_RING_F(prefix, s) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s); \
+	MMIO_F(prefix(BLT_RING_BASE), s); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s); \
+	if (HAS_ENGINE(to_gt(iter->i915), VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s); \
+} while (0)
+
+#define MMIO_RING_D(prefix) \
+	MMIO_RING_F(prefix, 4)
+
+static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
+{
+	struct drm_i915_private *dev_priv = iter->i915;
+
+	MMIO_RING_D(RING_IMR);
+	MMIO_D(SDEIMR);
+	MMIO_D(SDEIER);
+	MMIO_D(SDEIIR);
+	MMIO_D(SDEISR);
+	MMIO_RING_D(RING_HWSTAM);
+	MMIO_D(BSD_HWS_PGA_GEN7);
+	MMIO_D(BLT_HWS_PGA_GEN7);
+	MMIO_D(VEBOX_HWS_PGA_GEN7);
+
+#define RING_REG(base) _MMIO((base) + 0x28)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+
+#define RING_REG(base) _MMIO((base) + 0x134)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+
+#define RING_REG(base) _MMIO((base) + 0x6c)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+	MMIO_D(_MMIO(0x2148));
+	MMIO_D(CCID(RENDER_RING_BASE));
+	MMIO_D(_MMIO(0x12198));
+	MMIO_D(GEN7_CXT_SIZE);
+	MMIO_RING_D(RING_TAIL);
+	MMIO_RING_D(RING_HEAD);
+	MMIO_RING_D(RING_CTL);
+	MMIO_RING_D(RING_ACTHD);
+	MMIO_RING_D(RING_START);
+
+	/* RING MODE */
+#define RING_REG(base) _MMIO((base) + 0x29c)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+
+	MMIO_RING_D(RING_MI_MODE);
+	MMIO_RING_D(RING_INSTPM);
+	MMIO_RING_D(RING_TIMESTAMP);
+	MMIO_RING_D(RING_TIMESTAMP_UDW);
+	MMIO_D(GEN7_GT_MODE);
+	MMIO_D(CACHE_MODE_0_GEN7);
+	MMIO_D(CACHE_MODE_1);
+	MMIO_D(CACHE_MODE_0);
+	MMIO_D(_MMIO(0x2124));
+	MMIO_D(_MMIO(0x20dc));
+	MMIO_D(_3D_CHICKEN3);
+	MMIO_D(_MMIO(0x2088));
+	MMIO_D(FF_SLICE_CS_CHICKEN2);
+	MMIO_D(_MMIO(0x2470));
+	MMIO_D(GAM_ECOCHK);
+	MMIO_D(GEN7_COMMON_SLICE_CHICKEN1);
+	MMIO_D(COMMON_SLICE_CHICKEN2);
+	MMIO_D(_MMIO(0x9030));
+	MMIO_D(_MMIO(0x20a0));
+	MMIO_D(_MMIO(0x2420));
+	MMIO_D(_MMIO(0x2430));
+	MMIO_D(_MMIO(0x2434));
+	MMIO_D(_MMIO(0x2438));
+	MMIO_D(_MMIO(0x243c));
+	MMIO_D(_MMIO(0x7018));
+	MMIO_D(HALF_SLICE_CHICKEN3);
+	MMIO_D(GEN7_HALF_SLICE_CHICKEN1);
+	/* display */
+	MMIO_F(_MMIO(0x60220), 0x20);
+	MMIO_D(_MMIO(0x602a0));
+	MMIO_D(_MMIO(0x65050));
+	MMIO_D(_MMIO(0x650b4));
+	MMIO_D(_MMIO(0xc4040));
+	MMIO_D(DERRMR);
+	MMIO_D(PIPEDSL(PIPE_A));
+	MMIO_D(PIPEDSL(PIPE_B));
+	MMIO_D(PIPEDSL(PIPE_C));
+	MMIO_D(PIPEDSL(_PIPE_EDP));
+	MMIO_D(PIPECONF(PIPE_A));
+	MMIO_D(PIPECONF(PIPE_B));
+	MMIO_D(PIPECONF(PIPE_C));
+	MMIO_D(PIPECONF(_PIPE_EDP));
+	MMIO_D(PIPESTAT(PIPE_A));
+	MMIO_D(PIPESTAT(PIPE_B));
+	MMIO_D(PIPESTAT(PIPE_C));
+	MMIO_D(PIPESTAT(_PIPE_EDP));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_A));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(_PIPE_EDP));
+	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_A));
+	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_B));
+	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_C));
+	MMIO_D(PIPE_FRMCOUNT_G4X(_PIPE_EDP));
+	MMIO_D(CURCNTR(PIPE_A));
+	MMIO_D(CURCNTR(PIPE_B));
+	MMIO_D(CURCNTR(PIPE_C));
+	MMIO_D(CURPOS(PIPE_A));
+	MMIO_D(CURPOS(PIPE_B));
+	MMIO_D(CURPOS(PIPE_C));
+	MMIO_D(CURBASE(PIPE_A));
+	MMIO_D(CURBASE(PIPE_B));
+	MMIO_D(CURBASE(PIPE_C));
+	MMIO_D(CUR_FBC_CTL(PIPE_A));
+	MMIO_D(CUR_FBC_CTL(PIPE_B));
+	MMIO_D(CUR_FBC_CTL(PIPE_C));
+	MMIO_D(_MMIO(0x700ac));
+	MMIO_D(_MMIO(0x710ac));
+	MMIO_D(_MMIO(0x720ac));
+	MMIO_D(_MMIO(0x70090));
+	MMIO_D(_MMIO(0x70094));
+	MMIO_D(_MMIO(0x70098));
+	MMIO_D(_MMIO(0x7009c));
+	MMIO_D(DSPCNTR(PIPE_A));
+	MMIO_D(DSPADDR(PIPE_A));
+	MMIO_D(DSPSTRIDE(PIPE_A));
+	MMIO_D(DSPPOS(PIPE_A));
+	MMIO_D(DSPSIZE(PIPE_A));
+	MMIO_D(DSPSURF(PIPE_A));
+	MMIO_D(DSPOFFSET(PIPE_A));
+	MMIO_D(DSPSURFLIVE(PIPE_A));
+	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
+	MMIO_D(DSPCNTR(PIPE_B));
+	MMIO_D(DSPADDR(PIPE_B));
+	MMIO_D(DSPSTRIDE(PIPE_B));
+	MMIO_D(DSPPOS(PIPE_B));
+	MMIO_D(DSPSIZE(PIPE_B));
+	MMIO_D(DSPSURF(PIPE_B));
+	MMIO_D(DSPOFFSET(PIPE_B));
+	MMIO_D(DSPSURFLIVE(PIPE_B));
+	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
+	MMIO_D(DSPCNTR(PIPE_C));
+	MMIO_D(DSPADDR(PIPE_C));
+	MMIO_D(DSPSTRIDE(PIPE_C));
+	MMIO_D(DSPPOS(PIPE_C));
+	MMIO_D(DSPSIZE(PIPE_C));
+	MMIO_D(DSPSURF(PIPE_C));
+	MMIO_D(DSPOFFSET(PIPE_C));
+	MMIO_D(DSPSURFLIVE(PIPE_C));
+	MMIO_D(REG_50080(PIPE_C, PLANE_PRIMARY));
+	MMIO_D(SPRCTL(PIPE_A));
+	MMIO_D(SPRLINOFF(PIPE_A));
+	MMIO_D(SPRSTRIDE(PIPE_A));
+	MMIO_D(SPRPOS(PIPE_A));
+	MMIO_D(SPRSIZE(PIPE_A));
+	MMIO_D(SPRKEYVAL(PIPE_A));
+	MMIO_D(SPRKEYMSK(PIPE_A));
+	MMIO_D(SPRSURF(PIPE_A));
+	MMIO_D(SPRKEYMAX(PIPE_A));
+	MMIO_D(SPROFFSET(PIPE_A));
+	MMIO_D(SPRSCALE(PIPE_A));
+	MMIO_D(SPRSURFLIVE(PIPE_A));
+	MMIO_D(REG_50080(PIPE_A, PLANE_SPRITE0));
+	MMIO_D(SPRCTL(PIPE_B));
+	MMIO_D(SPRLINOFF(PIPE_B));
+	MMIO_D(SPRSTRIDE(PIPE_B));
+	MMIO_D(SPRPOS(PIPE_B));
+	MMIO_D(SPRSIZE(PIPE_B));
+	MMIO_D(SPRKEYVAL(PIPE_B));
+	MMIO_D(SPRKEYMSK(PIPE_B));
+	MMIO_D(SPRSURF(PIPE_B));
+	MMIO_D(SPRKEYMAX(PIPE_B));
+	MMIO_D(SPROFFSET(PIPE_B));
+	MMIO_D(SPRSCALE(PIPE_B));
+	MMIO_D(SPRSURFLIVE(PIPE_B));
+	MMIO_D(REG_50080(PIPE_B, PLANE_SPRITE0));
+	MMIO_D(SPRCTL(PIPE_C));
+	MMIO_D(SPRLINOFF(PIPE_C));
+	MMIO_D(SPRSTRIDE(PIPE_C));
+	MMIO_D(SPRPOS(PIPE_C));
+	MMIO_D(SPRSIZE(PIPE_C));
+	MMIO_D(SPRKEYVAL(PIPE_C));
+	MMIO_D(SPRKEYMSK(PIPE_C));
+	MMIO_D(SPRSURF(PIPE_C));
+	MMIO_D(SPRKEYMAX(PIPE_C));
+	MMIO_D(SPROFFSET(PIPE_C));
+	MMIO_D(SPRSCALE(PIPE_C));
+	MMIO_D(SPRSURFLIVE(PIPE_C));
+	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
+	MMIO_D(HTOTAL(TRANSCODER_A));
+	MMIO_D(HBLANK(TRANSCODER_A));
+	MMIO_D(HSYNC(TRANSCODER_A));
+	MMIO_D(VTOTAL(TRANSCODER_A));
+	MMIO_D(VBLANK(TRANSCODER_A));
+	MMIO_D(VSYNC(TRANSCODER_A));
+	MMIO_D(BCLRPAT(TRANSCODER_A));
+	MMIO_D(VSYNCSHIFT(TRANSCODER_A));
+	MMIO_D(PIPESRC(TRANSCODER_A));
+	MMIO_D(HTOTAL(TRANSCODER_B));
+	MMIO_D(HBLANK(TRANSCODER_B));
+	MMIO_D(HSYNC(TRANSCODER_B));
+	MMIO_D(VTOTAL(TRANSCODER_B));
+	MMIO_D(VBLANK(TRANSCODER_B));
+	MMIO_D(VSYNC(TRANSCODER_B));
+	MMIO_D(BCLRPAT(TRANSCODER_B));
+	MMIO_D(VSYNCSHIFT(TRANSCODER_B));
+	MMIO_D(PIPESRC(TRANSCODER_B));
+	MMIO_D(HTOTAL(TRANSCODER_C));
+	MMIO_D(HBLANK(TRANSCODER_C));
+	MMIO_D(HSYNC(TRANSCODER_C));
+	MMIO_D(VTOTAL(TRANSCODER_C));
+	MMIO_D(VBLANK(TRANSCODER_C));
+	MMIO_D(VSYNC(TRANSCODER_C));
+	MMIO_D(BCLRPAT(TRANSCODER_C));
+	MMIO_D(VSYNCSHIFT(TRANSCODER_C));
+	MMIO_D(PIPESRC(TRANSCODER_C));
+	MMIO_D(HTOTAL(TRANSCODER_EDP));
+	MMIO_D(HBLANK(TRANSCODER_EDP));
+	MMIO_D(HSYNC(TRANSCODER_EDP));
+	MMIO_D(VTOTAL(TRANSCODER_EDP));
+	MMIO_D(VBLANK(TRANSCODER_EDP));
+	MMIO_D(VSYNC(TRANSCODER_EDP));
+	MMIO_D(BCLRPAT(TRANSCODER_EDP));
+	MMIO_D(VSYNCSHIFT(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_M1(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_N1(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_M2(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_M1(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_N1(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_M2(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_M1(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_N1(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
+	MMIO_D(PF_CTL(PIPE_A));
+	MMIO_D(PF_WIN_SZ(PIPE_A));
+	MMIO_D(PF_WIN_POS(PIPE_A));
+	MMIO_D(PF_VSCALE(PIPE_A));
+	MMIO_D(PF_HSCALE(PIPE_A));
+	MMIO_D(PF_CTL(PIPE_B));
+	MMIO_D(PF_WIN_SZ(PIPE_B));
+	MMIO_D(PF_WIN_POS(PIPE_B));
+	MMIO_D(PF_VSCALE(PIPE_B));
+	MMIO_D(PF_HSCALE(PIPE_B));
+	MMIO_D(PF_CTL(PIPE_C));
+	MMIO_D(PF_WIN_SZ(PIPE_C));
+	MMIO_D(PF_WIN_POS(PIPE_C));
+	MMIO_D(PF_VSCALE(PIPE_C));
+	MMIO_D(PF_HSCALE(PIPE_C));
+	MMIO_D(WM0_PIPE_ILK(PIPE_A));
+	MMIO_D(WM0_PIPE_ILK(PIPE_B));
+	MMIO_D(WM0_PIPE_ILK(PIPE_C));
+	MMIO_D(WM1_LP_ILK);
+	MMIO_D(WM2_LP_ILK);
+	MMIO_D(WM3_LP_ILK);
+	MMIO_D(WM1S_LP_ILK);
+	MMIO_D(WM2S_LP_IVB);
+	MMIO_D(WM3S_LP_IVB);
+	MMIO_D(BLC_PWM_CPU_CTL2);
+	MMIO_D(BLC_PWM_CPU_CTL);
+	MMIO_D(BLC_PWM_PCH_CTL1);
+	MMIO_D(BLC_PWM_PCH_CTL2);
+	MMIO_D(_MMIO(0x48268));
+	MMIO_F(PCH_GMBUS0, 4 * 4);
+	MMIO_F(PCH_GPIO_BASE, 6 * 4);
+	MMIO_F(_MMIO(0xe4f00), 0x28);
+	MMIO_D(_MMIO(_PCH_TRANSACONF));
+	MMIO_D(_MMIO(_PCH_TRANSBCONF));
+	MMIO_D(FDI_RX_IIR(PIPE_A));
+	MMIO_D(FDI_RX_IIR(PIPE_B));
+	MMIO_D(FDI_RX_IIR(PIPE_C));
+	MMIO_D(FDI_RX_IMR(PIPE_A));
+	MMIO_D(FDI_RX_IMR(PIPE_B));
+	MMIO_D(FDI_RX_IMR(PIPE_C));
+	MMIO_D(FDI_RX_CTL(PIPE_A));
+	MMIO_D(FDI_RX_CTL(PIPE_B));
+	MMIO_D(FDI_RX_CTL(PIPE_C));
+	MMIO_D(_MMIO(_PCH_TRANS_HTOTAL_A));
+	MMIO_D(_MMIO(_PCH_TRANS_HBLANK_A));
+	MMIO_D(_MMIO(_PCH_TRANS_HSYNC_A));
+	MMIO_D(_MMIO(_PCH_TRANS_VTOTAL_A));
+	MMIO_D(_MMIO(_PCH_TRANS_VBLANK_A));
+	MMIO_D(_MMIO(_PCH_TRANS_VSYNC_A));
+	MMIO_D(_MMIO(_PCH_TRANS_VSYNCSHIFT_A));
+	MMIO_D(_MMIO(_PCH_TRANS_HTOTAL_B));
+	MMIO_D(_MMIO(_PCH_TRANS_HBLANK_B));
+	MMIO_D(_MMIO(_PCH_TRANS_HSYNC_B));
+	MMIO_D(_MMIO(_PCH_TRANS_VTOTAL_B));
+	MMIO_D(_MMIO(_PCH_TRANS_VBLANK_B));
+	MMIO_D(_MMIO(_PCH_TRANS_VSYNC_B));
+	MMIO_D(_MMIO(_PCH_TRANS_VSYNCSHIFT_B));
+	MMIO_D(_MMIO(_PCH_TRANSA_DATA_M1));
+	MMIO_D(_MMIO(_PCH_TRANSA_DATA_N1));
+	MMIO_D(_MMIO(_PCH_TRANSA_DATA_M2));
+	MMIO_D(_MMIO(_PCH_TRANSA_DATA_N2));
+	MMIO_D(_MMIO(_PCH_TRANSA_LINK_M1));
+	MMIO_D(_MMIO(_PCH_TRANSA_LINK_N1));
+	MMIO_D(_MMIO(_PCH_TRANSA_LINK_M2));
+	MMIO_D(_MMIO(_PCH_TRANSA_LINK_N2));
+	MMIO_D(TRANS_DP_CTL(PIPE_A));
+	MMIO_D(TRANS_DP_CTL(PIPE_B));
+	MMIO_D(TRANS_DP_CTL(PIPE_C));
+	MMIO_D(TVIDEO_DIP_CTL(PIPE_A));
+	MMIO_D(TVIDEO_DIP_DATA(PIPE_A));
+	MMIO_D(TVIDEO_DIP_GCP(PIPE_A));
+	MMIO_D(TVIDEO_DIP_CTL(PIPE_B));
+	MMIO_D(TVIDEO_DIP_DATA(PIPE_B));
+	MMIO_D(TVIDEO_DIP_GCP(PIPE_B));
+	MMIO_D(TVIDEO_DIP_CTL(PIPE_C));
+	MMIO_D(TVIDEO_DIP_DATA(PIPE_C));
+	MMIO_D(TVIDEO_DIP_GCP(PIPE_C));
+	MMIO_D(_MMIO(_FDI_RXA_MISC));
+	MMIO_D(_MMIO(_FDI_RXB_MISC));
+	MMIO_D(_MMIO(_FDI_RXA_TUSIZE1));
+	MMIO_D(_MMIO(_FDI_RXA_TUSIZE2));
+	MMIO_D(_MMIO(_FDI_RXB_TUSIZE1));
+	MMIO_D(_MMIO(_FDI_RXB_TUSIZE2));
+	MMIO_D(PCH_PP_CONTROL);
+	MMIO_D(PCH_PP_DIVISOR);
+	MMIO_D(PCH_PP_STATUS);
+	MMIO_D(PCH_LVDS);
+	MMIO_D(_MMIO(_PCH_DPLL_A));
+	MMIO_D(_MMIO(_PCH_DPLL_B));
+	MMIO_D(_MMIO(_PCH_FPA0));
+	MMIO_D(_MMIO(_PCH_FPA1));
+	MMIO_D(_MMIO(_PCH_FPB0));
+	MMIO_D(_MMIO(_PCH_FPB1));
+	MMIO_D(PCH_DREF_CONTROL);
+	MMIO_D(PCH_RAWCLK_FREQ);
+	MMIO_D(PCH_DPLL_SEL);
+	MMIO_D(_MMIO(0x61208));
+	MMIO_D(_MMIO(0x6120c));
+	MMIO_D(PCH_PP_ON_DELAYS);
+	MMIO_D(PCH_PP_OFF_DELAYS);
+	MMIO_D(_MMIO(0xe651c));
+	MMIO_D(_MMIO(0xe661c));
+	MMIO_D(_MMIO(0xe671c));
+	MMIO_D(_MMIO(0xe681c));
+	MMIO_D(_MMIO(0xe6c04));
+	MMIO_D(_MMIO(0xe6e1c));
+	MMIO_D(PCH_PORT_HOTPLUG);
+	MMIO_D(LCPLL_CTL);
+	MMIO_D(FUSE_STRAP);
+	MMIO_D(DIGITAL_PORT_HOTPLUG_CNTRL);
+	MMIO_D(DISP_ARB_CTL);
+	MMIO_D(DISP_ARB_CTL2);
+	MMIO_D(ILK_DISPLAY_CHICKEN1);
+	MMIO_D(ILK_DISPLAY_CHICKEN2);
+	MMIO_D(ILK_DSPCLK_GATE_D);
+	MMIO_D(SOUTH_CHICKEN1);
+	MMIO_D(SOUTH_CHICKEN2);
+	MMIO_D(_MMIO(_TRANSA_CHICKEN1));
+	MMIO_D(_MMIO(_TRANSB_CHICKEN1));
+	MMIO_D(SOUTH_DSPCLK_GATE_D);
+	MMIO_D(_MMIO(_TRANSA_CHICKEN2));
+	MMIO_D(_MMIO(_TRANSB_CHICKEN2));
+	MMIO_D(ILK_DPFC_CB_BASE(INTEL_FBC_A));
+	MMIO_D(ILK_DPFC_CONTROL(INTEL_FBC_A));
+	MMIO_D(ILK_DPFC_RECOMP_CTL(INTEL_FBC_A));
+	MMIO_D(ILK_DPFC_STATUS(INTEL_FBC_A));
+	MMIO_D(ILK_DPFC_FENCE_YOFF(INTEL_FBC_A));
+	MMIO_D(ILK_DPFC_CHICKEN(INTEL_FBC_A));
+	MMIO_D(ILK_FBC_RT_BASE);
+	MMIO_D(IPS_CTL);
+	MMIO_D(PIPE_CSC_COEFF_RY_GY(PIPE_A));
+	MMIO_D(PIPE_CSC_COEFF_BY(PIPE_A));
+	MMIO_D(PIPE_CSC_COEFF_RU_GU(PIPE_A));
+	MMIO_D(PIPE_CSC_COEFF_BU(PIPE_A));
+	MMIO_D(PIPE_CSC_COEFF_RV_GV(PIPE_A));
+	MMIO_D(PIPE_CSC_COEFF_BV(PIPE_A));
+	MMIO_D(PIPE_CSC_MODE(PIPE_A));
+	MMIO_D(PIPE_CSC_PREOFF_HI(PIPE_A));
+	MMIO_D(PIPE_CSC_PREOFF_ME(PIPE_A));
+	MMIO_D(PIPE_CSC_PREOFF_LO(PIPE_A));
+	MMIO_D(PIPE_CSC_POSTOFF_HI(PIPE_A));
+	MMIO_D(PIPE_CSC_POSTOFF_ME(PIPE_A));
+	MMIO_D(PIPE_CSC_POSTOFF_LO(PIPE_A));
+	MMIO_D(PIPE_CSC_COEFF_RY_GY(PIPE_B));
+	MMIO_D(PIPE_CSC_COEFF_BY(PIPE_B));
+	MMIO_D(PIPE_CSC_COEFF_RU_GU(PIPE_B));
+	MMIO_D(PIPE_CSC_COEFF_BU(PIPE_B));
+	MMIO_D(PIPE_CSC_COEFF_RV_GV(PIPE_B));
+	MMIO_D(PIPE_CSC_COEFF_BV(PIPE_B));
+	MMIO_D(PIPE_CSC_MODE(PIPE_B));
+	MMIO_D(PIPE_CSC_PREOFF_HI(PIPE_B));
+	MMIO_D(PIPE_CSC_PREOFF_ME(PIPE_B));
+	MMIO_D(PIPE_CSC_PREOFF_LO(PIPE_B));
+	MMIO_D(PIPE_CSC_POSTOFF_HI(PIPE_B));
+	MMIO_D(PIPE_CSC_POSTOFF_ME(PIPE_B));
+	MMIO_D(PIPE_CSC_POSTOFF_LO(PIPE_B));
+	MMIO_D(PIPE_CSC_COEFF_RY_GY(PIPE_C));
+	MMIO_D(PIPE_CSC_COEFF_BY(PIPE_C));
+	MMIO_D(PIPE_CSC_COEFF_RU_GU(PIPE_C));
+	MMIO_D(PIPE_CSC_COEFF_BU(PIPE_C));
+	MMIO_D(PIPE_CSC_COEFF_RV_GV(PIPE_C));
+	MMIO_D(PIPE_CSC_COEFF_BV(PIPE_C));
+	MMIO_D(PIPE_CSC_MODE(PIPE_C));
+	MMIO_D(PIPE_CSC_PREOFF_HI(PIPE_C));
+	MMIO_D(PIPE_CSC_PREOFF_ME(PIPE_C));
+	MMIO_D(PIPE_CSC_PREOFF_LO(PIPE_C));
+	MMIO_D(PIPE_CSC_POSTOFF_HI(PIPE_C));
+	MMIO_D(PIPE_CSC_POSTOFF_ME(PIPE_C));
+	MMIO_D(PIPE_CSC_POSTOFF_LO(PIPE_C));
+	MMIO_D(PREC_PAL_INDEX(PIPE_A));
+	MMIO_D(PREC_PAL_DATA(PIPE_A));
+	MMIO_F(PREC_PAL_GC_MAX(PIPE_A, 0), 4 * 3);
+	MMIO_D(PREC_PAL_INDEX(PIPE_B));
+	MMIO_D(PREC_PAL_DATA(PIPE_B));
+	MMIO_F(PREC_PAL_GC_MAX(PIPE_B, 0), 4 * 3);
+	MMIO_D(PREC_PAL_INDEX(PIPE_C));
+	MMIO_D(PREC_PAL_DATA(PIPE_C));
+	MMIO_F(PREC_PAL_GC_MAX(PIPE_C, 0), 4 * 3);
+	MMIO_D(_MMIO(0x60110));
+	MMIO_D(_MMIO(0x61110));
+	MMIO_F(_MMIO(0x70400), 0x40);
+	MMIO_F(_MMIO(0x71400), 0x40);
+	MMIO_F(_MMIO(0x72400), 0x40);
+	MMIO_D(WM_LINETIME(PIPE_A));
+	MMIO_D(WM_LINETIME(PIPE_B));
+	MMIO_D(WM_LINETIME(PIPE_C));
+	MMIO_D(SPLL_CTL);
+	MMIO_D(_MMIO(_WRPLL_CTL1));
+	MMIO_D(_MMIO(_WRPLL_CTL2));
+	MMIO_D(PORT_CLK_SEL(PORT_A));
+	MMIO_D(PORT_CLK_SEL(PORT_B));
+	MMIO_D(PORT_CLK_SEL(PORT_C));
+	MMIO_D(PORT_CLK_SEL(PORT_D));
+	MMIO_D(PORT_CLK_SEL(PORT_E));
+	MMIO_D(TRANS_CLK_SEL(TRANSCODER_A));
+	MMIO_D(TRANS_CLK_SEL(TRANSCODER_B));
+	MMIO_D(TRANS_CLK_SEL(TRANSCODER_C));
+	MMIO_D(HSW_NDE_RSTWRN_OPT);
+	MMIO_D(_MMIO(0x46508));
+	MMIO_D(_MMIO(0x49080));
+	MMIO_D(_MMIO(0x49180));
+	MMIO_D(_MMIO(0x49280));
+	MMIO_F(_MMIO(0x49090), 0x14);
+	MMIO_F(_MMIO(0x49190), 0x14);
+	MMIO_F(_MMIO(0x49290), 0x14);
+	MMIO_D(GAMMA_MODE(PIPE_A));
+	MMIO_D(GAMMA_MODE(PIPE_B));
+	MMIO_D(GAMMA_MODE(PIPE_C));
+	MMIO_D(PIPE_MULT(PIPE_A));
+	MMIO_D(PIPE_MULT(PIPE_B));
+	MMIO_D(PIPE_MULT(PIPE_C));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_A));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_B));
+	MMIO_D(HSW_TVIDEO_DIP_CTL(TRANSCODER_C));
+	MMIO_D(SFUSE_STRAP);
+	MMIO_D(SBI_ADDR);
+	MMIO_D(SBI_DATA);
+	MMIO_D(SBI_CTL_STAT);
+	MMIO_D(PIXCLK_GATE);
+	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4);
+	MMIO_D(DDI_BUF_CTL(PORT_A));
+	MMIO_D(DDI_BUF_CTL(PORT_B));
+	MMIO_D(DDI_BUF_CTL(PORT_C));
+	MMIO_D(DDI_BUF_CTL(PORT_D));
+	MMIO_D(DDI_BUF_CTL(PORT_E));
+	MMIO_D(DP_TP_CTL(PORT_A));
+	MMIO_D(DP_TP_CTL(PORT_B));
+	MMIO_D(DP_TP_CTL(PORT_C));
+	MMIO_D(DP_TP_CTL(PORT_D));
+	MMIO_D(DP_TP_CTL(PORT_E));
+	MMIO_D(DP_TP_STATUS(PORT_A));
+	MMIO_D(DP_TP_STATUS(PORT_B));
+	MMIO_D(DP_TP_STATUS(PORT_C));
+	MMIO_D(DP_TP_STATUS(PORT_D));
+	MMIO_D(DP_TP_STATUS(PORT_E));
+	MMIO_F(_MMIO(_DDI_BUF_TRANS_A), 0x50);
+	MMIO_F(_MMIO(0x64e60), 0x50);
+	MMIO_F(_MMIO(0x64eC0), 0x50);
+	MMIO_F(_MMIO(0x64f20), 0x50);
+	MMIO_F(_MMIO(0x64f80), 0x50);
+	MMIO_D(HSW_AUD_CFG(PIPE_A));
+	MMIO_D(HSW_AUD_PIN_ELD_CP_VLD);
+	MMIO_D(HSW_AUD_MISC_CTRL(PIPE_A));
+	MMIO_D(_MMIO(_TRANS_DDI_FUNC_CTL_A));
+	MMIO_D(_MMIO(_TRANS_DDI_FUNC_CTL_B));
+	MMIO_D(_MMIO(_TRANS_DDI_FUNC_CTL_C));
+	MMIO_D(_MMIO(_TRANS_DDI_FUNC_CTL_EDP));
+	MMIO_D(_MMIO(_TRANSA_MSA_MISC));
+	MMIO_D(_MMIO(_TRANSB_MSA_MISC));
+	MMIO_D(_MMIO(_TRANSC_MSA_MISC));
+	MMIO_D(_MMIO(_TRANS_EDP_MSA_MISC));
+	MMIO_D(FORCEWAKE);
+	MMIO_D(FORCEWAKE_ACK);
+	MMIO_D(GEN6_GT_CORE_STATUS);
+	MMIO_D(GEN6_GT_THREAD_STATUS_REG);
+	MMIO_D(GTFIFODBG);
+	MMIO_D(GTFIFOCTL);
+	MMIO_D(ECOBUS);
+	MMIO_D(GEN6_RC_CONTROL);
+	MMIO_D(GEN6_RC_STATE);
+	MMIO_D(GEN6_RPNSWREQ);
+	MMIO_D(GEN6_RC_VIDEO_FREQ);
+	MMIO_D(GEN6_RP_DOWN_TIMEOUT);
+	MMIO_D(GEN6_RP_INTERRUPT_LIMITS);
+	MMIO_D(GEN6_RPSTAT1);
+	MMIO_D(GEN6_RP_CONTROL);
+	MMIO_D(GEN6_RP_UP_THRESHOLD);
+	MMIO_D(GEN6_RP_DOWN_THRESHOLD);
+	MMIO_D(GEN6_RP_CUR_UP_EI);
+	MMIO_D(GEN6_RP_CUR_UP);
+	MMIO_D(GEN6_RP_PREV_UP);
+	MMIO_D(GEN6_RP_CUR_DOWN_EI);
+	MMIO_D(GEN6_RP_CUR_DOWN);
+	MMIO_D(GEN6_RP_PREV_DOWN);
+	MMIO_D(GEN6_RP_UP_EI);
+	MMIO_D(GEN6_RP_DOWN_EI);
+	MMIO_D(GEN6_RP_IDLE_HYSTERSIS);
+	MMIO_D(GEN6_RC1_WAKE_RATE_LIMIT);
+	MMIO_D(GEN6_RC6_WAKE_RATE_LIMIT);
+	MMIO_D(GEN6_RC6pp_WAKE_RATE_LIMIT);
+	MMIO_D(GEN6_RC_EVALUATION_INTERVAL);
+	MMIO_D(GEN6_RC_IDLE_HYSTERSIS);
+	MMIO_D(GEN6_RC_SLEEP);
+	MMIO_D(GEN6_RC1e_THRESHOLD);
+	MMIO_D(GEN6_RC6_THRESHOLD);
+	MMIO_D(GEN6_RC6p_THRESHOLD);
+	MMIO_D(GEN6_RC6pp_THRESHOLD);
+	MMIO_D(GEN6_PMINTRMSK);
+
+	MMIO_D(RSTDBYCTL);
+	MMIO_D(GEN6_GDRST);
+	MMIO_F(FENCE_REG_GEN6_LO(0), 0x80);
+	MMIO_D(CPU_VGACNTRL);
+	MMIO_D(TILECTL);
+	MMIO_D(GEN6_UCGCTL1);
+	MMIO_D(GEN6_UCGCTL2);
+	MMIO_F(_MMIO(0x4f000), 0x90);
+	MMIO_D(GEN6_PCODE_DATA);
+	MMIO_D(_MMIO(0x13812c));
+	MMIO_D(GEN7_ERR_INT);
+	MMIO_D(HSW_EDRAM_CAP);
+	MMIO_D(HSW_IDICR);
+	MMIO_D(GFX_FLSH_CNTL_GEN6);
+	MMIO_D(_MMIO(0x3c));
+	MMIO_D(_MMIO(0x860));
+	MMIO_D(ECOSKPD(RENDER_RING_BASE));
+	MMIO_D(_MMIO(0x121d0));
+	MMIO_D(ECOSKPD(BLT_RING_BASE));
+	MMIO_D(_MMIO(0x41d0));
+	MMIO_D(GAC_ECO_BITS);
+	MMIO_D(_MMIO(0x6200));
+	MMIO_D(_MMIO(0x6204));
+	MMIO_D(_MMIO(0x6208));
+	MMIO_D(_MMIO(0x7118));
+	MMIO_D(_MMIO(0x7180));
+	MMIO_D(_MMIO(0x7408));
+	MMIO_D(_MMIO(0x7c00));
+	MMIO_D(GEN6_MBCTL);
+	MMIO_D(_MMIO(0x911c));
+	MMIO_D(_MMIO(0x9120));
+	MMIO_D(GEN7_UCGCTL4);
+	MMIO_D(GAB_CTL);
+	MMIO_D(_MMIO(0x48800));
+	MMIO_D(_MMIO(0xce044));
+	MMIO_D(_MMIO(0xe6500));
+	MMIO_D(_MMIO(0xe6504));
+	MMIO_D(_MMIO(0xe6600));
+	MMIO_D(_MMIO(0xe6604));
+	MMIO_D(_MMIO(0xe6700));
+	MMIO_D(_MMIO(0xe6704));
+	MMIO_D(_MMIO(0xe6800));
+	MMIO_D(_MMIO(0xe6804));
+	MMIO_D(PCH_GMBUS4);
+	MMIO_D(PCH_GMBUS5);
+	MMIO_D(_MMIO(0x902c));
+	MMIO_D(_MMIO(0xec008));
+	MMIO_D(_MMIO(0xec00c));
+	MMIO_D(_MMIO(0xec008 + 0x18));
+	MMIO_D(_MMIO(0xec00c + 0x18));
+	MMIO_D(_MMIO(0xec008 + 0x18 * 2));
+	MMIO_D(_MMIO(0xec00c + 0x18 * 2));
+	MMIO_D(_MMIO(0xec008 + 0x18 * 3));
+	MMIO_D(_MMIO(0xec00c + 0x18 * 3));
+	MMIO_D(_MMIO(0xec408));
+	MMIO_D(_MMIO(0xec40c));
+	MMIO_D(_MMIO(0xec408 + 0x18));
+	MMIO_D(_MMIO(0xec40c + 0x18));
+	MMIO_D(_MMIO(0xec408 + 0x18 * 2));
+	MMIO_D(_MMIO(0xec40c + 0x18 * 2));
+	MMIO_D(_MMIO(0xec408 + 0x18 * 3));
+	MMIO_D(_MMIO(0xec40c + 0x18 * 3));
+	MMIO_D(_MMIO(0xfc810));
+	MMIO_D(_MMIO(0xfc81c));
+	MMIO_D(_MMIO(0xfc828));
+	MMIO_D(_MMIO(0xfc834));
+	MMIO_D(_MMIO(0xfcc00));
+	MMIO_D(_MMIO(0xfcc0c));
+	MMIO_D(_MMIO(0xfcc18));
+	MMIO_D(_MMIO(0xfcc24));
+	MMIO_D(_MMIO(0xfd000));
+	MMIO_D(_MMIO(0xfd00c));
+	MMIO_D(_MMIO(0xfd018));
+	MMIO_D(_MMIO(0xfd024));
+	MMIO_D(_MMIO(0xfd034));
+	MMIO_D(FPGA_DBG);
+	MMIO_D(_MMIO(0x2054));
+	MMIO_D(_MMIO(0x12054));
+	MMIO_D(_MMIO(0x22054));
+	MMIO_D(_MMIO(0x1a054));
+	MMIO_D(_MMIO(0x44070));
+	MMIO_D(_MMIO(0x2178));
+	MMIO_D(_MMIO(0x217c));
+	MMIO_D(_MMIO(0x12178));
+	MMIO_D(_MMIO(0x1217c));
+	MMIO_F(_MMIO(0x5200), 32);
+	MMIO_F(_MMIO(0x5240), 32);
+	MMIO_F(_MMIO(0x5280), 16);
+	MMIO_D(BCS_SWCTRL);
+	MMIO_F(HS_INVOCATION_COUNT, 8);
+	MMIO_F(DS_INVOCATION_COUNT, 8);
+	MMIO_F(IA_VERTICES_COUNT, 8);
+	MMIO_F(IA_PRIMITIVES_COUNT, 8);
+	MMIO_F(VS_INVOCATION_COUNT, 8);
+	MMIO_F(GS_INVOCATION_COUNT, 8);
+	MMIO_F(GS_PRIMITIVES_COUNT, 8);
+	MMIO_F(CL_INVOCATION_COUNT, 8);
+	MMIO_F(CL_PRIMITIVES_COUNT, 8);
+	MMIO_F(PS_INVOCATION_COUNT, 8);
+	MMIO_F(PS_DEPTH_COUNT, 8);
+	MMIO_D(ARB_MODE);
+	MMIO_RING_D(RING_BBADDR);
+	MMIO_D(_MMIO(0x2220));
+	MMIO_D(_MMIO(0x12220));
+	MMIO_D(_MMIO(0x22220));
+	MMIO_RING_D(RING_SYNC_1);
+	MMIO_RING_D(RING_SYNC_0);
+	MMIO_D(GUC_STATUS);
+
+	MMIO_F(_MMIO(MCHBAR_MIRROR_BASE_SNB), 0x40000);
+	MMIO_F(_MMIO(VGT_PVINFO_PAGE), VGT_PVINFO_SIZE);
+	MMIO_F(LGC_PALETTE(PIPE_A, 0), 1024);
+	MMIO_F(LGC_PALETTE(PIPE_B, 0), 1024);
+	MMIO_F(LGC_PALETTE(PIPE_C, 0), 1024);
+
+	return 0;
+}
+
+static int iterate_bdw_only_mmio(struct intel_gvt_mmio_table_iter *iter)
+{
+	MMIO_D(HSW_PWR_WELL_CTL1);
+	MMIO_D(HSW_PWR_WELL_CTL2);
+	MMIO_D(HSW_PWR_WELL_CTL3);
+	MMIO_D(HSW_PWR_WELL_CTL4);
+	MMIO_D(HSW_PWR_WELL_CTL5);
+	MMIO_D(HSW_PWR_WELL_CTL6);
+
+	MMIO_D(WM_MISC);
+	MMIO_D(_MMIO(_SRD_CTL_EDP));
+
+	MMIO_D(_MMIO(0xb1f0));
+	MMIO_D(_MMIO(0xb1c0));
+	MMIO_D(_MMIO(0xb100));
+	MMIO_D(_MMIO(0xb10c));
+	MMIO_D(_MMIO(0xb110));
+	MMIO_D(_MMIO(0x83a4));
+	MMIO_D(_MMIO(0x8430));
+	MMIO_D(_MMIO(0x2248));
+	MMIO_D(FORCEWAKE_ACK_HSW);
+
+	return 0;
+}
+
+static int iterate_bdw_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
+{
+	struct drm_i915_private *dev_priv = iter->i915;
+
+	MMIO_D(GEN8_GT_IMR(0));
+	MMIO_D(GEN8_GT_IER(0));
+	MMIO_D(GEN8_GT_IIR(0));
+	MMIO_D(GEN8_GT_ISR(0));
+	MMIO_D(GEN8_GT_IMR(1));
+	MMIO_D(GEN8_GT_IER(1));
+	MMIO_D(GEN8_GT_IIR(1));
+	MMIO_D(GEN8_GT_ISR(1));
+	MMIO_D(GEN8_GT_IMR(2));
+	MMIO_D(GEN8_GT_IER(2));
+	MMIO_D(GEN8_GT_IIR(2));
+	MMIO_D(GEN8_GT_ISR(2));
+	MMIO_D(GEN8_GT_IMR(3));
+	MMIO_D(GEN8_GT_IER(3));
+	MMIO_D(GEN8_GT_IIR(3));
+	MMIO_D(GEN8_GT_ISR(3));
+	MMIO_D(GEN8_DE_PIPE_IMR(PIPE_A));
+	MMIO_D(GEN8_DE_PIPE_IER(PIPE_A));
+	MMIO_D(GEN8_DE_PIPE_IIR(PIPE_A));
+	MMIO_D(GEN8_DE_PIPE_ISR(PIPE_A));
+	MMIO_D(GEN8_DE_PIPE_IMR(PIPE_B));
+	MMIO_D(GEN8_DE_PIPE_IER(PIPE_B));
+	MMIO_D(GEN8_DE_PIPE_IIR(PIPE_B));
+	MMIO_D(GEN8_DE_PIPE_ISR(PIPE_B));
+	MMIO_D(GEN8_DE_PIPE_IMR(PIPE_C));
+	MMIO_D(GEN8_DE_PIPE_IER(PIPE_C));
+	MMIO_D(GEN8_DE_PIPE_IIR(PIPE_C));
+	MMIO_D(GEN8_DE_PIPE_ISR(PIPE_C));
+	MMIO_D(GEN8_DE_PORT_IMR);
+	MMIO_D(GEN8_DE_PORT_IER);
+	MMIO_D(GEN8_DE_PORT_IIR);
+	MMIO_D(GEN8_DE_PORT_ISR);
+	MMIO_D(GEN8_DE_MISC_IMR);
+	MMIO_D(GEN8_DE_MISC_IER);
+	MMIO_D(GEN8_DE_MISC_IIR);
+	MMIO_D(GEN8_DE_MISC_ISR);
+	MMIO_D(GEN8_PCU_IMR);
+	MMIO_D(GEN8_PCU_IER);
+	MMIO_D(GEN8_PCU_IIR);
+	MMIO_D(GEN8_PCU_ISR);
+	MMIO_D(GEN8_MASTER_IRQ);
+	MMIO_RING_D(RING_ACTHD_UDW);
+
+#define RING_REG(base) _MMIO((base) + 0xd0)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+
+#define RING_REG(base) _MMIO((base) + 0x230)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+
+#define RING_REG(base) _MMIO((base) + 0x234)
+	MMIO_RING_F(RING_REG, 8);
+#undef RING_REG
+
+#define RING_REG(base) _MMIO((base) + 0x244)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+
+#define RING_REG(base) _MMIO((base) + 0x370)
+	MMIO_RING_F(RING_REG, 48);
+#undef RING_REG
+
+#define RING_REG(base) _MMIO((base) + 0x3a0)
+	MMIO_RING_D(RING_REG);
+#undef RING_REG
+
+	MMIO_D(PIPEMISC(PIPE_A));
+	MMIO_D(PIPEMISC(PIPE_B));
+	MMIO_D(PIPEMISC(PIPE_C));
+	MMIO_D(_MMIO(0x1c1d0));
+	MMIO_D(GEN6_MBCUNIT_SNPCR);
+	MMIO_D(GEN7_MISCCPCTL);
+	MMIO_D(_MMIO(0x1c054));
+	MMIO_D(GEN6_PCODE_MAILBOX);
+	if (!IS_BROXTON(dev_priv))
+		MMIO_D(GEN8_PRIVATE_PAT_LO);
+	MMIO_D(GEN8_PRIVATE_PAT_HI);
+	MMIO_D(GAMTARBMODE);
+
+#define RING_REG(base) _MMIO((base) + 0x270)
+	MMIO_RING_F(RING_REG, 32);
+#undef RING_REG
+
+	MMIO_RING_D(RING_HWS_PGA);
+	MMIO_D(HDC_CHICKEN0);
+	MMIO_D(CHICKEN_PIPESL_1(PIPE_A));
+	MMIO_D(CHICKEN_PIPESL_1(PIPE_B));
+	MMIO_D(CHICKEN_PIPESL_1(PIPE_C));
+	MMIO_D(_MMIO(0x6671c));
+	MMIO_D(_MMIO(0x66c00));
+	MMIO_D(_MMIO(0x66c04));
+	MMIO_D(HSW_GTT_CACHE_EN);
+	MMIO_D(GEN8_EU_DISABLE0);
+	MMIO_D(GEN8_EU_DISABLE1);
+	MMIO_D(GEN8_EU_DISABLE2);
+	MMIO_D(_MMIO(0xfdc));
+	MMIO_D(GEN8_ROW_CHICKEN);
+	MMIO_D(GEN7_ROW_CHICKEN2);
+	MMIO_D(GEN8_UCGCTL6);
+	MMIO_D(GEN8_L3SQCREG4);
+	MMIO_D(GEN9_SCRATCH_LNCF1);
+	MMIO_F(_MMIO(0x24d0), 48);
+	MMIO_D(_MMIO(0x44484));
+	MMIO_D(_MMIO(0x4448c));
+	MMIO_D(GEN8_L3_LRA_1_GPGPU);
+	MMIO_D(_MMIO(0x110000));
+	MMIO_D(_MMIO(0x48400));
+	MMIO_D(_MMIO(0x6e570));
+	MMIO_D(_MMIO(0x65f10));
+	MMIO_D(_MMIO(0xe194));
+	MMIO_D(_MMIO(0xe188));
+	MMIO_D(HALF_SLICE_CHICKEN2);
+	MMIO_D(_MMIO(0x2580));
+	MMIO_D(_MMIO(0xe220));
+	MMIO_D(_MMIO(0xe230));
+	MMIO_D(_MMIO(0xe240));
+	MMIO_D(_MMIO(0xe260));
+	MMIO_D(_MMIO(0xe270));
+	MMIO_D(_MMIO(0xe280));
+	MMIO_D(_MMIO(0xe2a0));
+	MMIO_D(_MMIO(0xe2b0));
+	MMIO_D(_MMIO(0xe2c0));
+	MMIO_D(_MMIO(0x21f0));
+	MMIO_D(GEN8_GAMW_ECO_DEV_RW_IA);
+	MMIO_D(_MMIO(0x215c));
+	MMIO_F(_MMIO(0x2290), 8);
+	MMIO_D(_MMIO(0x2b00));
+	MMIO_D(_MMIO(0x2360));
+	MMIO_D(_MMIO(0x1c17c));
+	MMIO_D(_MMIO(0x1c178));
+	MMIO_D(_MMIO(0x4260));
+	MMIO_D(_MMIO(0x4264));
+	MMIO_D(_MMIO(0x4268));
+	MMIO_D(_MMIO(0x426c));
+	MMIO_D(_MMIO(0x4270));
+	MMIO_D(_MMIO(0x4094));
+	MMIO_D(_MMIO(0x22178));
+	MMIO_D(_MMIO(0x1a178));
+	MMIO_D(_MMIO(0x1a17c));
+	MMIO_D(_MMIO(0x2217c));
+	MMIO_D(EDP_PSR_IMR);
+	MMIO_D(EDP_PSR_IIR);
+	MMIO_D(_MMIO(0xe4cc));
+	MMIO_D(GEN7_SC_INSTDONE);
+
+	return 0;
+}
+
+static int iterate_pre_skl_mmio(struct intel_gvt_mmio_table_iter *iter)
+{
+	MMIO_D(FORCEWAKE_MT);
+
+	MMIO_D(PCH_ADPA);
+	MMIO_F(_MMIO(_PCH_DPB_AUX_CH_CTL), 6 * 4);
+	MMIO_F(_MMIO(_PCH_DPC_AUX_CH_CTL), 6 * 4);
+	MMIO_F(_MMIO(_PCH_DPD_AUX_CH_CTL), 6 * 4);
+
+	MMIO_F(_MMIO(0x70440), 0xc);
+	MMIO_F(_MMIO(0x71440), 0xc);
+	MMIO_F(_MMIO(0x72440), 0xc);
+	MMIO_F(_MMIO(0x7044c), 0xc);
+	MMIO_F(_MMIO(0x7144c), 0xc);
+	MMIO_F(_MMIO(0x7244c), 0xc);
+
+	return 0;
+}
+
+static int iterate_skl_plus_mmio(struct intel_gvt_mmio_table_iter *iter)
+{
+	struct drm_i915_private *dev_priv = iter->i915;
+
+	MMIO_D(FORCEWAKE_RENDER_GEN9);
+	MMIO_D(FORCEWAKE_ACK_RENDER_GEN9);
+	MMIO_D(FORCEWAKE_GT_GEN9);
+	MMIO_D(FORCEWAKE_ACK_GT_GEN9);
+	MMIO_D(FORCEWAKE_MEDIA_GEN9);
+	MMIO_D(FORCEWAKE_ACK_MEDIA_GEN9);
+	MMIO_F(DP_AUX_CH_CTL(AUX_CH_B), 6 * 4);
+	MMIO_F(DP_AUX_CH_CTL(AUX_CH_C), 6 * 4);
+	MMIO_F(DP_AUX_CH_CTL(AUX_CH_D), 6 * 4);
+	MMIO_D(HSW_PWR_WELL_CTL1);
+	MMIO_D(HSW_PWR_WELL_CTL2);
+	MMIO_D(DBUF_CTL_S(0));
+	MMIO_D(GEN9_PG_ENABLE);
+	MMIO_D(GEN9_MEDIA_PG_IDLE_HYSTERESIS);
+	MMIO_D(GEN9_RENDER_PG_IDLE_HYSTERESIS);
+	MMIO_D(GEN9_GAMT_ECO_REG_RW_IA);
+	MMIO_D(MMCD_MISC_CTRL);
+	MMIO_D(CHICKEN_PAR1_1);
+	MMIO_D(DC_STATE_EN);
+	MMIO_D(DC_STATE_DEBUG);
+	MMIO_D(CDCLK_CTL);
+	MMIO_D(LCPLL1_CTL);
+	MMIO_D(LCPLL2_CTL);
+	MMIO_D(_MMIO(_DPLL1_CFGCR1));
+	MMIO_D(_MMIO(_DPLL2_CFGCR1));
+	MMIO_D(_MMIO(_DPLL3_CFGCR1));
+	MMIO_D(_MMIO(_DPLL1_CFGCR2));
+	MMIO_D(_MMIO(_DPLL2_CFGCR2));
+	MMIO_D(_MMIO(_DPLL3_CFGCR2));
+	MMIO_D(DPLL_CTRL1);
+	MMIO_D(DPLL_CTRL2);
+	MMIO_D(DPLL_STATUS);
+	MMIO_D(SKL_PS_WIN_POS(PIPE_A, 0));
+	MMIO_D(SKL_PS_WIN_POS(PIPE_A, 1));
+	MMIO_D(SKL_PS_WIN_POS(PIPE_B, 0));
+	MMIO_D(SKL_PS_WIN_POS(PIPE_B, 1));
+	MMIO_D(SKL_PS_WIN_POS(PIPE_C, 0));
+	MMIO_D(SKL_PS_WIN_POS(PIPE_C, 1));
+	MMIO_D(SKL_PS_WIN_SZ(PIPE_A, 0));
+	MMIO_D(SKL_PS_WIN_SZ(PIPE_A, 1));
+	MMIO_D(SKL_PS_WIN_SZ(PIPE_B, 0));
+	MMIO_D(SKL_PS_WIN_SZ(PIPE_B, 1));
+	MMIO_D(SKL_PS_WIN_SZ(PIPE_C, 0));
+	MMIO_D(SKL_PS_WIN_SZ(PIPE_C, 1));
+	MMIO_D(SKL_PS_CTRL(PIPE_A, 0));
+	MMIO_D(SKL_PS_CTRL(PIPE_A, 1));
+	MMIO_D(SKL_PS_CTRL(PIPE_B, 0));
+	MMIO_D(SKL_PS_CTRL(PIPE_B, 1));
+	MMIO_D(SKL_PS_CTRL(PIPE_C, 0));
+	MMIO_D(SKL_PS_CTRL(PIPE_C, 1));
+	MMIO_D(PLANE_BUF_CFG(PIPE_A, 0));
+	MMIO_D(PLANE_BUF_CFG(PIPE_A, 1));
+	MMIO_D(PLANE_BUF_CFG(PIPE_A, 2));
+	MMIO_D(PLANE_BUF_CFG(PIPE_A, 3));
+	MMIO_D(PLANE_BUF_CFG(PIPE_B, 0));
+	MMIO_D(PLANE_BUF_CFG(PIPE_B, 1));
+	MMIO_D(PLANE_BUF_CFG(PIPE_B, 2));
+	MMIO_D(PLANE_BUF_CFG(PIPE_B, 3));
+	MMIO_D(PLANE_BUF_CFG(PIPE_C, 0));
+	MMIO_D(PLANE_BUF_CFG(PIPE_C, 1));
+	MMIO_D(PLANE_BUF_CFG(PIPE_C, 2));
+	MMIO_D(PLANE_BUF_CFG(PIPE_C, 3));
+	MMIO_D(CUR_BUF_CFG(PIPE_A));
+	MMIO_D(CUR_BUF_CFG(PIPE_B));
+	MMIO_D(CUR_BUF_CFG(PIPE_C));
+	MMIO_F(PLANE_WM(PIPE_A, 0, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_A, 1, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_A, 2, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_B, 0, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_B, 1, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_B, 2, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_C, 0, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_C, 1, 0), 4 * 8);
+	MMIO_F(PLANE_WM(PIPE_C, 2, 0), 4 * 8);
+	MMIO_F(CUR_WM(PIPE_A, 0), 4 * 8);
+	MMIO_F(CUR_WM(PIPE_B, 0), 4 * 8);
+	MMIO_F(CUR_WM(PIPE_C, 0), 4 * 8);
+	MMIO_D(PLANE_WM_TRANS(PIPE_A, 0));
+	MMIO_D(PLANE_WM_TRANS(PIPE_A, 1));
+	MMIO_D(PLANE_WM_TRANS(PIPE_A, 2));
+	MMIO_D(PLANE_WM_TRANS(PIPE_B, 0));
+	MMIO_D(PLANE_WM_TRANS(PIPE_B, 1));
+	MMIO_D(PLANE_WM_TRANS(PIPE_B, 2));
+	MMIO_D(PLANE_WM_TRANS(PIPE_C, 0));
+	MMIO_D(PLANE_WM_TRANS(PIPE_C, 1));
+	MMIO_D(PLANE_WM_TRANS(PIPE_C, 2));
+	MMIO_D(CUR_WM_TRANS(PIPE_A));
+	MMIO_D(CUR_WM_TRANS(PIPE_B));
+	MMIO_D(CUR_WM_TRANS(PIPE_C));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_A, 0));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_A, 1));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_A, 2));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_A, 3));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_B, 0));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_B, 1));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_B, 2));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_B, 3));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 0));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 1));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 2));
+	MMIO_D(PLANE_NV12_BUF_CFG(PIPE_C, 3));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 1)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 2)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 3)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_A, 4)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 1)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 2)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 3)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_B, 4)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 1)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 2)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 3)));
+	MMIO_D(_MMIO(_REG_701C0(PIPE_C, 4)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 1)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 2)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 3)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_A, 4)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 1)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 2)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 3)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_B, 4)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 1)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 2)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 3)));
+	MMIO_D(_MMIO(_REG_701C4(PIPE_C, 4)));
+	MMIO_D(_MMIO(_PLANE_CTL_3_A));
+	MMIO_D(_MMIO(_PLANE_CTL_3_B));
+	MMIO_D(_MMIO(0x72380));
+	MMIO_D(_MMIO(0x7239c));
+	MMIO_D(_MMIO(_PLANE_SURF_3_A));
+	MMIO_D(_MMIO(_PLANE_SURF_3_B));
+	MMIO_D(DMC_SSP_BASE);
+	MMIO_D(DMC_HTP_SKL);
+	MMIO_D(DMC_LAST_WRITE);
+	MMIO_D(BDW_SCRATCH1);
+	MMIO_D(SKL_DFSM);
+	MMIO_D(DISPIO_CR_TX_BMU_CR0);
+	MMIO_F(GEN9_GFX_MOCS(0), 0x7f8);
+	MMIO_F(GEN7_L3CNTLREG2, 0x80);
+	MMIO_D(RPM_CONFIG0);
+	MMIO_D(_MMIO(0xd08));
+	MMIO_D(RC6_LOCATION);
+	MMIO_D(GEN7_FF_SLICE_CS_CHICKEN1);
+	MMIO_D(GEN9_CS_DEBUG_MODE1);
+	/* TRTT */
+	MMIO_D(TRVATTL3PTRDW(0));
+	MMIO_D(TRVATTL3PTRDW(1));
+	MMIO_D(TRVATTL3PTRDW(2));
+	MMIO_D(TRVATTL3PTRDW(3));
+	MMIO_D(TRVADR);
+	MMIO_D(TRTTE);
+	MMIO_D(_MMIO(0x4dfc));
+	MMIO_D(_MMIO(0x46430));
+	MMIO_D(_MMIO(0x46520));
+	MMIO_D(_MMIO(0xc403c));
+	MMIO_D(GEN8_GARBCNTL);
+	MMIO_D(DMA_CTRL);
+	MMIO_D(_MMIO(0x65900));
+	MMIO_D(GEN6_STOLEN_RESERVED);
+	MMIO_D(_MMIO(0x4068));
+	MMIO_D(_MMIO(0x67054));
+	MMIO_D(_MMIO(0x6e560));
+	MMIO_D(_MMIO(0x6e554));
+	MMIO_D(_MMIO(0x2b20));
+	MMIO_D(_MMIO(0x65f00));
+	MMIO_D(_MMIO(0x65f08));
+	MMIO_D(_MMIO(0x320f0));
+	MMIO_D(_MMIO(0x70034));
+	MMIO_D(_MMIO(0x71034));
+	MMIO_D(_MMIO(0x72034));
+	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_A)));
+	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_B)));
+	MMIO_D(_MMIO(_PLANE_KEYVAL_1(PIPE_C)));
+	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_A)));
+	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_B)));
+	MMIO_D(_MMIO(_PLANE_KEYMAX_1(PIPE_C)));
+	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_A)));
+	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_B)));
+	MMIO_D(_MMIO(_PLANE_KEYMSK_1(PIPE_C)));
+	MMIO_D(_MMIO(0x44500));
+#define CSFE_CHICKEN1_REG(base) _MMIO((base) + 0xD4)
+	MMIO_RING_D(CSFE_CHICKEN1_REG);
+#undef CSFE_CHICKEN1_REG
+	MMIO_D(GEN8_HDC_CHICKEN1);
+	MMIO_D(GEN9_WM_CHICKEN3);
+
+	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv))
+		MMIO_D(GAMT_CHKN_BIT_REG);
+	if (!IS_BROXTON(dev_priv))
+		MMIO_D(GEN9_CTX_PREEMPT_REG);
+	MMIO_F(_MMIO(DMC_MMIO_START_RANGE), 0x3000);
+	return 0;
+}
+
+static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
+{
+	struct drm_i915_private *dev_priv = iter->i915;
+
+	MMIO_F(_MMIO(0x80000), 0x3000);
+	MMIO_D(GEN7_SAMPLER_INSTDONE);
+	MMIO_D(GEN7_ROW_INSTDONE);
+	MMIO_D(GEN8_FAULT_TLB_DATA0);
+	MMIO_D(GEN8_FAULT_TLB_DATA1);
+	MMIO_D(ERROR_GEN6);
+	MMIO_D(DONE_REG);
+	MMIO_D(EIR);
+	MMIO_D(PGTBL_ER);
+	MMIO_D(_MMIO(0x4194));
+	MMIO_D(_MMIO(0x4294));
+	MMIO_D(_MMIO(0x4494));
+	MMIO_RING_D(RING_PSMI_CTL);
+	MMIO_RING_D(RING_DMA_FADD);
+	MMIO_RING_D(RING_DMA_FADD_UDW);
+	MMIO_RING_D(RING_IPEHR);
+	MMIO_RING_D(RING_INSTPS);
+	MMIO_RING_D(RING_BBADDR_UDW);
+	MMIO_RING_D(RING_BBSTATE);
+	MMIO_RING_D(RING_IPEIR);
+	MMIO_F(SOFT_SCRATCH(0), 16 * 4);
+	MMIO_D(BXT_P_CR_GT_DISP_PWRON);
+	MMIO_D(BXT_RP_STATE_CAP);
+	MMIO_D(BXT_PHY_CTL_FAMILY(DPIO_PHY0));
+	MMIO_D(BXT_PHY_CTL_FAMILY(DPIO_PHY1));
+	MMIO_D(BXT_PHY_CTL(PORT_A));
+	MMIO_D(BXT_PHY_CTL(PORT_B));
+	MMIO_D(BXT_PHY_CTL(PORT_C));
+	MMIO_D(BXT_PORT_PLL_ENABLE(PORT_A));
+	MMIO_D(BXT_PORT_PLL_ENABLE(PORT_B));
+	MMIO_D(BXT_PORT_PLL_ENABLE(PORT_C));
+	MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY0));
+	MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY0));
+	MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY0));
+	MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY0));
+	MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY0));
+	MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY0));
+	MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY0));
+	MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY0));
+	MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY0));
+	MMIO_D(BXT_PORT_CL1CM_DW0(DPIO_PHY1));
+	MMIO_D(BXT_PORT_CL1CM_DW9(DPIO_PHY1));
+	MMIO_D(BXT_PORT_CL1CM_DW10(DPIO_PHY1));
+	MMIO_D(BXT_PORT_CL1CM_DW28(DPIO_PHY1));
+	MMIO_D(BXT_PORT_CL1CM_DW30(DPIO_PHY1));
+	MMIO_D(BXT_PORT_CL2CM_DW6(DPIO_PHY1));
+	MMIO_D(BXT_PORT_REF_DW3(DPIO_PHY1));
+	MMIO_D(BXT_PORT_REF_DW6(DPIO_PHY1));
+	MMIO_D(BXT_PORT_REF_DW8(DPIO_PHY1));
+	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 0));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 1));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 2));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 3));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 0));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 1));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 2));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 3));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 6));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 8));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 9));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH0, 10));
+	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 0));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 1));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 2));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 3));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 0));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 1));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 2));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 3));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 6));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 8));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 9));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY0, DPIO_CH1, 10));
+	MMIO_D(BXT_PORT_PLL_EBB_0(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_PLL_EBB_4(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW10_LN01(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW10_GRP(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 0));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 1));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 2));
+	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 3));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 0));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 1));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 2));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 3));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 6));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 8));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 9));
+	MMIO_D(BXT_PORT_PLL(DPIO_PHY1, DPIO_CH0, 10));
+	MMIO_D(BXT_DE_PLL_CTL);
+	MMIO_D(BXT_DE_PLL_ENABLE);
+	MMIO_D(BXT_DSI_PLL_CTL);
+	MMIO_D(BXT_DSI_PLL_ENABLE);
+	MMIO_D(GEN9_CLKGATE_DIS_0);
+	MMIO_D(GEN9_CLKGATE_DIS_4);
+	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_A));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_B));
+	MMIO_D(HSW_TVIDEO_DIP_GCP(TRANSCODER_C));
+	MMIO_D(RC6_CTX_BASE);
+	MMIO_D(GEN8_PUSHBUS_CONTROL);
+	MMIO_D(GEN8_PUSHBUS_ENABLE);
+	MMIO_D(GEN8_PUSHBUS_SHIFT);
+	MMIO_D(GEN6_GFXPAUSE);
+	MMIO_D(GEN8_L3SQCREG1);
+	MMIO_D(GEN8_L3CNTLREG);
+	MMIO_D(_MMIO(0x20D8));
+	MMIO_F(GEN8_RING_CS_GPR(RENDER_RING_BASE, 0), 0x40);
+	MMIO_F(GEN8_RING_CS_GPR(GEN6_BSD_RING_BASE, 0), 0x40);
+	MMIO_F(GEN8_RING_CS_GPR(BLT_RING_BASE, 0), 0x40);
+	MMIO_F(GEN8_RING_CS_GPR(VEBOX_RING_BASE, 0), 0x40);
+	MMIO_D(GEN9_CTX_PREEMPT_REG);
+	MMIO_D(GEN8_PRIVATE_PAT_LO);
+
+	return 0;
+}
+
+/**
+ * intel_gvt_iterate_mmio_table - Iterate the GVT MMIO table
+ * @iter: the interator
+ *
+ * This function is called for iterating the GVT MMIO table when i915 is
+ * taking the snapshot of the HW and GVT is building MMIO tracking table.
+ */
+int intel_gvt_iterate_mmio_table(struct intel_gvt_mmio_table_iter *iter)
+{
+	struct drm_i915_private *i915 = iter->i915;
+	int ret;
+
+	ret = iterate_generic_mmio(iter);
+	if (ret)
+		goto err;
+
+	if (IS_BROADWELL(i915)) {
+		ret = iterate_bdw_only_mmio(iter);
+		if (ret)
+			goto err;
+		ret = iterate_bdw_plus_mmio(iter);
+		if (ret)
+			goto err;
+		ret = iterate_pre_skl_mmio(iter);
+		if (ret)
+			goto err;
+	} else if (IS_SKYLAKE(i915) ||
+		   IS_KABYLAKE(i915) ||
+		   IS_COFFEELAKE(i915) ||
+		   IS_COMETLAKE(i915)) {
+		ret = iterate_bdw_plus_mmio(iter);
+		if (ret)
+			goto err;
+		ret = iterate_skl_plus_mmio(iter);
+		if (ret)
+			goto err;
+	} else if (IS_BROXTON(i915)) {
+		ret = iterate_bdw_plus_mmio(iter);
+		if (ret)
+			goto err;
+		ret = iterate_skl_plus_mmio(iter);
+		if (ret)
+			goto err;
+		ret = iterate_bxt_mmio(iter);
+		if (ret)
+			goto err;
+	}
+
+	return 0;
+err:
+	return ret;
+}
-- 
2.25.1

