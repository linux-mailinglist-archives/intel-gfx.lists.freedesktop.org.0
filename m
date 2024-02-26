Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1D08681FA
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 21:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5578F10E506;
	Mon, 26 Feb 2024 20:37:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TJJWMNrv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D779110E3C2;
 Mon, 26 Feb 2024 20:36:57 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-5129e5b8cecso4355633e87.3; 
 Mon, 26 Feb 2024 12:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708979815; x=1709584615; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HzoZ/u1cfD3vJmuTK9mXtHA3U7ArRUlRy1buSnzNqhc=;
 b=TJJWMNrv8txz34XkmiI6wVAP+40TCn42LgdZ4OlAK1C+IQiLCz3Y4cEdJ4sDhShV8i
 uwwW+00VhM4kJAWg8aj/9oeUKzUolwd9pj3vXwFEhV/JtS/EGcv7wnS8ACNJj1vcp/zQ
 R8lFub1iGz1vWntIKfuMUImV7m5Cnw45tKxUH4YxR+CGHvYi2fp6iLYm2n+SpFxXeFjR
 pWqnR2KgmhtJyAFuAgdMAwk0EzpZ8bge6ZyEZ9r/IQt73Ty5DM1oJMKgS4mTjYDUCyRA
 dKIbCAuMElBXg1TwvJAjy1UW8wGqpkZuQpLvW8onMp6VyFvFCLOhnT8PQ09suF6yMcox
 GYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708979815; x=1709584615;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HzoZ/u1cfD3vJmuTK9mXtHA3U7ArRUlRy1buSnzNqhc=;
 b=QndTUPQuNkbGPxjoHyv+lj10p17wkHOzAeQadPvK/dIewKCfoNfb7S78bEXEvEG+LR
 WPYKyTlb4H+VCNuJBzEwfXOkJyZapieRywBCO3NFLxtn2yBNzIxSP8DeHNu/jTt2dTYf
 vx51K0e8XLatIue4oh9KAbECwR+RhQnlvSVco7Ye24seTtGcMDyCwqhzhQmfHAOtbt74
 q/a3RYBamkazFUVs6Xc49JwnKCZeWJZu4LyE/2xKWyyaeJ8gqeFcDwHQzG4C5F38Gjng
 RKZCNktng8y20FbJJSWE1jQ6//ZTzxfQ9d+hFA3Mg/vuv7q60gvsFEHweKIOJpUPqsuP
 oj1g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXuG26xGn6PsRHp99+OS0tcKhi9//KjqxsCNmRGE01TjAUzysF/XSdZODmG2Jk+9WGX7MMPhdBQpvdEIzRGSiTrpgSSTtJZDMC9eDe98/G6
X-Gm-Message-State: AOJu0Yzfnj20vfW50+k0hjrB3f9UN12+DBJFNamH+tUoArFHXXg7RZnu
 kUahjW0GBXQ/wXozW7MpcUQoDRmgmBWufRAyBJtbOP8n9cIhKe+9bLOxX/Aw7DPlhw==
X-Google-Smtp-Source: AGHT+IEiRVOQVtEH4SCO60yDY0lMlRVP20ksLGV7mn509vyAP68H8YRU5v/fcVx1InYZy9+7P9U8ag==
X-Received: by 2002:a05:6512:b08:b0:512:b90f:fc4e with SMTP id
 w8-20020a0565120b0800b00512b90ffc4emr6431523lfu.46.1708979814782; 
 Mon, 26 Feb 2024 12:36:54 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 q28-20020ac25a1c000000b00512ebe62693sm943697lfn.255.2024.02.26.12.36.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Feb 2024 12:36:54 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built for Xe
Date: Mon, 26 Feb 2024 22:36:51 +0200
Message-Id: <20240226203651.818678-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
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

AuxCCS framebuffers don't work on Xe driver hence disable them
from plane capabilities until they are fixed. FlatCCS framebuffers
work and they are left enabled. CCS is left untouched for i915
driver.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
Let's try adding those ifdefs as IS_ENABLED(I915) will result in
warnings from checkpatch and there was wishes not to break
universal plane into smaller parts. IS_ENABLED(CONFIG_I915) is
always true when building both Xe and i915.

 .../gpu/drm/i915/display/skl_universal_plane.c  | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e941e2e4fd14..7e0a7283d01d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2283,6 +2283,15 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 	return plane_id < PLANE_SPRITE4;
 }
 
+static bool running_on_i915(void)
+{
+#ifdef I915
+	return true;
+#else
+	return false;
+#endif
+}
+
 static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 			     enum pipe pipe, enum plane_id plane_id)
 {
@@ -2295,6 +2304,14 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (HAS_4TILE(i915))
 		caps |= INTEL_PLANE_CAP_TILING_4;
 
+	/*
+	 * FIXME: Below if(running_on_i915()..) is because Xe driver
+	 * can't use AuxCCS framebuffers. Once they are fixed this need to be
+	 * removed.
+	 */
+	if (!running_on_i915() && !HAS_FLAT_CCS(i915))
+		return caps;
+
 	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
 		caps |= INTEL_PLANE_CAP_CCS_RC;
 		if (DISPLAY_VER(i915) >= 12)
-- 
2.25.1

