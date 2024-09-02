Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F76B9680BF
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 09:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21B610E223;
	Mon,  2 Sep 2024 07:36:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QaPNXadH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0D210E216;
 Mon,  2 Sep 2024 07:36:29 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-70f63afb792so1751504a34.1; 
 Mon, 02 Sep 2024 00:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725262588; x=1725867388; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fA1r43W3Mqfhdc614VDk/Bo2YVo04K9ABi/DH+AdGfE=;
 b=QaPNXadHByyY7b/JtSXUzlU5dno3b7GboEw+czCSP+uL1+AcXnVSy70IQdgVcjsWaJ
 aU0MZ6PYeUxKVIE6e/GD8MEQxJNNC0T2LmWbSRt10cb+oqlAxhQoQJlexNZ5z6iQ43Ah
 gczl5LD8WaEw2yTjs6o+8qMj2l3NREsL1gFSdYkxoHzeQVbJbaO2OFdR5/0QqcYk3iDY
 SKpicXb/5vHZaNgPfS1JaJAGFqVeM7vBATGnBiZNpiU2ztjwkFLg1L+bFwNP61aFIrbk
 hfSdmJhsOTrceBKrcuZaMEM3YRP872cKbdCn9TRLCcxDsFOAn3uSnMKWPTYRx0xo7hCJ
 8k+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725262588; x=1725867388;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fA1r43W3Mqfhdc614VDk/Bo2YVo04K9ABi/DH+AdGfE=;
 b=pYZv5PnDAuQR6Hw7w090C5I94xDdAmpTgQCapA1WiRUk3oXsEukI9lDN98RLPTiJtz
 ExYYTCpZI2lrSoEXIM8jo+YLjc3qd36azGW0IqAgxz8cvKO29Z38+BgOgK79/3zINd+G
 7PbOSL4O5lyA7S83HHrBZXSNqKwNvpvqERc76TSuSYdsh3osrJH6Y0s5BJok/RZAcXKZ
 zvoRiMLPV4UUaJmkP6GcZe+2Ji6FD8IkYnpjgRyND4V/NxaP0fD/i/sj8Pp9MOaky04t
 bbo8V0DkJR/VIrZD7nIMFIi6Ui3bRvALbuo5XYu1A/ctuie6/zNFB+kXR+cVdic/kmjF
 QmjA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbhR+dlVIWbRQvzMBWz+5yBu/ivICP8E0qKp0aklzJKuFnora+58N4JSELRhscWnocJM5mSr/ykeU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy+8NavGFnbQBlUvBrZ7ZVj8kKlCev/HGi8PJ/wshTbT57S+g0M
 Vmaj+A81YUbXrMzwv+pKkrlq2fPd6NB5fUV3OSzLV+JOnq267VazPikS71Y/
X-Google-Smtp-Source: AGHT+IFJ1q5A9ivLtFWDa0aR2zqV9Ck2TMR38wNLsLdgW6w0E9It5/Yr9+51I5Eg8mJGD1DJnC3z5Q==
X-Received: by 2002:a05:6830:4194:b0:703:651b:382f with SMTP id
 46e09a7af769-70f5c3447bfmr15604350a34.3.1725262587685; 
 Mon, 02 Sep 2024 00:36:27 -0700 (PDT)
Received: from localhost ([192.55.54.41]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-715e55a594bsm6307326b3a.55.2024.09.02.00.36.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2024 00:36:27 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, imre.deak@intel.com,
 rodrigo.vivi@intel.com, maarten.lankhorst@linux.intel.com
Subject: [PATCH v3] drm/i915/display: Fix BMG CCS modifiers
Date: Mon,  2 Sep 2024 10:40:21 +0300
Message-ID: <20240902074021.459480-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
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

Let I915_FORMAT_MOD_4_TILED_BMG_CCS show up as supported modifier

Fixes: 97c6efb36497 ("drm/i915/display: Plane capability for 64k phys alignment")
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9452cad41d07..17d4c880ecc4 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (gen12_plane_has_mc_ccs(i915, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
 
+	if (DISPLAY_VER(i915) >= 14 && IS_DGFX(i915))
+		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
+
 	return caps;
 }
 
-- 
2.45.2

