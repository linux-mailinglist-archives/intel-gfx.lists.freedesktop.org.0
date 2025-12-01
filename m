Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450A2C98306
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 17:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA87710E412;
	Mon,  1 Dec 2025 16:10:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XAQW2x2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB8A910E046
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Dec 2025 16:10:21 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id
 41be03b00d2f7-bc4b952cc9dso4067183a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Dec 2025 08:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764605421; x=1765210221; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=6yqxq/Eo7orQOpG1SgVb5eJDDwz7vM469bb8qAnY+v4=;
 b=XAQW2x2nG1NVAS4o4txa4Y67cWwcoSe8wljENsIhEzYGwpKHciR34TK1iZ6RJdJJMD
 66SFEtSy8S5wG/L9fj84YQXgl3dFXea6j0pdINFTjwUscCzi0qAuKTlFGrJ5iaxwONLd
 LRNBJ9mZat3SuHJ1AlmNFmBTZb/0GHTrBwQOIALpu1iY2dHKOzObCfOpRnUA2UoqiLod
 YuNPe3xHZe4lnE2/X/1FDMqXaVMLuJz3DXnbikUWidQKA/SCq/wXPXs5UkQTh0YJNGWv
 7Pq8zZmphWDDAfKhDEVHce7zajjZzH7k4CmEvZGwOZGiZLTUbq+9IJa0Sh+QI0tFAY0d
 fkBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764605421; x=1765210221;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6yqxq/Eo7orQOpG1SgVb5eJDDwz7vM469bb8qAnY+v4=;
 b=PgloBiSTZ5xB47aKcIlx+lxDE0k+RvkRk1eQj6CsU2BBHTml82PVC7Jd0ZT9mRewdI
 BJtAPvS4uuNc+TiAdJ2PvLoP7b98uL3ggTUAydBjW1Dblt2izNKRNJ9PQIPdYFJy1Q4X
 kLR534UdqGbaox7ft6HumL3Wx2Cbjb1MhP8lx0cDQIPX36qwtxebcD91fu/ifXlk2PFX
 VG9weDvKGetUo6Uw2FK46FSbu3UPBIOOQX7XvTkpeaIM1+kF/93SJXeOMJZ9OcVj/D7N
 6Q6ZWn4smr7A5y8gJ7zKTWOYcoh4ZjAVZFiiFEWJvu6oHDtuuRvQNv3s78xut6rddsWW
 5rZQ==
X-Gm-Message-State: AOJu0YxZBkZULxucZ89lRqN1qIubKvqOyKTlx4NunKGvNTglTyzbfPCs
 2FePdMzVH9aOjjjql8UrD1OnbUM8LFWva2HZU610/Phpw/ZsPBnY/qYi4o6iUM1a
X-Gm-Gg: ASbGncsIXTv9Catil785qLmB7Za2WbhthWNkpCcCSRlk9MsRBRXuWiljgV9vQzoso3e
 gSr+CzsyjTyHk5EDI4bd7fVvzH6eRjCQyGxsUvYsNTdJ5xHQ3yuJPm4FEoxCjnK+cSXY+oCKSWK
 VHzgR6XrBXI1scDB6qzXXkKHYrjPuUGCL3AEAxNPaDA0N6LGL4NdfkLNYsmg7/iU+jkuFteCmKo
 8dYJKS6Jj0OXG3JAVYFG0chJkgpvYVle0/X04D780+S1zCZice5pyjwRZNo7rBeUU8t2xIWQeLn
 dmYHBNRcMJ0qFQZfUXqcdLDxuPp1t/l282MuNBZYc/ey/tJlrEMo92/3gERf2E5ZYxuPamSIlPB
 uOjJadGO0HaRJuhD23bOyy4YfUTOnPuLg1pEYtXP2trApbPlnTTPBMP+azi0rNQSYzN6OHg0PnL
 W3XMublGlHhg+6pt0KWxI8dURH0zbjMq/MGN0MSoxL0l8FTks=
X-Google-Smtp-Source: AGHT+IHiAsZMd5C1TWdr/v+o/uYLI+VAwXp0XH7jbB/AVAxfXEV6/QUegClWw8Cs1JfG5BWE9uPN6A==
X-Received: by 2002:a05:7300:f590:b0:2a7:769:ca49 with SMTP id
 5a478bee46e88-2a719537307mr20119037eec.8.1764605420848; 
 Mon, 01 Dec 2025 08:10:20 -0800 (PST)
Received: from localhost ([192.55.54.43]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a96560986csm69026567eec.2.2025.12.01.08.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Dec 2025 08:10:20 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/2] switch to use kernel standard fault injection in i915
Date: Mon,  1 Dec 2025 18:10:11 +0200
Message-ID: <20251201161013.735943-1-juhapekka.heikkila@gmail.com>
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


Also here added intel_gvt_driver_remove to error recovery path.

/Juha-Pekka

Test-with: 20251118143301.510707-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (2):
  drm/i915: switch to use kernel standard error injection
  drm/i915: Add intel_gvt_driver_remove() onto error cleanup path

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
 drivers/gpu/drm/i915/i915_driver.c            | 13 ++--
 drivers/gpu/drm/i915/i915_params.c            |  5 --
 drivers/gpu/drm/i915/i915_params.h            |  1 -
 drivers/gpu/drm/i915/i915_pci.c               |  6 +-
 drivers/gpu/drm/i915/i915_utils.c             | 30 +---------
 drivers/gpu/drm/i915/i915_utils.h             | 22 +------
 drivers/gpu/drm/i915/intel_gvt.c              |  3 -
 drivers/gpu/drm/i915/intel_uncore.c           |  4 +-
 20 files changed, 19 insertions(+), 199 deletions(-)

-- 
2.43.0

