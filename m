Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B62954840
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2024 13:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B9E10E14E;
	Fri, 16 Aug 2024 11:49:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jLz5hVY4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FE4710E14C;
 Fri, 16 Aug 2024 11:49:19 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id
 41be03b00d2f7-7c3e1081804so1459663a12.3; 
 Fri, 16 Aug 2024 04:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723808959; x=1724413759; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vkIDPaKTVseYE+nNWwpeCiwPrRqP7Rb/V7bXqvp1tag=;
 b=jLz5hVY4+FYOl/jp1qGO9EGgP/WJQvu8AJaez8eZTZ6NBWJwqpKGcfgDAwwtvN4yUR
 AsnFt5BEl2ciDG7mhOV8agZsH0SymfzU3LbfGPhctnlAQrlhrfNOgz+5QELZdehCfTgc
 cGJBCkBOIRkLUJwAj9D+upkZi3fhCCTHDTghcfFS5dkuGyKVJIo9CLJcQGLbTi+ELld6
 BrR/45rxLUhwFBUNK/80+34igRe/5x+xXd3GqHSFL8q+QRyZENgCWJX17m+YQLtb3Osr
 9gwbWbhjBQZFXXFpEB7lAjUye1IM7lDWWAB4HjO85tK5q51Mm8jwpHib3cyVNfaSUCdn
 BIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723808959; x=1724413759;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vkIDPaKTVseYE+nNWwpeCiwPrRqP7Rb/V7bXqvp1tag=;
 b=Y1RnDXqzfD1QkGkiF6vtZ85dSTjSzW4RqeZiJcRA7rDe05HThIplhxdSsypp4Mi3TG
 wwsS/+tjI1kKAGxwRDNIDUfSjFFi7wU7JlJgEYr5jq3a7bcJ0LaI9ZZi/+8fCqjtkXmB
 bSedUZdNFGKtX+xor/87X1q6dcxx5v7s3uTh6bkc8Ey7fWasI5/m3d70dIkyVwZLEgpx
 ZWiwY46mSiwhvwyLVhkbznfqJcquehkappWMXSGJX3YzZAGmHxUaIoKFxtM5ZPmCb3D0
 zoUsaolU5Dm9qDAXouFj/Y2Osh4hdelo2cXPhASND9cw8KGrahmffLQAyKQeon/3KMnp
 Ku0g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0IK6SYnwX319mRDWyNv7v0J6+75gg8rIajSsEtCnLNzyctM0KdJNDTN7lAq9nICDgQm4EHkRAm5tq9v5J+IQ+lYQzQCJdBoehDLYpVU4m
X-Gm-Message-State: AOJu0Yy0wRhZBieyb9a0TMlENHwNbXlioGBZDA+EqMLY7e5DY5+ahvzQ
 DKbLU8fFSKa1o20S2sTaHmXg+S+bUfQlsgBW5L3feSaA7kbn9XjtVzgYauRIouE=
X-Google-Smtp-Source: AGHT+IG0W2tStaXidjswvWWaoRuDfUQER+e+BReQIBvNbGCtaEJLk+YOnUQHHdlWWdvNVgbVSs/L3A==
X-Received: by 2002:a05:6a21:150b:b0:1c3:aec6:7663 with SMTP id
 adf61e73a8af0-1c90503039cmr3110778637.39.1723808958560; 
 Fri, 16 Aug 2024 04:49:18 -0700 (PDT)
Received: from localhost ([134.134.137.78]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7c6b63570a9sm2764281a12.60.2024.08.16.04.49.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2024 04:49:18 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 2/3] drm/fourcc: define Intel Xe2 related tile4 ccs modifiers
Date: Fri, 16 Aug 2024 14:52:28 +0300
Message-ID: <20240816115229.531671-3-juhapekka.heikkila@gmail.com>
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

Add Tile4 type ccs modifiers to indicate presence of compression on Xe2.
Here is defined I915_FORMAT_MOD_4_TILED_LNL_CCS which is meant for
integrated graphics with igpu related limitations
Here is also defined I915_FORMAT_MOD_4_TILED_BMG_CCS which is meant
for discrete graphics with dgpu related limitations

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 include/uapi/drm/drm_fourcc.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 2d84a8052b15..78abd819fd62 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -702,6 +702,31 @@ extern "C" {
  */
 #define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
 
+/*
+ * Intel Color Control Surfaces (CCS) for graphics ver. 20 unified compression
+ * on integrated graphics
+ *
+ * The main surface is Tile 4 and at plane index 0. For semi-planar formats
+ * like NV12, the Y and UV planes are Tile 4 and are located at plane indices
+ * 0 and 1, respectively. The CCS for all planes are stored outside of the
+ * GEM object in a reserved memory area dedicated for the storage of the
+ * CCS data for all compressible GEM objects.
+ */
+#define I915_FORMAT_MOD_4_TILED_LNL_CCS fourcc_mod_code(INTEL, 16)
+
+/*
+ * Intel Color Control Surfaces (CCS) for graphics ver. 20 unified compression
+ * on discrete graphics
+ *
+ * The main surface is Tile 4 and at plane index 0. For semi-planar formats
+ * like NV12, the Y and UV planes are Tile 4 and are located at plane indices
+ * 0 and 1, respectively. The CCS for all planes are stored outside of the
+ * GEM object in a reserved memory area dedicated for the storage of the
+ * CCS data for all compressible GEM objects. The GEM object must be stored in
+ * contiguous memory with a size aligned to 64KB
+ */
+#define I915_FORMAT_MOD_4_TILED_BMG_CCS fourcc_mod_code(INTEL, 17)
+
 /*
  * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
  *
-- 
2.45.2

