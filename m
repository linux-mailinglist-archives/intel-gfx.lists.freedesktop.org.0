Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 965B3954841
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 13:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4078310E2E0;
	Fri, 16 Aug 2024 11:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Mr4U0wWp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE9A10E2DB;
 Fri, 16 Aug 2024 11:49:23 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id
 d2e1a72fcca58-70d25b5b6b0so1577127b3a.2; 
 Fri, 16 Aug 2024 04:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723808962; x=1724413762; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jSYtrh3nxFPT/+VCudEfUHTSqC891NIMAIb08CPyqFw=;
 b=Mr4U0wWpXKARbvGC8th+xkCr/yB4FtyaDZ4lO6w845bgApm88zO8Umz4PGLcidVXMx
 vd2HcQ4inqk2n39TOQhixtel0JdLQ31fhapSEchS6fDaKytUikdEpixfY8kAykmAusT3
 rXyty2kVNSRvKtVBuYGtekYpa9kmWCvVHddFduBf9pPIArrDc/QhaHynnNKv6MnzOLYb
 8rXb2vI52noPKhIMszC+m7MmnHC4EnzTrBeSrvnEDsP8htupl1WJDqnbbiRf7A+t+A95
 jPvN+x32AWft+9amWHLLinid10U3dBx8+cwI/PB+6oI5JR2ae9LJdMxe0Y3XEDvGnbAB
 kMRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723808962; x=1724413762;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jSYtrh3nxFPT/+VCudEfUHTSqC891NIMAIb08CPyqFw=;
 b=fxpxqkk7kBlYqM5/EKQ3SgE5GAyhB5XN6JGjYjfE8K+bjY9GrDAyQJ4YG4d6GzA/bS
 SzHKMZ63sTGKeoALNjKPP532ME1tcOE9eKycaa8oSJeuJ9iv1565M+u/k5MoAHzy974J
 s6gHcJQlfGf+d1FOq98q444laZDAbCGB42n6RTfFEbkITpUI5I6gJQA19T/ljIK7rjrq
 bhDqvmSpAzTa0qORd8gmn6vdCZ43AG/I09/iHZtgVa0CVj0H0saqXxfnda3Xj+21sood
 wJyW24+qze5T4TgLiPqptuSw836IsBHM5exMNO0CeHtC1QkQPNZ8jwvXhFAXJlmhEajv
 rc6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXnlSzOov2ROY27gWdgbGroBsBgdDMqOA/umxAHkwAwQ6FaZf3BWoF+fl716MdrDH4XVhPwql909Qs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyzalccuejOIv5jlrEMA7jAkZizdXePSvonRahCGEmGiJye8LUb
 s5BviK0S6NSEDKfpSQGkxnfkIqkSO4UCdiEux+hYy92ypr9UIknny4ITbZp5aQE=
X-Google-Smtp-Source: AGHT+IEG0gs0npjCUbpbN6rybux2vs6JNfjn3ODGi1wuneSGYE1QjO1mfwX8UXnk1Ne8NZPvVY71rA==
X-Received: by 2002:a05:6a20:6f08:b0:1c6:9f28:37b7 with SMTP id
 adf61e73a8af0-1c904fb6398mr3344999637.27.1723808962307; 
 Fri, 16 Aug 2024 04:49:22 -0700 (PDT)
Received: from localhost ([134.134.137.78]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7c6b61a6ce4sm2780332a12.15.2024.08.16.04.49.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2024 04:49:21 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 3/3] drm/i915/display: allow creation of Xe2 ccs framebuffers
Date: Fri, 16 Aug 2024 14:52:29 +0300
Message-ID: <20240816115229.531671-4-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240816115229.531671-1-juhapekka.heikkila@gmail.com>
References: <20240816115229.531671-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
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

Add I915_FORMAT_MOD_4_TILED_BMG_CCS and I915_FORMAT_MOD_4_TILED_LNL_CCS to possible
created modifier for new framebuffer on Xe driver.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c   |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c        | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/skl_universal_plane.c |  5 +++++
 3 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9f2a4a854548..1042f65967ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6260,6 +6260,8 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
 		case I915_FORMAT_MOD_4_TILED:
+		case I915_FORMAT_MOD_4_TILED_BMG_CCS:
+		case I915_FORMAT_MOD_4_TILED_LNL_CCS:
 			break;
 		default:
 			drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f23547a88b1f..d2716915d046 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -163,6 +163,14 @@ struct intel_modifier_desc {
 
 static const struct intel_modifier_desc intel_modifiers[] = {
 	{
+		.modifier = I915_FORMAT_MOD_4_TILED_LNL_CCS,
+		.display_ver = { 20, -1 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4,
+	}, {
+		.modifier = I915_FORMAT_MOD_4_TILED_BMG_CCS,
+		.display_ver = { 14, -1 },
+		.plane_caps = INTEL_PLANE_CAP_TILING_4,
+	}, {
 		.modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS,
 		.display_ver = { 14, 14 },
 		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
@@ -437,6 +445,14 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
 		return false;
 
+	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
+	    (GRAPHICS_VER(i915) < 20 || !IS_DGFX(i915)))
+		return false;
+
+	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
+	    (GRAPHICS_VER(i915) < 20 || IS_DGFX(i915)))
+		return false;
+
 	return true;
 }
 
@@ -653,6 +669,8 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 128;
 		else
 			return 512;
+	case I915_FORMAT_MOD_4_TILED_BMG_CCS:
+	case I915_FORMAT_MOD_4_TILED_LNL_CCS:
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
 	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a1ab64db0130..0e81d540ecc9 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -537,6 +537,8 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
 	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
 	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
+	case I915_FORMAT_MOD_4_TILED_BMG_CCS:
+	case I915_FORMAT_MOD_4_TILED_LNL_CCS:
 		/*
 		 * Align to at least 4x1 main surface
 		 * tiles (16K) to match 64B of AUX.
@@ -948,6 +950,9 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
 	case I915_FORMAT_MOD_4_TILED_MTL_MC_CCS:
 		return PLANE_CTL_TILED_4 | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
+	case I915_FORMAT_MOD_4_TILED_BMG_CCS:
+	case I915_FORMAT_MOD_4_TILED_LNL_CCS:
+		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
-- 
2.45.2

