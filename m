Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4459D2C5A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 18:21:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA11B10E695;
	Tue, 19 Nov 2024 17:21:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eTHvtJ36";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6858310E695;
 Tue, 19 Nov 2024 17:21:30 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-7246c8b89b4so3907070b3a.1; 
 Tue, 19 Nov 2024 09:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732036889; x=1732641689; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=a6KLEWYZye5Sq732J3G8kWJR4LNQs6UUiyLg6FE31xI=;
 b=eTHvtJ36csgqcJZmCsFx5dnXyieyry38mAO6u0an/5EBNWdv8sj+xCwC16kqpLtXsJ
 k6fN3fyd3vab2kWWMwi8jtv7Yl4KJ7RCBalVij2sEq2GaycrXuxWczPtRUyaswCWaCna
 zugv7ouqVW2Dhrc3zsAXxPyWcU0v/IMLea5F5ioEx6cgsOzkS3XqP7St/GMOsUFmeInk
 pG07HFVNlnPn/OH+lR6NmVcBn0AlAZLAlY/rgqID8/2INMoReols0i9Cz8pYSHUz/z3/
 AdsjSqnXzmPYquBxPD9l+LCOZZy9ndZYDOAESgNJ3m/0uxaxOq6HKPYtq+zDmpZfufA/
 cylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732036889; x=1732641689;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=a6KLEWYZye5Sq732J3G8kWJR4LNQs6UUiyLg6FE31xI=;
 b=Vt/v0Z+ow4CxuVfUyI6QKdyyzore0B8WKa09wWMzyA3zJPYUflMDQjVsvFsJXCBUdR
 wIny0Hqw1tIHpVK2RobcUGT+zCGxLwGrRco+EldeZXqMbS4Ca1BHFXFCJO5B+BRUv8du
 t1A5f5CBMq8mWD/XgvUgrrgPFk4LM6Ze5zlB3IUv2pqDQFX8gUufX+rOI/woItyXQqkb
 b7Ax9oNfIedKImoxldQ6Np1uySfJWwGDxMqiBAt4v4Mbxk2uz16O56o72ZoAOxkHtwlH
 AMK/V3Q8Yz6qCBdq3AO6mt3J313UL87fgIeyJugFXitkYNcIPE6rCPw1j1iFS+51aotx
 hHGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUahZWth513gmHBOdvZazOUDmvmk/joneutLMnqlZpnHapJzs9w6lgAHGeyVg3CGkydthVi0VNu9Q==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSuHhKqgkYp8rGoLc5hVkYX1tIB0Z9yIFjnGE/G/tmOpkPP8tb
 0Fdmt0LKD8zeR1o9jK6Flf8xWsXufz6sZ+DgSklc6D9NUakz9vRxOaPpc5gKjNK1/Q==
X-Google-Smtp-Source: AGHT+IFHJ87SuW9QMNT3JT6SQHBGc8vYjLyFg4MDtCvjwke8LG2D3zjk5iaaqQMFhZDhLvt9+SxeBg==
X-Received: by 2002:a05:6a00:4fd1:b0:71e:667c:8384 with SMTP id
 d2e1a72fcca58-724af929a56mr6299940b3a.9.1732036889356; 
 Tue, 19 Nov 2024 09:21:29 -0800 (PST)
Received: from localhost ([134.134.139.75]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7247711dd82sm8658319b3a.65.2024.11.19.09.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2024 09:21:28 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915/display: Don't allow odd ypan or ysize with
 semiplanar format
Date: Tue, 19 Nov 2024 19:25:44 +0200
Message-ID: <20241119172544.861424-1-juhapekka.heikkila@gmail.com>
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

Disable support for odd panning and size in y direction when running
on display version 3x and using semiplanar formats.

Bspec: 68903

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d89630b2d5c1..a61eeaa7640c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1030,6 +1030,11 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		     DISPLAY_VERx100(i915) == 3000) &&
 		     src_x % 2 != 0)
 			hsub = 2;
+
+		if (DISPLAY_VERx100(i915) >= 3000 &&
+		    DISPLAY_VERx100(i915) <= 3500)
+			vsub = 2;
+
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.45.2

