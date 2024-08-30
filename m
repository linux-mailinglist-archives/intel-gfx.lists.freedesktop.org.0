Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E21966221
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 14:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D0410E0B8;
	Fri, 30 Aug 2024 12:57:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VTqPAJzc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC3F10E0B8;
 Fri, 30 Aug 2024 12:57:49 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id
 5614622812f47-3df0c1271c1so920051b6e.1; 
 Fri, 30 Aug 2024 05:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725022668; x=1725627468; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=3yqtchr5Xp+NSUDfZa/zVDWLYyGWfViz3wWe9aFrvBg=;
 b=VTqPAJzctz7//etZ5f/0lPrj0BvSZmo7ZIEUXgGSC8TvlRUCP03iEqkaBRpJC/V7mV
 1ID6Ar0Bo5VItLXBl+WiuTmHT5Dri2TdQNplphdbaLo1oXx/O01sBL/tmmlBDD0FIFpj
 GM8zLDd6ErMLkZEodZ+830voEsh1fb4QtxvT7pAJkiwCRgZ5IWR8s6fA4LVOwNuuy2Ba
 sUyodcOzHsL0uQUz3h68cPP6O+BeCOdhoiECVQ8pqDvyWvphr0qaLvN8KwpprtJMoWy8
 tnyOA1Gf4ZtsQZH/V51KFSXyjtHULbwQFbLn3A9YE5popUrIlZyKPZznXq2gppbmQszW
 g0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725022668; x=1725627468;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3yqtchr5Xp+NSUDfZa/zVDWLYyGWfViz3wWe9aFrvBg=;
 b=sPZCUPC8gAwH6kmUUjVaWfGX9vxQnJ4bBSBXUWcZMaqENTcugJp4AI7pVFsewsPVD1
 j3v7VW6zpcnh2df7oD2cO6t5AE0Y1zQfV9kPnhgJ8wOc0RiBWG5gH0nirQCPJWpSaRCg
 hG4OSO+emm6GKyq/aGaJZaGE44AcEoxU2TDN3CLqGMQRKbKO4VEFGdv4Q4gru3bS1gn9
 yWiRz910XegMgPzXn+oa/RZjruhTFJShBEFsSYXWBB8EkjMvSic9udMMTcSLM1K5C0BL
 xQh3aFUq9it8joUmnyAhn25Tn4nwN9N89t2a8E3pDl+xjJti1temsxEj+5PETRH/UtaU
 M9Hw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVhFdtuJ0JwWEDNdfo4NBq7MoXkTP3WjoG82WohXtbvudkQl16JPZoebZJgXkvSZBEXCdsspoGO6M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyvGLfFoHotCPtSFPIwJmDhcZ2VlZ3ZyLoFcoNnwuqsO9Jo/cuG
 gDdv63xVdov7Lx6MSG8oXw7Ut9zarhze4LnmAcnsMN+IBRfmV6PTVpqSZ0NgpXQ=
X-Google-Smtp-Source: AGHT+IGeplFK5MWjgipAhdXlMEF6cMZ3FRHeWRnhiIbcLqG6ktEdjAVyOzs+0jeY+Vm1K9M1jh+fCA==
X-Received: by 2002:a05:6870:e316:b0:268:880c:9de3 with SMTP id
 586e51a60fabf-277900f7d27mr7321572fac.14.1725022668239; 
 Fri, 30 Aug 2024 05:57:48 -0700 (PDT)
Received: from localhost ([134.134.139.73]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-715e557bb36sm2799338b3a.19.2024.08.30.05.57.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2024 05:57:47 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, imre.deak@intel.com,
 rodrigo.vivi@intel.com, maarten.lankhorst@linux.intel.com
Subject: [PATCH v2] drm/i915/display: Fix BMG CCS modifiers
Date: Fri, 30 Aug 2024 16:01:42 +0300
Message-ID: <20240830130142.440071-1-juhapekka.heikkila@gmail.com>
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
v2: Do platform comparison w/o checking for gfx version

 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9452cad41d07..616f5d40a739 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (gen12_plane_has_mc_ccs(i915, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
 
+	if (IS_BATTLEMAGE(i915) || ((DISPLAY_VER(i915)) >= 20 && IS_DGFX(i915)))
+		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
+
 	return caps;
 }
 
-- 
2.45.2

