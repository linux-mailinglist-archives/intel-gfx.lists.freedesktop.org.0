Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3750691C412
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 18:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D277010ECBC;
	Fri, 28 Jun 2024 16:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ObTkFpGz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FE710ECBE;
 Fri, 28 Jun 2024 16:45:35 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-1fa2782a8ccso4659025ad.2; 
 Fri, 28 Jun 2024 09:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719593134; x=1720197934; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8tL8aloBlZX0i4tHLHH/ozL0kaAxTfWNWAhQPzgLwdc=;
 b=ObTkFpGzHc0KF9I9Hg3COqBNMWhTm0F1i42Pf9HgngwQcYARHI+A8+vdyzi5tSAvTv
 1JI5Iae07fdSzUXmbPuzWPXvHemNbD4m/jPDGACfWfBh1U486gNzMlAacXjl3UpPpO72
 tJPtubSZCbxkcQ/jx5Q4yogfbRpFbZNZbkPRSIzPJrizWZGZ7uJXVetJDLXSATDNjGNC
 GRjl8UgCOUFYH07xD5xgsFsjfoIpt79A2st1auYOs+oqSxvk3ZmfFyYPaKuhKIwhAYon
 tsmSFzdA3/2svtxK7oyUog7zK/xBugPGYgOIY3qbE26n3lxiOTzG2G6nmxpVmZJmBdvi
 JumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719593134; x=1720197934;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8tL8aloBlZX0i4tHLHH/ozL0kaAxTfWNWAhQPzgLwdc=;
 b=DusM9c/2k5qLJJxMXuMtZLKFmtEUlNo73SYZcvClz1dPVC1KmENdZqsnGYyn1cBM+B
 XM7sgKEymIZE2w5viUacWsfsi6vdA9o8YLVRfIRHcqD5YKRfPJZJ/FNwD9CCAu848jMP
 Z/DaZkHSjoeoovwavfEcRG24lGUv8A/sk2bHTmZUyyb6OdPzJimVX51LHBxWyDK9I2Iy
 4xlbNE/V+0jiZ71B2b5bbGWPxJSxrcAf/1HjekyIV7oe2MIH/wib+1baztric4NtA/c6
 Cg7yM+dedRAD7VVNr0ui4qrDLXYI2B563NZdzzhJ2G78Fq8DuNR2OMG7pyFmanKGrztv
 OgnQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPSEz3uyQCHeVjkf0mqyekieEwUU5gD+uGFRqao5mtvFWOPgqUaBAyHy7c0LA8EZ2M+P6Wt0hyUL3VGy8D+Yt4Dw2izxSfWnOv+u6ttoEu
X-Gm-Message-State: AOJu0Yx2IfjPLSJ2uS+KSIhV7By+94S4NBvkK+aUfzj1bzBY/KnDALsS
 EWUlwypxdyzFiUIiErWBVfcVH99BTkDGidMRuuXmBfYs9nZMS/cjgIdj6BLhU1s=
X-Google-Smtp-Source: AGHT+IHZuO4HFsfhQAdAxRU1ED6Md3VFv62rsOiKkaYcJhbjF0BzMdP2rntcoUbywi8Ve3/mks1E5A==
X-Received: by 2002:a17:902:ea08:b0:1f9:f906:9088 with SMTP id
 d9443c01a7336-1fa23ecd142mr168645315ad.22.1719593134372; 
 Fri, 28 Jun 2024 09:45:34 -0700 (PDT)
Received: from localhost ([192.55.55.46]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1fac1535d1fsm17445595ad.144.2024.06.28.09.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jun 2024 09:45:34 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 1/1] drm/i915/display: On Xe2 platform always require ccs
 alignment on tile4
Date: Fri, 28 Jun 2024 19:49:00 +0300
Message-ID: <20240628164900.2737389-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240628164900.2737389-1-juhapekka.heikkila@gmail.com>
References: <20240628164900.2737389-1-juhapekka.heikkila@gmail.com>
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

On Xe2 platform with tile4 decompression is enabled unconditionally
hence consider tile4 as ccs modifier

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f23547a88b1f..c36d5a9dc5ac 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1733,7 +1733,8 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 	}
 
 	tile_width = intel_tile_width_bytes(fb, color_plane);
-	if (intel_fb_is_ccs_modifier(fb->modifier)) {
+	if (intel_fb_is_ccs_modifier(fb->modifier) ||
+	    (GRAPHICS_VER(dev_priv) >= 20 && fb->modifier == I915_FORMAT_MOD_4_TILED)) {
 		/*
 		 * On TGL the surface stride must be 4 tile aligned, mapped by
 		 * one 64 byte cacheline on the CCS AUX surface.
-- 
2.43.2

