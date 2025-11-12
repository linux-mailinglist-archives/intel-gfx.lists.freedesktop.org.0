Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9F7C522A0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 13:05:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8B010E6FB;
	Wed, 12 Nov 2025 12:05:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PMn9wzhS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9351A10E701
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Nov 2025 12:05:53 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id
 d2e1a72fcca58-7a9fb6fccabso621716b3a.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Nov 2025 04:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762949153; x=1763553953; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=hAV17ofA9MonBCDA8VqIe2NviuUZk8J7FIjpATUadWc=;
 b=PMn9wzhS6PXhcwlNPzdZ1c9AisClyetTCkAdVG9bQToca+Q+uye68begR0LmUNI6lm
 nwbl8UieC7fAN60Ge4ZRy0op7XsJxubyzl0G/5tOb9tN9PMcUhnjYqwPmJxN7ItW5mP0
 XclDLwepAVQRADBUfOZw+Wiu+q1hYvwk2uYAT++kjfJnSLgk6CwYPdtKomoTR5biShED
 Jdq6j+wLrU3SZZgHoPSE2wCZvTeKXqChBTKZqRirMTLXMYA8uy8dfvt28/UdCpdtQ8Tj
 /YVkgdE41SrkkGkxJUuXCsr+Wj6ik32rh55kr6FXJc51N6QqlB4XQv0BvNal9tJFqWUX
 HVpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762949153; x=1763553953;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hAV17ofA9MonBCDA8VqIe2NviuUZk8J7FIjpATUadWc=;
 b=UqpVJfUMJZnKc7neVpH2v4VoMrUQOTmGm/unRlC+RHneVY1utG3/3/sXlpvaadsxZx
 DPw9/rhnbiZ7XxRCKMpdZ13NFjBwqTfzt2foBRfUvba0m3os3hmVupYkfZ7lhL2og4Bk
 52J1mZuS1/lFEwyINeDnBHJok9tczDFuixc4o6JD0un+4TsMkJsjTo4lnywM3c5MC4Ib
 8OjMyQBxSjdT2mcVboodNqLuc4Kerkm6+y2RtBWCLUfPwm7/6tKjfJpyHzHR8t5OOd6n
 BRdKr2OkXsIz3Xb7Lz3hrJP8DTKA39k+MqVVp5UEE9pUGbTVD8m1QevL6yTitLIRC8BG
 zJjQ==
X-Gm-Message-State: AOJu0Yz61hWXRf94/mXYB/vEx53EnCIjxj+3HGnbeZh0yfHCbM/S/DLE
 KghNyVfvyMqkxOnFrUddaHRmavU4TXnmbDf9wMSJfJxP9KZIRnymksL9Sb+khcEV
X-Gm-Gg: ASbGncuVlfF/jrYcwNIffpwoF4ZNdPU5B921NIntbQR86kSWK0HN3bV1R/7uAPXLinJ
 c6hoM4R6d+yR5d/ZvWvyaCIqt8oUbZl0RU7aEMJauNRmkG62z1JarSs1HgUFJMI+fvGni6wsRRH
 hjopwarkcSgtfgYeB8/Sm3iTLHGkOl8lKBGgvlOsygPPwqhAz5lRyxaQpe60UwOGTbDDn5tZA2B
 IBiZbI2WznPOXOg7H1nbaD6UNF7cuYwnPva3mRkQnAyWMhJHOlEr3PvyraSqfZCt/Rml/bVnoTV
 4Ur+7GM1kreX/wNieR33gn0awvXroAIgTNMIynS8TrwihMya8j9IKbItTCh2QJxcKXgVSxyRian
 K29cxtMezXvLTxIbfG86nmdELz52Gcxthd+CEm0LUae37JRayxGvu715qOEFMbL+TiFCcOAB+dU
 bHrYbdeQssNQU4okA=
X-Google-Smtp-Source: AGHT+IGyUDWogT/E0GqaLkZpiyyl5RSOXgSaiVqqbXvdG1UvILXDxE1n6Qq34Gt5+UxLXI2MzZhr0w==
X-Received: by 2002:a05:6a20:3d1a:b0:2f5:ba02:a2a2 with SMTP id
 adf61e73a8af0-3590b02abacmr3663208637.36.1762949152676; 
 Wed, 12 Nov 2025 04:05:52 -0800 (PST)
Received: from localhost ([192.55.55.42]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7b0ccb5c674sm18196352b3a.59.2025.11.12.04.05.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Nov 2025 04:05:52 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/1] Switch to use kernel standard fault injection in i915
Date: Wed, 12 Nov 2025 14:05:29 +0200
Message-ID: <20251112120530.448802-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
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

Here taken out calls to i915_inject_probe_failure and changed to use
ALLOW_ERROR_INJECTION for the same functions.

Below functions are dropped from testing since I couldn't hit those
at module bind time, testing these would just fail the tests.
To include these in test would need to find way to cause resetting in i915
which would trigger these:

intel_gvt_init
intel_wopcm_init
intel_uc_fw_upload
intel_gt_init with expected -EIO (-EINVAL is tested)
lrc_init_wa_ctx
intel_huc_auth
guc_check_version_range
intel_uc_fw_fetch
uc_fw_xfer
__intel_uc_reset_hw
guc_enable_communication
uc_init_wopcm
..and all stages of __force_fw_fetch_failures

This is resend of the last version just to get igt changes tested.

/Juha-Pekka

Test-with: 20251111194936.444955-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (1):
  drm/i915: switch to use kernel standard error injection

 .../gpu/drm/i915/display/intel_connector.c    | 14 +----
 .../drm/i915/display/intel_display_driver.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  9 +--
 drivers/gpu/drm/i915/gt/intel_gt_print.h      |  5 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 --
 drivers/gpu/drm/i915/gt/intel_wopcm.c         |  3 -
 drivers/gpu/drm/i915/gt/intel_wopcm.h         |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  8 +--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  4 --
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 17 +-----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 60 +------------------
 drivers/gpu/drm/i915/i915_driver.c            | 12 +---
 drivers/gpu/drm/i915/i915_params.c            |  5 --
 drivers/gpu/drm/i915/i915_params.h            |  1 -
 drivers/gpu/drm/i915/i915_pci.c               |  6 +-
 drivers/gpu/drm/i915/i915_utils.c             | 30 +---------
 drivers/gpu/drm/i915/i915_utils.h             | 22 +------
 drivers/gpu/drm/i915/intel_gvt.c              |  3 -
 drivers/gpu/drm/i915/intel_uncore.c           |  4 +-
 20 files changed, 18 insertions(+), 199 deletions(-)

-- 
2.43.0

