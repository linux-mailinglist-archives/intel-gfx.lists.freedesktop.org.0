Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F96E2DB699
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 23:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0109989BF5;
	Tue, 15 Dec 2020 22:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D02C89BF5
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 22:42:31 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id hg11so399551pjb.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 14:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:in-reply-to:message-id:mime-version:references:subject
 :from:to:cc; bh=KTwEyXu5mzL0REmKuihl1Y+77hIEG21FUm+BCcp+pBg=;
 b=t7zcSSxpFZPZqKt0+1DIzgdlHJRbmEI40s6iHDRnKt7J9fh/1OZkz4XSM6l5MhS3CE
 TABy2aGeyhyZuYO9H4soqz8A//qiQGD3lDiHIIq4NHyddMMTepzwdheNXqS8pdGn8/5s
 6FQZS0esb4LCo40hw70Oo4vdHP9BVlqd/42rS+eUP+dZSYYDX56/Elu5gFGZzkMPfddk
 urzioCOVkDswPUgvPAALJrY/OW8VPfKC6aFYP1vNqjcXbzRyRfD2XIIFGrWd2rCtO4ZG
 ceXF9h9xEBDC7v7ayw+XFtyLfW2NF8Fq7LFtjnINd2WU0x0UIODkoVKdNvN7tmCErsbt
 rdkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=KTwEyXu5mzL0REmKuihl1Y+77hIEG21FUm+BCcp+pBg=;
 b=iXWw27BlynXGQGQACxB9pfXmjlOi+uUCtBpf0QITi3flCPoNHjS/9CuhqdIsdGVoi4
 nOgicFjRBYO9jjgWxJxYBZqZoqc1CqsH3QzBayBzQIF/0In1geSK+likp6UuCJW+WN2a
 jAsU98drNqPPxp6TfBn583k2n5ETeZHubZPyUBd8apAh9DwYclfm7Ht3Jtp7jmC697GC
 Tpxguix5nT4Gou9f08iLOwTsaj4iV37ejIbznW6kDXE4fq/lyAqs1x7mSSxBRUtB8yCw
 h7hQRag94qFcawrQwx77iIAXznjEefs6hZRnNfbLIQdVcX0ha3YzR0Cg0Gqw0lwNIMeU
 JbcA==
X-Gm-Message-State: AOAM531haLU/3rh41BcyKo2lxnQrAaJ05qsg6vHZETsr/fWcX/j9+ouA
 LnOq2aiJR71+GpIVYp5L0xGbKv6inytm67SDFK3UAfm7jgFZln7EFA3Ft3rVDZ7ly5LNWM5c0cl
 NwaCJOuQS+G8QMbnqxwFgzBiTgkY+qb7TD4BsH1HAzYG5sgMiv2T+Iio9ILsi+IE77UpBVgYcNX
 VSGgU=
X-Google-Smtp-Source: ABdhPJye0JU4PkBsAEWzAtOURFXePNgjmch2YTM4MTQI7hwml/EMaj/2f+EyorzAUbJSCfWKNBbBf1qHlGnYCA==
X-Received: from andrescj-cros-specialist.c.googlers.com
 ([fda3:e722:ac3:10:7f:e700:c0a8:181])
 (user=andrescj job=sendgmr) by 2002:aa7:838b:0:b029:18c:42ad:7721 with SMTP
 id u11-20020aa7838b0000b029018c42ad7721mr29572548pfm.15.1608072150459; Tue,
 15 Dec 2020 14:42:30 -0800 (PST)
Date: Tue, 15 Dec 2020 22:42:19 +0000
In-Reply-To: <X9kY3ONpq6T0Im0K@intel.com>
Message-Id: <20201215224219.3896256-1-andrescj@google.com>
Mime-Version: 1.0
References: <X9kY3ONpq6T0Im0K@intel.com>
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
From: Andres Calderon Jaramillo <andrescj@google.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Prevent double YUV range
 correction on HDR planes
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
Cc: Andres Calderon Jaramillo <andrescj@chromium.org>, seanpaul@chromium.org,
 sushma.venkatesh.reddy@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andres Calderon Jaramillo <andrescj@chromium.org>

Prevent the ICL HDR plane pipeline from performing YUV color range
correction twice when the input is in limited range. This is done by
removing the limited-range code from icl_program_input_csc().

Before this patch the following could happen: user space gives us a YUV
buffer in limited range; per the pipeline in [1], the plane would first
go through a "YUV Range correct" stage that expands the range; the plane
would then go through the "Input CSC" stage which would also expand the
range because icl_program_input_csc() would use a matrix and an offset
that assume limited-range input; this would ultimately cause dark and
light colors to appear darker and lighter than they should respectively.

This is an issue because if a buffer switches between being scanned out
and being composited with the GPU, the user will see a color difference.
If this switching happens quickly and frequently, the user will perceive
this as a flickering.

[1] https://01.org/sites/default/files/documentation/intel-gfx-prm-osrc-icllp-vol12-displayengine_0.pdf#page=281

Signed-off-by: Andres Calderon Jaramillo <andrescj@chromium.org>
---
Changelog since v1:
- Don't skip the YUV range correction stage. Instead, use that stage and
  modify icl_program_input_csc() to always assume full-range input.

 drivers/gpu/drm/i915/display/intel_display.c |  2 +
 drivers/gpu/drm/i915/display/intel_sprite.c  | 65 +++-----------------
 2 files changed, 12 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 761be8deaa9b..8fb9b4f8c1df 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4811,6 +4811,8 @@ u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	} else if (fb->format->is_yuv) {
 		plane_color_ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
+		if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
+			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	}
 
 	return plane_color_ctl;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index b7e208816074..121e1b5120fd 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -633,13 +633,19 @@ skl_program_scaler(struct intel_plane *plane,
 
 /* Preoffset values for YUV to RGB Conversion */
 #define PREOFF_YUV_TO_RGB_HI		0x1800
-#define PREOFF_YUV_TO_RGB_ME		0x1F00
+#define PREOFF_YUV_TO_RGB_ME		0x0000
 #define PREOFF_YUV_TO_RGB_LO		0x1800
 
 #define  ROFF(x)          (((x) & 0xffff) << 16)
 #define  GOFF(x)          (((x) & 0xffff) << 0)
 #define  BOFF(x)          (((x) & 0xffff) << 16)
 
+/*
+ * Programs the input color space conversion stage for ICL HDR planes.
+ * Note that it is assumed that this stage always happens after YUV
+ * range correction. Thus, the input to this stage is assumed to be
+ * in full-range YCbCr.
+ */
 static void
 icl_program_input_csc(struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state,
@@ -687,52 +693,7 @@ icl_program_input_csc(struct intel_plane *plane,
 			0x0, 0x7800, 0x7F10,
 		},
 	};
-
-	/* Matrix for Limited Range to Full Range Conversion */
-	static const u16 input_csc_matrix_lr[][9] = {
-		/*
-		 * BT.601 Limted range YCbCr -> full range RGB
-		 * The matrix required is :
-		 * [1.164384, 0.000, 1.596027,
-		 *  1.164384, -0.39175, -0.812813,
-		 *  1.164384, 2.017232, 0.0000]
-		 */
-		[DRM_COLOR_YCBCR_BT601] = {
-			0x7CC8, 0x7950, 0x0,
-			0x8D00, 0x7950, 0x9C88,
-			0x0, 0x7950, 0x6810,
-		},
-		/*
-		 * BT.709 Limited range YCbCr -> full range RGB
-		 * The matrix required is :
-		 * [1.164384, 0.000, 1.792741,
-		 *  1.164384, -0.213249, -0.532909,
-		 *  1.164384, 2.112402, 0.0000]
-		 */
-		[DRM_COLOR_YCBCR_BT709] = {
-			0x7E58, 0x7950, 0x0,
-			0x8888, 0x7950, 0xADA8,
-			0x0, 0x7950,  0x6870,
-		},
-		/*
-		 * BT.2020 Limited range YCbCr -> full range RGB
-		 * The matrix required is :
-		 * [1.164, 0.000, 1.678,
-		 *  1.164, -0.1873, -0.6504,
-		 *  1.164, 2.1417, 0.0000]
-		 */
-		[DRM_COLOR_YCBCR_BT2020] = {
-			0x7D70, 0x7950, 0x0,
-			0x8A68, 0x7950, 0xAC00,
-			0x0, 0x7950, 0x6890,
-		},
-	};
-	const u16 *csc;
-
-	if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-		csc = input_csc_matrix[plane_state->hw.color_encoding];
-	else
-		csc = input_csc_matrix_lr[plane_state->hw.color_encoding];
+	const u16 *csc = input_csc_matrix[plane_state->hw.color_encoding];
 
 	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_COEFF(pipe, plane_id, 0),
 			  ROFF(csc[0]) | GOFF(csc[1]));
@@ -749,14 +710,8 @@ icl_program_input_csc(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 0),
 			  PREOFF_YUV_TO_RGB_HI);
-	if (plane_state->hw.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
-		intel_de_write_fw(dev_priv,
-				  PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
-				  0);
-	else
-		intel_de_write_fw(dev_priv,
-				  PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
-				  PREOFF_YUV_TO_RGB_ME);
+	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 1),
+			  PREOFF_YUV_TO_RGB_ME);
 	intel_de_write_fw(dev_priv, PLANE_INPUT_CSC_PREOFF(pipe, plane_id, 2),
 			  PREOFF_YUV_TO_RGB_LO);
 	intel_de_write_fw(dev_priv,
-- 
2.29.2.684.gfbc64c5ab5-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
