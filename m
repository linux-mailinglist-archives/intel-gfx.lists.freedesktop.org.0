Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B4165D2F9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 13:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F2E10E109;
	Wed,  4 Jan 2023 12:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6490610E0B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 12:45:07 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id bn6so25377470ljb.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Jan 2023 04:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=nDOhTtA73vLqDz/ODBfMXC+/YHuw90oYdb3w+cU6+Mc=;
 b=cdebjWXGhd5hU9f8i8z4axsVTsUp12UPk/czcV609OfOoor5bkN1wwXyC/tykj/0Pc
 J+uSREvYD+VwRgdGU0ikApwHak+r1NJfW0hY3fItkMsMqiy4fdhyJuLyyg7YyCurpZl+
 Nu0XywiABFns2UCIbiqMQiqN6KQY8OxwvJuZgnJ70JfBu2w5E5Q4GC000BH9TBNgUgrw
 rBA5PkZzF/HnFUHXr4YPjqhrE6rlc+GL6fWShkR3MlKeE27GJjUY7nU2Df9lQvIeMTPg
 X1rT4jOa7/ksYuI2xb+iblIkXLC7rsUoVP3c4uPtNNIYOrWGOf8aRUpG5APHKBPqwN56
 m7SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nDOhTtA73vLqDz/ODBfMXC+/YHuw90oYdb3w+cU6+Mc=;
 b=w6buq2dZhJjm4U/KTsRMxZZreJUsiZLnWCOIdAeXdlQ73c2bMEsTwkf1Q7+fMIuVPN
 ozzQE5IIzTKWbVrskzft53wxyF7JpS4G6K/xyH+252qmwXoYcE1UfXo1LXDNrdlNtKSQ
 Lhrl0ni1bsIrQMFUEveIfk2LXK9cQuRipFEteWoFgoVZCX8cyJkPXPr5/hc7+zbCRaCt
 VbkTjmGwFyeovhM3ZzUn3qUE/htjK9tAVt//cUuDCOsZw85S3Uef160tR7JedkL6ooF+
 AKdcbtfGPU1IDSw2tt0dMgKKLPbb+Xd0pLTXMOGakM3vjMYjBMnGmQXl1Z51RX3HRtgm
 NQsg==
X-Gm-Message-State: AFqh2kpwHiN5fVY/8LMH3t5vqW7ju08DIQsqVM/iNKq/UfT76QOY2ZU1
 XwEKwJgWjnbmsGlaWFgP2HKFdlA7TqioMz6l
X-Google-Smtp-Source: AMrXdXs26w7w3YH5zyZglOiewS53M5uorRZsvnmmY4qoAm9J3xhtxwyAjUgPEq1BK4LRY9b/Sv2Elw==
X-Received: by 2002:a05:651c:110d:b0:27f:b151:8ff2 with SMTP id
 e13-20020a05651c110d00b0027fb1518ff2mr14673375ljo.20.1672836305047; 
 Wed, 04 Jan 2023 04:45:05 -0800 (PST)
Received: from localhost.localdomain (d4d2m3dm3z5wd2yd5x8-4.rev.dnainternet.fi.
 [2001:14bb:c0:ecab:8d57:a664:3b00:799f])
 by smtp.gmail.com with ESMTPSA id
 h20-20020a05651c125400b0027fb0ce035esm3424634ljh.67.2023.01.04.04.45.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Jan 2023 04:45:04 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Jan 2023 14:44:48 +0200
Message-Id: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: assume some pixelrate for src
 smaller than 1
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_adjusted_rate() didn't take into account src rectangle
can be less than 1 in width or height.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 10e1fc9d0698..a9948e8d3543 100644
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
+	dst_wh = max(dst_w * dst_h, (unsigned) 1);
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
 }
 
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
-- 
2.37.3

