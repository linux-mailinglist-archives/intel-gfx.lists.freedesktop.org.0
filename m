Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC23BA4437
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 16:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4510A10EA70;
	Fri, 26 Sep 2025 14:40:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R6eHiqs2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F3E10E162
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Sep 2025 12:48:58 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id
 2adb3069b0e04-5821dec0408so658104e87.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Sep 2025 05:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758718136; x=1759322936; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=C7JhEQyLJ4tStQZeMjbdNTURPvFyv2MDrZVanIpjsKA=;
 b=R6eHiqs2H9liM6ZqKfBY4vbeWsKIZaOcmec3hCR/3r7grCz1ff/jWE6xC0+RnRq8M+
 FPleW4z2Cp2/uwW3Lc3FeoMD0idTF++onUkpmTfZiI6sQ80keSu12hjkns0ZErIywyQ8
 9lHNEHbL15YCeXjd6wint8nuDLna8RInrIyTRo6kmyeBGuwQjoD4Ntj1Q6YXvvN8SfZz
 GLRR7LjHYNZdFewUeyV6Eng3rQjMy/76OzGktsrmD+felhINgN1+EbbB5mAqJ66sM3ug
 0r404/DgcbqAuQ5O7cYY0E+72py6JXXICs/IU4F0eOdttAhIkiV2CmED2kgxANDppx6q
 +P1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758718136; x=1759322936;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=C7JhEQyLJ4tStQZeMjbdNTURPvFyv2MDrZVanIpjsKA=;
 b=CUHnjYI2RmNEzO9jzbibtmfagDY6StSylS2MhMDNJqkoc1QDQNRzKalcCgW6asR2ER
 nOtFdV5XdHbAZ7jzR6lqAywvmX4ZPoqrFUN3KqtjC5uIaf6qUfK3XcLAyCHpqWeoALXJ
 dmp0Ee1QSAZ+Bfg2Bx757szXKvX+3VlzwuhoEiE26eoN6cADJ4SWMxLyiyWj5Kqg0m27
 +8XVjRQE5JDgf1/yRVLWRHxIOtTWW1GsJnZTZN6KnKtRqV28LZMVyiKJ3ha+Zm1DKXm+
 mp2wXYxhy0pXdENtIjm4vqLUyfgUhbMotArXrjLEqZAg6O+27PuD4zfRqvEWx0W/ThX6
 oxSQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUhSwCprbLx2tEwvu17QdMglsFge6xYv+5s4psmzb0WSF7vVNNUe/VD2Y4e+UcEj8WIqNZVXZDDbNc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxeJ8i6ql6xu0c2LWP5W7zRU++RrCWurSO6n43sfff1SjLA1bHd
 N+1RtOioPYWK97t/0gL8DcS6X3Ww9yNsyFtse4a5megzdZAb/YygJzzx
X-Gm-Gg: ASbGncujKkk2czPELNbvhzhPe5vuprWkbFFK86GPunXbBFSBp52n+8XdCtEUw8nD9TX
 ohoRlAYNCQAz58jLtoPxwmJzdTv3hmf2oLK3pPzAcK891cbB5iNIuY5M360Bsej/dBGINNNgzQO
 kIt6WXzd2qjdHECh/51tA7yu+865AlRuW2mzgW9MmKORo0gzrZzJcEXdyU1WLImiLTwn1D1sWEz
 qVGQ12mrDNCoLmvJn8yjYr1eBuDSPJv2h++m4yIr7bAjEIrJzYegQe5Fq9An7PIEErIc/BKlohe
 9u13SBWgRCOnlDH3dMy5Jb5vfQZx2pgz1BAe1Bj9T4mAMd39jaRYxQV38Fxn//0uuqWHeboa6lE
 WNnMHstZDW0pmUDYBuPEEsKDWPHn/VoyLMyj9xTpLszMASpLCvVxO1Zv64DmRRPGbJ5h1Y4WH5x
 8v/9mMNF3yHrz0WImb
X-Google-Smtp-Source: AGHT+IGsCjQ5kbJbHGIPwqnOsa+Tesxxo/+eEFeOI/jBB9wKGApdlCpF0dLkSsx1lqdtZ8hj+A5qAQ==
X-Received: by 2002:a05:6512:3b88:b0:55f:595f:9a31 with SMTP id
 2adb3069b0e04-580745c448dmr2342043e87.51.1758718136145; 
 Wed, 24 Sep 2025 05:48:56 -0700 (PDT)
Received: from localhost.localdomain
 (broadband-109-173-93-221.ip.moscow.rt.ru. [109.173.93.221])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-578a9668090sm5052943e87.109.2025.09.24.05.48.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Sep 2025 05:48:55 -0700 (PDT)
From: Alexandr Sapozhnkiov <alsp705@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Alexandr Sapozhnkiov <alsp705@gmail.com>, linux-media@vger.kernel.org,
 lvc-project@linuxtesting.org
Subject: [PATCH] gpu: i915: fix error return in mmap_offset_attach()
Date: Wed, 24 Sep 2025 15:48:50 +0300
Message-ID: <20250924124852.11-1-alsp705@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 26 Sep 2025 14:40:39 +0000
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

Return value of function drm_vma_node_allow_once(), 
called at i915_gem_mman.c:672, is not checked.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Alexandr Sapozhnikov <alsp705@gmail.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 75f5b0e871ef..eb76f8f2bd95 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -758,8 +758,11 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
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
