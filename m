Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4D295483F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 13:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E3A10E137;
	Fri, 16 Aug 2024 11:49:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YIUp8xWL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com
 [209.85.160.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DB310E137;
 Fri, 16 Aug 2024 11:49:16 +0000 (UTC)
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-267b7ef154aso1317681fac.0; 
 Fri, 16 Aug 2024 04:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723808955; x=1724413755; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zIVP+9btd3xcT88S4cSy4zsnjkk2xEfA67C0R1RXVWA=;
 b=YIUp8xWL1tOqVZNlOkdKFd7tRRKp6I4O4wB1riW6NvgFVrohUTu2bN2OQz1JpunTk6
 9UZkYKgTUKDrInFGxm6TZMjcRbAJEooYX+bDpZbUA4YXe+qETCJ+vDbUQze08jZsDyQG
 RSfN8jlIhBVNKcA5TgcKNvRM8DqXOX6ZJe1m+VMJg4uxYgMXS7e4xhYzBP4r9yk3YWvT
 jynrd6onRcTlc16XsN3jhGbpzuYfvh0cvGGHR5qcvjb0VxbjBXkYXQUk0/U9cTiN78cm
 5IXtl1dXkjHXP9UqHobMG9OY7JqxQj1o3DJFS8BlorcKDvfbGChK4AUt7oSaqRWLDRYB
 SjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723808955; x=1724413755;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zIVP+9btd3xcT88S4cSy4zsnjkk2xEfA67C0R1RXVWA=;
 b=pYkyIwaublXYePvUC1+4DOcvFESjvEqD7fJdNPnXiEi9J5G1pUh4pyxVm46MAvscHG
 qYT58QseLk871Pjv5wwCLtjfC2j1szN23VuUCn8JHis63r/NOtZf9zG0SvCCA8hYM6/l
 +zvXJ4x2i9Eps9+R5bXItlJgpiAl8B6slU5zuXthZpDK5FcicDWnzxcUkPt04XNzQB2U
 zBEZYyogQtj0oO0H2772sQ97mkNMiaB4N2RNE57spl1Uw+p66GiuuXf6QdkUkHKvxbac
 fb9gj8X+KLNgzl59O4NcsOHtktazie3AdovSQrSJlomn/pH3P5Cf6c7sX7im/LH1xWbz
 m2JA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVLCCWGw0uWV/hx1tFA5trsyTWWhEizqVWODEaQpWNhvIstt9p0xh9qkRSxdI2eJ2OCt1Nf3Xl5NP2shasKvEVarm1foWzgfr40dVTRwcBl
X-Gm-Message-State: AOJu0YxT6tsr+Tj2SIHAOcCP4DbrQKqCMGDfv9sf+ZkU2S3RxEnE3H+Z
 Ue6Sja0aK2w6DWtN4kTw8Kaoddvw5G59YN0eKHXpM0mNC5cknT2MbNI/Ag3NYtk=
X-Google-Smtp-Source: AGHT+IH8arAscSx6GDPIsL/UuCJB6YnGrMq/z8nhimWTDUE04I/dqtsgn9LZHl/bTJMJVHLwhiCM9g==
X-Received: by 2002:a05:6870:9d0f:b0:25e:1ca6:6d09 with SMTP id
 586e51a60fabf-2701c354577mr2821217fac.8.1723808954944; 
 Fri, 16 Aug 2024 04:49:14 -0700 (PDT)
Received: from localhost ([134.134.137.78]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7c6b61a6e9esm2433968a12.19.2024.08.16.04.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2024 04:49:14 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Don't enable decompression on Xe2 with
 Tile4
Date: Fri, 16 Aug 2024 14:52:27 +0300
Message-ID: <20240816115229.531671-2-juhapekka.heikkila@gmail.com>
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

From now on expect Tile4 not to be using compression

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ba5a628b4757..a1ab64db0130 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1085,11 +1085,6 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 	if (DISPLAY_VER(dev_priv) == 13)
 		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
 
-	if (GRAPHICS_VER(dev_priv) >= 20 &&
-	    fb->modifier == I915_FORMAT_MOD_4_TILED) {
-		plane_ctl |= PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
-	}
-
 	return plane_ctl;
 }
 
-- 
2.45.2

