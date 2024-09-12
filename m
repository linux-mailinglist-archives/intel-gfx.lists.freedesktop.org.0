Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3DC976D9C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 17:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B2610EBCB;
	Thu, 12 Sep 2024 15:20:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Cvdf9F1J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF5210EBCB;
 Thu, 12 Sep 2024 15:20:38 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id
 98e67ed59e1d1-2d889ba25f7so795084a91.0; 
 Thu, 12 Sep 2024 08:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726154437; x=1726759237; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=guiPbpA479gchtYZdTS0jDkkC/aFTJY0a5H8LICYsz4=;
 b=Cvdf9F1JbvamLAhhk2JEkjJ1eXUFuhIZAryoM10bMDkYwvmSpeGmfhomNAqdFKPkCB
 /dLIPvgClqZUENZS1jB4Y8VB3GWhB+z5OBAPIzaFIxLDJndA6/40sVeHND/s0wwkN3HR
 bAK26DAtvzh3wLiOj7RRRJd0JCvk1vfe1jtfLdQeKwiUaP/pNBZQNABWFeS4gxA/792n
 j2WOifWPAZ0mXfHnlr4lgmsgF07YQQ7nbMuoxjP9FjRDX3op5Sz7HGq+i7sROo5ku665
 zTm7jDkhtAiPCEoUv+QbPZP8kEi+xTJfE52zAIi8ZX5F//BQ65dUO8kA8QExUsLd15rw
 7XNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726154437; x=1726759237;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=guiPbpA479gchtYZdTS0jDkkC/aFTJY0a5H8LICYsz4=;
 b=o/BqOoPdx+2I2mHNDkcTzE0oAbSKWA0SHYhDmVMb51xssFNBX8Acb3OHbHAXkBnJfG
 j8l5qXC9mL2dlrjODKNKQDTJjl2ozcyBX79iCoShwnqVfA7BfdEgvG0lTgejrE9Y8Sh5
 TsT92lQbIq198tVMgDZf6i0BjJftcuid8xm2ikRm7znIY7ffryXp1rQOJX/hXLwAhCAc
 PLn165QqsCj8htG5Srjz/s6BGMGdxjq6qwlo1pljKwMJRR7UjnpctMfTa+5H4UjYDOjh
 nXQcajNRP4Wh4ZbttFwtkSx9f5lsRYfw6zFzYoTZDuqbIMBWwp+rC4+jm2jJ4BaKA/Ie
 IjSA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWccHlGzbS2oGQBUmo8BoaKa04ONngNs6ZwG6VbmAl/B5rKsUC+XR3wju08dtJVIJEY2lwGq0vwmzA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxb0fhZKlVyBnBrOiypFaHeaAS4MNy6ppTTM9tQgwH7eKucL6T/
 iwxHwsR7wtJAoJK3KeSHFyVQiH3EBnIsBJ1T7q6DH3m0agolQvPzQVsmCIv4
X-Google-Smtp-Source: AGHT+IHz8VqhG0IwUTAVw0xyb/IpaHcfe6aCbMpVGgDm+e0v/WC/dudE1fI0dgIsxJXuTYAwg/VPhQ==
X-Received: by 2002:a17:90a:12c1:b0:2d8:7307:3f74 with SMTP id
 98e67ed59e1d1-2dba0063e53mr3839679a91.27.1726154437264; 
 Thu, 12 Sep 2024 08:20:37 -0700 (PDT)
Received: from localhost ([134.134.137.72]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2dadbfe46ecsm12879852a91.2.2024.09.12.08.20.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2024 08:20:36 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/display: On plane capability check rely on display
 version
Date: Thu, 12 Sep 2024 18:24:32 +0300
Message-ID: <20240912152432.867593-1-juhapekka.heikkila@gmail.com>
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

When check in display code for Xe2 ccs modifiers rely on display version
along with separation of dgpu and igpu

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c9038d239eb2..25de4ce356bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -477,12 +477,10 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
 		return false;
 
-	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
-	    (GRAPHICS_VER(i915) < 20 || !IS_DGFX(i915)))
+	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS && !IS_DGFX(i915))
 		return false;
 
-	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
-	    (GRAPHICS_VER(i915) < 20 || IS_DGFX(i915)))
+	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS && IS_DGFX(i915))
 		return false;
 
 	return true;
-- 
2.45.2

