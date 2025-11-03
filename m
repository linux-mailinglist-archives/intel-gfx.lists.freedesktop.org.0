Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CD3C2D89C
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:52:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91EC010E49E;
	Mon,  3 Nov 2025 17:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lJnd4S0C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0329510E493
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 17:52:20 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-b98a619f020so1792672a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 09:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762192339; x=1762797139; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5HpvJX47hFrWiRSANC4NR6oeqqm/jPnmMoPcCTF0knQ=;
 b=lJnd4S0CrfoBMmPrlYOB4NAM4Cm8Yzw1mvMF467S3MHnJyqZsk9PdEwlTuK9UNxeet
 YjY6OXFqo2E8ZWhHsXhPcR4hKFdY8Ih/gJNqF5A8iS//FdPKc6q2bjArSuYh9FR5EkuB
 SOkBcOLmxMvaznjTNTMKaogQ+6FfNoq+X34MfG4b10IIlMFyJshDKS2Hc1Z/H5ePmJRR
 GdmI6xsNJ03r53b7ouzGUIt7X346jm4cjzjWff2pxbZM+/V6NSCjtdqM50blR7257nmt
 UdDwQK047A+WaL6xNPDfVgsJXvkAUdZjSddiYKHEaT/7V6YnZDrmk57uOc9gfCHejAud
 EylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762192339; x=1762797139;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5HpvJX47hFrWiRSANC4NR6oeqqm/jPnmMoPcCTF0knQ=;
 b=EfSu49tq4HB2IPLNOsxBUyLOk+kWhLzd6GhC/cggkYNmzhKDdwlwDfYZ6MEzFW5Klk
 S3u6OuXeGjVHLiF5i6jFOgd7b7UvwTaKT/V/ACAVTQYtQaZTWRaEfnhrI6y52U6M0gUZ
 QvHRLtK7joww6Cc6AMy5ugnP6eIXl2NvYAHqMK4zpidVrwFzx84XD/ip+YB1eEotkNi4
 G7ILdeGo6W1tCD9vZbYUjQt0LK3DlObx1aWBWFDYaRPqF67WFA5Hd5H/ATr5hBr/O9DS
 BSbyXqLnKFLPzMSgoXoyln2/xnLgKoxCLKDzRTUr1ny9xuEho9bk+/AM/i7iNxgIezcD
 HT/A==
X-Gm-Message-State: AOJu0YyjyBhvMHZrK0C/FL2x2SZW5cfMs9ZUJwD8ZnefitTNNMqFvxm7
 RayhtmKGgAaI2r1y8BdjCRadHgKj3HC1zyDpnUuSX2OCFWRpWNz2wPMIsF/DUGeF
X-Gm-Gg: ASbGncurBqin7zjpk6zgSG0f9MiLt6zT0RyeO6uV4ltWEjzbLj+/dlHcPu8WcJw0e/0
 J+V9ZcsXdbrFGVRXv+Uv9xpHb7PCZbk69HpYHmHUrK0LI9OHqIKX0CzGvIhqEYZtrJusN71fwhj
 Jdz97jzAJiFmGbANiozVzrLQk/PYjoL+hvbt/VL2p7KYsx+XuHTl6iK9hRfdr5c4ESDV08Vauqf
 TyO0i7EkDhLmkdNkzmo10X4J9p/PugsB++LAop7vxG0u2UkkaqWLNJjgYlFsJ6o6P+JT/0M4+PI
 J/cSns9uWpTrlJQjb2HN+ghRIcaS6sQXB95dRIO+FpuD33n+HiM2Gsbh1b518BThNt2hLzaMcta
 8IIL5ThkG2YRkWjYP/kRLxvg68mtDntRAZHAtvO3HCVIgtxtUlC9sOlD7KbV3nt4fjwAlpdA7dl
 F2M9knTrm6EzzokiywDA==
X-Google-Smtp-Source: AGHT+IFX4wELdr0pTLsp1G4cdjl2Vvw/HxeL67SZyg8W5Lk460ekfQ7V1jGDUPAPmqyXLtIqRNjrDQ==
X-Received: by 2002:a17:902:db09:b0:295:8c51:6505 with SMTP id
 d9443c01a7336-2958c516a0emr73799835ad.33.1762192339169; 
 Mon, 03 Nov 2025 09:52:19 -0800 (PST)
Received: from localhost ([134.134.139.73]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29557bd3679sm94013385ad.87.2025.11.03.09.52.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 09:52:18 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/1] Switch to use kernel standard fault injection in i915
Date: Mon,  3 Nov 2025 19:51:33 +0200
Message-ID: <20251103175134.343703-1-juhapekka.heikkila@gmail.com>
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

/Juha-Pekka

Test-with: 20251031181216.172174-1-juhapekka.heikkila@gmail.com

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

