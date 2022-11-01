Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A206143AD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 04:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21EF10E2C1;
	Tue,  1 Nov 2022 03:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07EB610E0BE;
 Tue,  1 Nov 2022 03:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667273616; x=1698809616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4eNNKzy/Ss5wz2AxL4v8sotsbZyjF5GyOQ8pPtkN+Lo=;
 b=Pxzg7fuapZsrOTdU4cEFC1h6I69inXnJb+air8qJomHMVcAFXFmR0D13
 sUZPPm7+1IBONLGM7qU5Pr+/CU3GMAHjiEsZ8tVu/pNYNsucX+po0oVf8
 Wg2YoVB+/nP+pA1GNcHOgUIhqOO8ydih4EG80XsHYitk8zn15/GdYgvAL
 9U0WwLEq/vl8Ap03S2m3bjq/QVZlXTSoQCokxgcaJ2T1Z7GzXUukxpFTT
 zIEbb1fb5RKFBohkd6AVAuvdrXJdr7lY9p5IECPNRr5KuJJins2xz/SOe
 GH7XKqEMx4MJ1u9ZMzA6grorBRiKnjZAt6ZQ3hnAMcpf4FdOLXA6CqFn4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307782719"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; d="scan'208";a="307782719"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 20:33:35 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="739193628"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; d="scan'208";a="739193628"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 20:33:32 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Nov 2022 09:06:33 +0530
Message-Id: <20221101033634.1900331-2-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221101033634.1900331-1-badal.nilawar@intel.com>
References: <20221101033634.1900331-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: add initial definitions for
 GSC CS
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
Cc: dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Starting on MTL, the GSC is no longer managed with direct MMIO access,
but we instead have a dedicated command streamer for it. As a first step
for adding support for this CS, add the required definitions.
Note that, although it is now a CS, the GSC retains its old
class:instance value (OTHER_CLASS instance 6)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 8 ++++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 1 +
 drivers/gpu/drm/i915/gt/intel_engine_user.c  | 1 +
 drivers/gpu/drm/i915/i915_reg.h              | 1 +
 4 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3b7d750ad054..e0fbfac03979 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -244,6 +244,13 @@ static const struct engine_info intel_engines[] = {
 			{ .graphics_ver = 12, .base = GEN12_COMPUTE3_RING_BASE }
 		}
 	},
+	[GSC0] = {
+		.class = OTHER_CLASS,
+		.instance = OTHER_GSC_INSTANCE,
+		.mmio_bases = {
+			{ .graphics_ver = 12, .base = MTL_GSC_RING_BASE }
+		}
+	},
 };
 
 /**
@@ -324,6 +331,7 @@ u32 intel_engine_context_size(struct intel_gt *gt, u8 class)
 	case VIDEO_DECODE_CLASS:
 	case VIDEO_ENHANCEMENT_CLASS:
 	case COPY_ENGINE_CLASS:
+	case OTHER_CLASS:
 		if (GRAPHICS_VER(gt->i915) < 8)
 			return 0;
 		return GEN8_LR_CONTEXT_OTHER_SIZE;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 6b5d4ea22b67..4fd54fb8810f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -136,6 +136,7 @@ enum intel_engine_id {
 	CCS2,
 	CCS3,
 #define _CCS(n) (CCS0 + (n))
+	GSC0,
 	I915_NUM_ENGINES
 #define INVALID_ENGINE ((enum intel_engine_id)-1)
 };
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 46a174f8aa00..79312b734690 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -140,6 +140,7 @@ const char *intel_engine_class_repr(u8 class)
 		[COPY_ENGINE_CLASS] = "bcs",
 		[VIDEO_DECODE_CLASS] = "vcs",
 		[VIDEO_ENHANCEMENT_CLASS] = "vecs",
+		[OTHER_CLASS] = "other",
 		[COMPUTE_CLASS] = "ccs",
 	};
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1c0da50c0dc7..d056c3117ef2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -970,6 +970,7 @@
 #define GEN11_VEBOX2_RING_BASE		0x1d8000
 #define XEHP_VEBOX3_RING_BASE		0x1e8000
 #define XEHP_VEBOX4_RING_BASE		0x1f8000
+#define MTL_GSC_RING_BASE		0x11a000
 #define GEN12_COMPUTE0_RING_BASE	0x1a000
 #define GEN12_COMPUTE1_RING_BASE	0x1c000
 #define GEN12_COMPUTE2_RING_BASE	0x1e000
-- 
2.25.1

