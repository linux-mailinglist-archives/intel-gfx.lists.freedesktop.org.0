Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DDB847294
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 16:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7845310E07F;
	Fri,  2 Feb 2024 15:06:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hBjJriXy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ADB310E07F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 15:06:21 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-511206d1c89so3006553e87.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Feb 2024 07:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706886379; x=1707491179; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Rv71wG1vxBBHegMPvcinQkXyPZnFxEIY4+DX6mOVEto=;
 b=hBjJriXyNzGrEXIFRRWJpC1oeqmSG9j4JvsN3l9ThS4FKfiwaPjm//VgOzgqGVPViv
 ML6ZGzNKhvohP8Re6B6wpE2cRk2tVhGt5N8GWmHWoZMF50IdMg0ngfdl8vzumV+Jmd1N
 Z85K2CvSbYfulGLl0z4gS1HKS3rXkT6AQB6EiNERhWvVXfF/V3Posr8OhhcEDDDuUVpV
 19d2PBLjj+3KAK5eDcaQyRpkWaAldgAFkgrJ01RHFDvNhQu1AM7IG1Xz9bIdq0SkitQ3
 IzG9WRiTE9L1XY/hdosTzDMGMG2Mt4IUIcBDROCFsON5xHn+ehl663/oFWb027JEsDzd
 XWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706886379; x=1707491179;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Rv71wG1vxBBHegMPvcinQkXyPZnFxEIY4+DX6mOVEto=;
 b=Lat+kdWf7X8MLXFxDdE6HG/ZJKn3rdYHtjBEtfasPrZHLeaqhEltQxMN23E+wCi/IE
 Awt6dzqBbYYETzCc+0pQcNBRPmvVGJas6eQWMlQDk1E0GpjSjULgr2BpTytbhmSlQq6J
 jaOorKQHCFLQjNcAJ8pqarb7HUMRVJwHcmlb7+G8opXyMtPjiYoHrcufPZ4sHmWaPvZS
 O/ak0gWDUAvUAy12ZDbbc6oSprvg3Qm12LBth1D6SGVUAavaa00fUi90xOBcqs4r8tc5
 2w3yXOYOV8Jx0Xebm8n8mvoDXMnl3+14U1DvaGJkj9ytKJ0j+RLB0c1BNGgufZFwImY1
 7zdA==
X-Gm-Message-State: AOJu0YzzL0r2fvYdIK0uJ5v28mZ+17/TDABy+c2Xk4ny7gAQleV928Tf
 QANUGT50P+9jf40aAr1YUhGBVdPkTsUW3A2Y+Frw5gp4u2bvG2LoMS+y/zyDPZdbnw==
X-Google-Smtp-Source: AGHT+IHmmTfM+UPJBrWwlAoJm9HqUtJjkAUCaH6kEY0zLHsXuK8r5SgEeyMVs9u9mE5DWoaT/x7DFA==
X-Received: by 2002:ac2:5049:0:b0:511:32f8:6ee2 with SMTP id
 a9-20020ac25049000000b0051132f86ee2mr1570285lfm.63.1706886378745; 
 Fri, 02 Feb 2024 07:06:18 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCXESluIGr93ETF8cLJu7EdtDgheb/LfTRueoen2fDVV9/Kh75c0Odal6zpxgBohuflxsHzKAxAd56f/0px2yS7MGFxQniY=
Received: from jheikkil-mobl1.. ([2001:998:22:0:7cc9:771:a174:dbb9])
 by smtp.gmail.com with ESMTPSA id
 r7-20020ac24d07000000b0051021a9febdsm326931lfi.153.2024.02.02.07.06.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Feb 2024 07:06:18 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 1/1] drm/i915/display: On Xe2 always enable decompression with
 tile4
Date: Fri,  2 Feb 2024 17:06:02 +0200
Message-Id: <20240202150602.430036-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240202150602.430036-1-juhapekka.heikkila@gmail.com>
References: <20240202150602.430036-1-juhapekka.heikkila@gmail.com>
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

With Xe2 always treat tile4 as if it was using flat ccs.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 511dc1544854..43209909593f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -948,6 +948,11 @@ static u32 skl_plane_ctl(const struct intel_crtc_state *crtc_state,
 	if (DISPLAY_VER(dev_priv) == 13)
 		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
 
+	if (GRAPHICS_VER(dev_priv) >= 20 &&
+	    fb->modifier == I915_FORMAT_MOD_4_TILED) {
+		plane_ctl |= PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
+	}
+
 	return plane_ctl;
 }
 
-- 
2.25.1

