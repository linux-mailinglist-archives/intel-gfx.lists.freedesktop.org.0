Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AAF86B129
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 15:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C419210E0D5;
	Wed, 28 Feb 2024 14:02:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lR+uwlQv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C9710E089;
 Wed, 28 Feb 2024 14:02:33 +0000 (UTC)
Received: by mail-lj1-f169.google.com with SMTP id
 38308e7fff4ca-2d29111272eso38033801fa.0; 
 Wed, 28 Feb 2024 06:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709128951; x=1709733751; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=e/5nSoZsZOKBRm2GhJMpGRVuXAj2KUREZMtbjwA3Vz8=;
 b=lR+uwlQv1RLyVMqdwhtBBXOFHJ5pQ89qtaQ4sTrj0piu9zkswypUqrLr0U/yr+Q6vz
 XTxjFSJoUbuSQGlP4Hb3Q2BD0A/2YD95WbUHqspQJbxAhcSkT7yUwaUXER+Eu0WsN118
 iu8ev5oaYb2zAxoFDXWkp3SMe3jpQ2VUhvlc7sWS+DmZ6ujKlYHWd1CQjrd7ZV4ERzlv
 MD92uPyALDu4tYk2WPD/Q379Xm8h9mkrzCwsMzBH1zAuvVLYgOZYMc4gWiSkY8+G3WC2
 x7rn/AYXX6T5js0+SE9SSof401yNfXopTIhfnZ1YiM4RgmbFThFLwMAkj7Vdf8gC4jtX
 EROQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709128951; x=1709733751;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=e/5nSoZsZOKBRm2GhJMpGRVuXAj2KUREZMtbjwA3Vz8=;
 b=c59XMfZkmDBNHb3Ve9o298f7pnyshXDgkkp1u8WN9Ie5F1eoRkdiE+2mLDACMkWZkh
 u+Q/NsN5LRA9KQHplXzc16Zht2krGHG4JDV6crVPd76wM8Q3CHnJ8PWBB7GcgM7fJgbG
 t8d5aR3VQrYoRw0WGyqybFlbJ5A7jBMGNZlBTX24WzcSEoyqC2D6pCV2Vv4WJdPnig6q
 aTClOnzrMoO5Paqv2TdF/fZelH0AGcLogvb+PNmJJIOcxSO065Vxd8dYiiRE9MZh0FA9
 xG3ZsV51BuefYeX6tgl3ONIwg/rJQe124LIvuKof6DVXjSQEQigk2XvvdIu8AAtWKwN2
 0tWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIe7nuPkuVxbhK5i2wVGWHBUotUcRE21ziwFiUq8VSwjeSKjLpwPibiEuSqijYmuPyLCJwoKQ/E8NLyeZKKkktoQYEjLR+9z79ipMu0tlD
X-Gm-Message-State: AOJu0YzUGEfIIlRhBAx7eEW4RH9HLJulaM8EPtCq65Wusb21Kxp/NaUc
 rVMkflkJ/T4bzVZ6hQSm1IVGLQd2SkaM2upadojLfBf0+M3K9SQeSb6rl0pJfEMT24Lx
X-Google-Smtp-Source: AGHT+IHipPwBHKR/hX7IUF9eA3of6r9bs7sX6lx544iQXSRy2OQt6pigyhBpm1/U3wGpcOOHC1j5/g==
X-Received: by 2002:a2e:868e:0:b0:2d2:79c8:838e with SMTP id
 l14-20020a2e868e000000b002d279c8838emr7943319lji.40.1709128950403; 
 Wed, 28 Feb 2024 06:02:30 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:762f:916d:d5b8:97cd])
 by smtp.gmail.com with ESMTPSA id
 x8-20020a2e7c08000000b002d0a7ba3215sm1646737ljc.85.2024.02.28.06.02.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 06:02:29 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built for Xe
Date: Wed, 28 Feb 2024 16:02:25 +0200
Message-Id: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
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
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e941e2e4fd14..860574d04f88 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2295,6 +2295,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (HAS_4TILE(i915))
 		caps |= INTEL_PLANE_CAP_TILING_4;
 
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
+		return caps;
+
 	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
 		caps |= INTEL_PLANE_CAP_CCS_RC;
 		if (DISPLAY_VER(i915) >= 12)
-- 
2.25.1

