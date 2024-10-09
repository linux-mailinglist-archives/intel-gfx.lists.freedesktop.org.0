Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 849BD996F74
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 17:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2651E10E770;
	Wed,  9 Oct 2024 15:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="afIAituo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE3ED10E76E;
 Wed,  9 Oct 2024 15:16:00 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-20c593d6b1cso18579675ad.0; 
 Wed, 09 Oct 2024 08:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728486960; x=1729091760; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=IRlyIsifhTImLoRiol4oXwkyTH24kHZmc2fDBwD/bB4=;
 b=afIAituoG/jlA4fOCR6woWIGNQCsDvV6saWPpSIgkWj70xFa7JZ+900mgeUNEqy36X
 a9Ij/5j0r1i65O+zfDX+BJZSXZ4dzG/nKPYZ4LgI4nTJZZWAiNuUqKduwxa+TdlSH6z2
 PvctFUBs/Ns2Fx2IGlORL/bQmJ9iuphz4T2fWYcCU4wN4BbZp46zKtjKrWUvEwED38oR
 djKB5679NdGDrOv4yvL3f59oJxSmt+zQW0nW1l37V70dMQdlZyvthD4Ma/cHgZTeZaGg
 6lZ64NKU1qdvkK5XZm4mBZujdMpRjEa0ypMmEszhIRPtYCasmvbuf+ubIU4DMY0tZwZ1
 0j7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728486960; x=1729091760;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IRlyIsifhTImLoRiol4oXwkyTH24kHZmc2fDBwD/bB4=;
 b=kVJFvOzBGQddusTBbAld5TE25ipBzhBhfDf1slqeqsCBHiSJHM4D/tLyTgdtZdaXii
 +H1YCmaoMrO2yXarXtBCrnsMWjiGqaQDVamQANd7w4aEmFCQgzIp5U4Spro7JL3Y9jZ9
 ufkrhUxELZP7ULZGImYy/g69Cqp7I/nKCtmpIipCzMA24VRqXJgzlNgdwjl2p1RLy+AD
 uSqZlEdVNGT79tPAUwSTFv9Wb0ngevAx3UwI4ID2zfsYolHnfue2lQzLYLZOQXm8E04c
 p/2n4nFsgDjWtxbGlxMRq4U1FCeXiJmh9m6vxvBC/O2U3Vpjp2a+RpRc9ZjJxxg/UAju
 9/eg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3sICgKiQS7sAxqnTP3X0zMx4Ojr4tLMkDAyOLJA+5pVAcD42lacdLXjIktu4MxKQAH3xI4U90nOE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwZh0Q3ume43b43EKEba54rtmgJjR79r4SBdIYJ/DCiu5icFJ7/
 /p5bDLow+wl4cqDSH7B4KTFDryQuk7eRagprFe9esfmQ+PFMNDumEbR+eEe3hew=
X-Google-Smtp-Source: AGHT+IE/txbFshf0K3bVFfcu0Mar/M3JRcFVTpAacuyKIvsnkhENg6yU0gWmAeWWwY6y/mmyXL1HdQ==
X-Received: by 2002:a17:903:1c8:b0:207:3a53:fe67 with SMTP id
 d9443c01a7336-20c637486e0mr51452355ad.32.1728486959843; 
 Wed, 09 Oct 2024 08:15:59 -0700 (PDT)
Received: from localhost ([134.134.139.73]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c138afc95sm72453485ad.2.2024.10.09.08.15.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2024 08:15:59 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/2] Align framebuffers according to what display minimum
 alignment states
Date: Wed,  9 Oct 2024 18:19:45 +0300
Message-ID: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
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

Here added interface to request physical alignemnt for BOs and
use it to align framebuffers according to what display code
min_align says.

/Juha-Pekka

Juha-Pekka Heikkila (2):
  drm/xe: add interface to request physical alignment for buffer objects
  drm/xe/display: align framebuffers according to hw requirements

 .../compat-i915-headers/gem/i915_gem_stolen.h |  2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 57 ++++++++++++-------
 drivers/gpu/drm/xe/xe_bo.c                    | 29 ++++++++--
 drivers/gpu/drm/xe/xe_bo.h                    |  8 ++-
 drivers/gpu/drm/xe/xe_bo_types.h              |  5 ++
 drivers/gpu/drm/xe/xe_ggtt.c                  |  2 +-
 6 files changed, 72 insertions(+), 31 deletions(-)

-- 
2.45.2

