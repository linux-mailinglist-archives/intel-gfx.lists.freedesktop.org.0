Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7727B964458
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 14:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E7DB10E666;
	Thu, 29 Aug 2024 12:25:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c4puGOhg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7B710E668;
 Thu, 29 Aug 2024 12:25:39 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id
 41be03b00d2f7-7ae3d7222d4so373593a12.3; 
 Thu, 29 Aug 2024 05:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1724934338; x=1725539138; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uLgC67of2OxnhEYp7TL7whcXZx4wSiDzOrDfS5iPKRg=;
 b=c4puGOhgsqrZZR4dIku9OKBMrjOF02XjLxVocRh8EScwH+z5ovgg5QnDqXLNhVQgoU
 CHhkSzjTud8aqiQlLlN0nudzoE7QSmvbnBVlNfgTH9olOgK+I8lHv8i6DSxWsQDUhseX
 x+KBYIwdlcJH5szABmimt1w0inOdDhJc0Fup1EGLSeWCi1AHmwOSIcbyitRRWy1DfITa
 yJoae5cjcYGxruxL7oYfpuQ8PlLO/n/CDf2vIZZ/Clv8FqBtF/a0tuL90NtXYYnV+uZv
 OTBOydUW16tiq8JYNN+mx+I+1SaPeNXVQH8K+SkbLxceHJGnrO4KRZYGqmh4bLm8xXeF
 QmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724934338; x=1725539138;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uLgC67of2OxnhEYp7TL7whcXZx4wSiDzOrDfS5iPKRg=;
 b=BtkYDXcVE2fdwlYgys+qsQdUvxAZKGUp0fyjiin0kzdgnW+3P4UkuymCHF6+jAEud9
 7wyPGKu7HDdB/tqfJzUBCOAW/NGuQPBIL5kkFsN0LLo0KP7R0LyLnziHKKON9E108u/R
 Gw/RyNq9C0FE9dxkrdOv1adaLyJ87twKViMXL3j3Jv1l7OXQixomrKgdwpWE219rf5ED
 kwbMuOfAntHNpfIKusM45i+QO5/YipRvpIOjoZ5hYfqnViuK/oJEVEFsaxp3tU7h9Cku
 DK3qNOWlc5NvO8CQZYEwbJYCr8ziZbj7xqjPUn/XlOxyssmFSYDHvVuB6gKLLeLyP25q
 nwjg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXn1wOd1v+t6nmS7Li0KRDK8Kfnpx9Iy7X+Tp7rKmNplb+rJ2J5298DnMv5ykbaawcLr8JWz4xnAy0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxkcfl+xr5lbTp7DzRCyYSHuCBeioA3MtvsDy+1IjYKvpMDUemo
 qpZZW61tXuaGz1Ip9ynHF1DDhO9JdIfrlZKscQFgTWLE+9My1f6GRPAcneK98Zk=
X-Google-Smtp-Source: AGHT+IFbGzECTn5MEDYMOOqPFrq1J4b31a/AJPacwWpDembBEANMFKdhc2RZYfaCqNxBiwi5AAkGqQ==
X-Received: by 2002:a17:90a:9e9:b0:2d3:ba92:b27c with SMTP id
 98e67ed59e1d1-2d85649e7d0mr2458175a91.42.1724934338290; 
 Thu, 29 Aug 2024 05:25:38 -0700 (PDT)
Received: from localhost ([134.134.137.72]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-205152cd89bsm10311425ad.68.2024.08.29.05.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2024 05:25:38 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, imre.deak@intel.com,
 rodrigo.vivi@intel.com, maarten.lankhorst@linux.intel.com
Subject: [PATCH] drm/i915/display: Fix BMG CCS modifiers
Date: Thu, 29 Aug 2024 15:29:28 +0300
Message-ID: <20240829122928.423456-1-juhapekka.heikkila@gmail.com>
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

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9452cad41d07..d28b98e7cbd7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (gen12_plane_has_mc_ccs(i915, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
 
+	if (GRAPHICS_VER(i915) >= 20 && IS_DGFX(i915))
+		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
+
 	return caps;
 }
 
-- 
2.45.2

