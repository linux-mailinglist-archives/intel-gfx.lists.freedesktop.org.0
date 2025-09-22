Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE7BB99B4B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D8E10E713;
	Wed, 24 Sep 2025 11:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ajaKTL4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0772C10E3E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Sep 2025 14:43:24 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-36a448c8aa2so9992151fa.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Sep 2025 07:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758552202; x=1759157002; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=F0lMUB1ROfKuK75/vGdOophe58nNykYwwEOWTGObV+k=;
 b=ajaKTL4Iyu4Pv0nxTdWVXJtP+2leEDB5vFTE93k5UsAdYSYXenGLYyIfuOk9v66nnc
 64df7YiKzuy2/MRhSP5AMuvuFT8vFEotajR6dPT7HQTbUFB1fqTWcPe3rsEoGucN0LOH
 2EheQRWDAbpMTOYH3dNQcqZCCfTxjwNDJ5OLn0xPxBhWPQG/PW7+rdcjw/t40pIIgJQI
 c1xaXnd3idyH4C5Ut/9EVz49fRgM3JbLBqH5YGgnTwCW/QoNac1Lkp5Nego8rGjUuvro
 smMg2pc9UiSg5z84bGWUyw3nMeBcbNw+IPc56lscTCEUieSOefc/AU7HUrdzak5M4Eng
 Eq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758552202; x=1759157002;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=F0lMUB1ROfKuK75/vGdOophe58nNykYwwEOWTGObV+k=;
 b=TZvKWp+zrbF8G6ye8Epq+W0hNlFQ74OBGB58ddmuV0/iLMuq4+C9S8Th+qc4ONSMJu
 QvZtSQ19wr4ru5J74EjqIOD9tYiVAccLcJ2Gu6c4C6KFs3jImwEY8+SJIvxsBZ9WDj8m
 C3EAigUHmlaAvWtQIGOBhBwILjibeMPU91+qnJcd2jWBbQ0aRBCuOvdHXdjtdt7ED8kP
 eg1uxwNSSI5kHOalA+z7Bpe/xe/VOyWo3tCLdtYH7qEsKqSA3Ksy9YxgWT1yxXHPqEKA
 KDI3n3oNGsFVmpeLRyyoyL8RygpJ0/pOfd09hRc7XqTKyftAYtY7d6MDQzaE7SP2KZnf
 8Vcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWv3LojS82gXtm+05vTSXhFx2L+khh6BYdgS1LsRi97PdCqIw5aqfgaOny8DtAPMeWjJKYDEYQ91/0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwlWxAOw3lpvw5B8ZCRAiW2Ea/1sYH3whQzz5UDly9uIpFnaEmL
 MK2VbewEX4bFV1S85v0hLxyu95wpMpgF+Vce4Poj8ijOG9gY+zMjhh2H
X-Gm-Gg: ASbGncv87aj/s7fqOAVSFuj6CnJbg2yO2ED4yg+BT6ANZFRh8oHS3OM+x1OPqV2goyR
 Zvk9GWzUMAQkE47/msXYYxDA4cTt74UFX/MAIZL621BN7abwYuGDadCyIkBsREAwQTWppy6n7+J
 cfNa5wO+KiU+1EM+Fq9I4AFKJLTTODLS8LXMN9deKpWjpHV6Z5YaTplhGR7+OGH+R1KJAEjJ8/8
 Wb0AKsKVn3FTsnrb0Cnqd9xyEazi5oj/bH1XYOdkj8zhFZVTHyVHv93xd5dZCJK13gm29bCW4bp
 Q87clnfv4YOKl3yG99HanLgIFD7joeeSXa3540pceaj41vbFWMqwT1Qz2gGEk3/2wlRq9BJMAMI
 hM4IGPwZCIhJv0ZXg6R28vxe6f5zblsiBYoO0y9CHo91iCHEXkN/1vjtg6Egyjf/ukukf8i3RlH
 Dl3D06nLEpC4aRzSWq
X-Google-Smtp-Source: AGHT+IG0k8GFm/GzeFNoiWTic6tM3XN6hehF7mLWcX6QsOfPfppRRO6H9eJxef5vfYTewNG17se7sA==
X-Received: by 2002:a05:651c:545:b0:36b:4cc1:15ff with SMTP id
 38308e7fff4ca-36b4cc116b5mr18512911fa.5.1758552201998; 
 Mon, 22 Sep 2025 07:43:21 -0700 (PDT)
Received: from localhost.localdomain
 (broadband-109-173-93-221.ip.moscow.rt.ru. [109.173.93.221])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3673e015747sm15960611fa.62.2025.09.22.07.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Sep 2025 07:43:21 -0700 (PDT)
From: Alexandr Sapozhnkiov <alsp705@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Alexandr Sapozhnikov <alsp705@gmail.com>, linux-media@vger.kernel.org,
 lvc-project@linuxtesting.org
Subject: [PATCH 5.10] gpu/i915: fix error return in mmap_offset_attach()
Date: Mon, 22 Sep 2025 17:43:16 +0300
Message-ID: <20250922144318.26-1-alsp705@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 24 Sep 2025 11:59:25 +0000
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

From: Alexandr Sapozhnikov <alsp705@gmail.com>

Return value of function 'drm_vma_node_allow', called 
at i915_gem_mman.c:670, is not checked, but it is usually 
checked for this function

Found by Linux Verification Center (linuxtesting.org) with SVACE.
Signed-off-by: Alexandr Sapozhnikov <alsp705@gmail.com>

---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index a2195e28b625..adaef8f09d59 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -706,8 +706,11 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
 	mmo = insert_mmo(obj, mmo);
 	GEM_BUG_ON(lookup_mmo(obj, mmap_type) != mmo);
 out:
-	if (file)
-		drm_vma_node_allow_once(&mmo->vma_node, file);
+	if (file) {
+		err = drm_vma_node_allow_once(&mmo->vma_node, file);
+		if (err)
+			goto err;
+	}
 	return mmo;
 
 err:
-- 
2.43.0

