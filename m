Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1DC83C68A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 16:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE2810F927;
	Thu, 25 Jan 2024 15:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DE210F910
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 15:26:17 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id
 38308e7fff4ca-2cf161b5eadso34932071fa.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 07:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706196315; x=1706801115; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=jJWnAKg87Z/LXnOINUez580IuB4oaF7s+HIDOVWtFvs=;
 b=Elz+vuYHpJaJuOA8drOFhFvNRoevs8XNRiskmG69C7zOLFgRMfjbd0F7Oy6liw8nSW
 QfPaPHRfotCB+tVrThE2cuswX/rULtaSlugElbLKt/7LkQMjyQtR7Ygcw8ZKqaRxzeWy
 Oy92CddcPTbYnGsoDSKn+HQMblLDimDcT0gPSLORxqZenn6CkSe54X099EDG1LEJQ8Cu
 +VS0HwQ9AaZZBKJS3wAxzH2vjp7/u4q5spPdXgbPNSA018wZELDokw1WNjoFek0SeBeu
 I7phqJcwPuwpWovigXg/gUlbkNH+yo+iCsfQzv3WU1yUMSqeTGW5mnv1Sj1UcxJwvF3D
 zSYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706196315; x=1706801115;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jJWnAKg87Z/LXnOINUez580IuB4oaF7s+HIDOVWtFvs=;
 b=tlmVFHSrj64qR3NOyXOEuRGZ17T4QF1l5Dk+JLTQY3X1Urp5O1JfUimmGLKH+ZgKq4
 pvuWmQApsdEX0+18sqDLu8K3QPdN8QAg6BztmPGtBi80JJYVdCYeBpZqmR1Uy180BnpJ
 PUrBNAs4mr+/55S8b2GKMnYrWrwuGnoDCz2jhamZyvl5MaYv4QDp/NXqdAUbmlVAV7hR
 KesbnforkGqICQZ3ejnIdQUNIt0CY68CXPXP8T7ieHzVpc+WYpvIKLv/QsybRAnOf5Vk
 0Y2gHmhPhEw8RF1iY7nWGyHES2fpqd2/kKcuG3Ig5yRZvD+imaTbin5erp4WWTunr0GO
 8K/Q==
X-Gm-Message-State: AOJu0YxEDxUMv5YgOgeXMhmTaSzh0orkf/A3JsXGYJV6WLcIvlYobUmV
 rWoLfetD5J3RW/urdnntqZHMil6bUUVLCFeyaRwhqBp5jQGhhAEKG1OdXaL36GQ=
X-Google-Smtp-Source: AGHT+IHXRISx1u9zUrjGel+jTGqhwgSf1Vk5dRVCnEQNxuIpRKO7rWWpQgN6SZJ0nlf28X37RG/gVg==
X-Received: by 2002:a2e:8887:0:b0:2cf:2fb0:978 with SMTP id
 k7-20020a2e8887000000b002cf2fb00978mr928294lji.45.1706196315004; 
 Thu, 25 Jan 2024 07:25:15 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:6502:bd8d:523c:e8d8])
 by smtp.gmail.com with ESMTPSA id
 i20-20020a2e8094000000b002cc870295edsm308102ljg.28.2024.01.25.07.25.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jan 2024 07:25:14 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built for Xe
Date: Thu, 25 Jan 2024 17:25:02 +0200
Message-Id: <20240125152502.294564-1-juhapekka.heikkila@gmail.com>
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
deriver.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 511dc1544854..1521d829525a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2290,6 +2290,14 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (HAS_4TILE(i915))
 		caps |= INTEL_PLANE_CAP_TILING_4;
 
+	/*
+	 * FIXME: Below if(IS_ENABLED(CONFIG_I915)..) is because Xe driver
+	 * can't use AuxCCS framebuffers. Once they are fixed this need to be
+	 * removed.
+	 */
+	if (!IS_ENABLED(CONFIG_I915) && !HAS_FLAT_CCS(i915))
+		return caps;
+
 	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
 		caps |= INTEL_PLANE_CAP_CCS_RC;
 		if (DISPLAY_VER(i915) >= 12)
-- 
2.25.1

