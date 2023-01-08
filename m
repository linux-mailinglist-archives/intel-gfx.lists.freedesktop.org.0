Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 590CC6614D0
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Jan 2023 12:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF9510E191;
	Sun,  8 Jan 2023 11:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF1110E191
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Jan 2023 11:31:11 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id f34so8752252lfv.10
 for <intel-gfx@lists.freedesktop.org>; Sun, 08 Jan 2023 03:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jEXTcUgvzJkG0/lLrjMiU5plwxqzf6Cl1cDQFCPJvtY=;
 b=QXoaYr/j25cl0Z94ZdA71HbvPXbB0NCWqQmmlufiINOKiatET/5WTTAz+HMuVYNTdk
 tjspVQ42w1NFs0wHP81WIacuYhbRdwvBhRD8lYRrAxlXnF6c+us97fwA+2nmtSiV/32q
 vGc7lXGAXA6KajUNuEl7zwcRMWNN/t0pQU119bEoFGZSQqJFtDYlIrp67e5EcdPvFGJg
 JY0xdHQraxYRa0akOfbGaE0RezZM1xVyD/ZlwyiGP584G1syxDSdd78n5cAkPkAO6FPp
 LKCJrPNtaKnfG1HXN29MFIFvvmRj2m/ZNJSm6ASIJhOSXojkjlwsZDtqQJQgPxr82QRa
 MI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jEXTcUgvzJkG0/lLrjMiU5plwxqzf6Cl1cDQFCPJvtY=;
 b=VcXjWB/kE0w4GXk3+nV4GJvVxqyvO1UagYvsweO4Fnm9aYPOmciVQCNVPyFvgEmu1z
 k1/cL+VsRUv1RWFXo/XLlBZPPXfyR7bse/WDnaJEdR8sckSR7Xr0ErNACl7tenYqSM3j
 u7XyilQYvo8GTt68RFdJBqhq18tdus4U5Vtc4j6WxoKkZq/N4DCCPaqe6r8zsnfNUyF8
 EvE20+BUbYTuYuaNqag5WgTR6sWQeKhMjWgBapSHIfCSFLNYMAGadpSiufoo3XHKIRww
 kdQe4U3NBiudB5EDkydVW43P7/8yqXs6kTcphxBvzU8HsUPJl/EM5w3n6XLJRuLDfYUZ
 nJuQ==
X-Gm-Message-State: AFqh2ko8YqJnuuv1bUQG4LiSl+HNoiMeV4n+DqmFgpcq5MArckXsj6V3
 0bgrSWqTezesaNQW5nTuQqfbEkPiofCrJA==
X-Google-Smtp-Source: AMrXdXvdejZ6YW+mngHZTTxtqZUuFglsneZxcv03iJZ9ElQSiR3UYf+HjlYXFV8jR9naZSbTB+opsA==
X-Received: by 2002:a05:6512:2a89:b0:4b9:f5e5:8fbd with SMTP id
 dt9-20020a0565122a8900b004b9f5e58fbdmr16101760lfb.52.1673177469682; 
 Sun, 08 Jan 2023 03:31:09 -0800 (PST)
Received: from jheikkil-mobl.home (77-105-100-22.lpok.fi. [77.105.100.22])
 by smtp.gmail.com with ESMTPSA id
 o14-20020ac2494e000000b004cc6ce1de69sm1016217lfi.42.2023.01.08.03.31.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Jan 2023 03:31:08 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Jan 2023 13:30:44 +0200
Message-Id: <20230108113044.3528-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: assume some pixelrate for
 src smaller than 1
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

intel_adjusted_rate() didn't take into account src rectangle
can be less than 1 in with or height.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 10e1fc9d0698..cd24d069b6eb 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -144,7 +144,7 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate)
 {
-	unsigned int src_w, src_h, dst_w, dst_h;
+	unsigned int src_w, src_h, dst_w, dst_h, dst_wh;
 
 	src_w = drm_rect_width(src) >> 16;
 	src_h = drm_rect_height(src) >> 16;
@@ -155,8 +155,10 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
 	dst_w = min(src_w, dst_w);
 	dst_h = min(src_h, dst_h);
 
-	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h),
-				dst_w * dst_h);
+	/* in case src contained only fractional part */
+	dst_wh = max(dst_w * dst_h, 1U);
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
 }
 
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
-- 
2.39.0

