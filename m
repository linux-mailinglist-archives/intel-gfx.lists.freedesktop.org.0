Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9785BBDE43D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 13:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8932310E3A2;
	Wed, 15 Oct 2025 11:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A8cXn42a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC55410E290
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 11:29:28 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-27edcbbe7bfso75060465ad.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 04:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760527768; x=1761132568; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7f0Wd6jr5PKSrA+bzuckKvaDhNabzbe2RKmrwLlDFkk=;
 b=A8cXn42a8UcaAMJwGSu3s/91yz5t+3SbioJsy509GUJ9W6tFfeRNCCbc3wuYFVf6qa
 SQqRoLoXY6kykHcQ2sMpXarv59dmErR7L4SsPkPZ45ePY/ThUYLxx/VCtuLqEUjVkIx+
 drgjdPqIrA99qHc+U5WOHwNuxynvf1oAT3JPQg2bMm1SQKqaKmyVQIGL/6fgoOjgBONo
 cQsAzIA+h34C16DEl8AoG+IlMSycByKS01dRnMkMuoUeWkH0T2QgfMXrVSYsqAMsfuwC
 5u8/p1Nbw2gkR9RnjMpTajjYKRxeUpwcwyZkRla6bN79obrzGLc6fVj37BlZliRGpSOu
 QWCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760527768; x=1761132568;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7f0Wd6jr5PKSrA+bzuckKvaDhNabzbe2RKmrwLlDFkk=;
 b=ZomtnQxW9wckQUZsW0L7rWac04smwvFM3ALJkhRDwltp2AIfBerhOuOwz+mA5ufsiz
 1obtn/LNS3rtjr63DmWVMCfsR1EGQEIktYqztfkeB4i69tHdjY7j1o9Kw6AmoaOW/srS
 Joa3yKfgu4eO9uT8XrAJhNFSOBT4w8AmVxtwz/KVcwRNubpNrcc0TM8owsSDzhY/zXBC
 NPKLSuzXNGRhJOFSLqRCYmwXpj1bl10oTLE3Rkc1NBHPhRZ7DfCtsYxHtZXzZOebL+PD
 ktGvgrsq9N1891kr+DN9H1bnFcwpD7SudxqUxapfBiiHwaIZhuMxQPvN4J8141lNfe+k
 NQEw==
X-Gm-Message-State: AOJu0Yz1MZiroQjkiMr68IaEhd4Fq0ElGjgGW0q3RRTYjt5gbgwWrUmF
 cE8NQl36WbN5mzCMPx+TgbEOozrY+eVhyfm4yV/JXR2yeh3XIZk6h21R3/GOMKouAX8=
X-Gm-Gg: ASbGncu2oP+SLiUilXnlUAW9O1NR+S+n/ElrulI1YY5r8Cf06wyoeSIHyayrYXvt/Bx
 vfFqSxu/hEjjVWcFBIY5xalC4qTC4Ph+hNrFa0hUsUmSr7SNyBBJcUGMr9HbYrFAsvGIXypJL4F
 3LpmRqIaPP4Kz4SbP+r6RmzPjuMaIxdeWLhopgcn7RyE1IPncKSOZnxZLMdlueJupJ7NN5eblwp
 eJwKBNk2y2BF7aObD3oxNpzbo8m7uw3xJl0gemprz2tCHGoCU5HzWPulDBO/V2WU3IzZeDU73NF
 fmxfnkV5Jv+rcjiDh9IMf5wC9L0W9gF+GrGA17w0cUksS3Rwd34ZdDfqJRcF8x4SrGDUfYIj50j
 Eiats5Mj7OwZWtlm5iGooBMoKZjvi4MGqjkMxBDGXVPFrH0pYPlZWdkLkJQ==
X-Google-Smtp-Source: AGHT+IEbVZxw8O2puTkhQ+sB71ennpPU0/0qrPk0ApC7Pu+n1U9tkTUaaxvKjguuGUV9oM5M0Usk4w==
X-Received: by 2002:a17:902:ce81:b0:266:f01a:98c4 with SMTP id
 d9443c01a7336-2902723e35cmr405500045ad.13.1760527768109; 
 Wed, 15 Oct 2025 04:29:28 -0700 (PDT)
Received: from localhost ([192.55.54.45]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29034e1cbf3sm194872165ad.40.2025.10.15.04.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Oct 2025 04:29:27 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Jani Nikula" <jani.nikula@intel.com>
Subject: [PATCH 0/1] [wip] Switch to use kernel standard fault injection in
 i915
Date: Wed, 15 Oct 2025 14:29:01 +0300
Message-ID: <20251015112902.235567-1-juhapekka.heikkila@gmail.com>
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

wip once seen what different platforms in ci say about this
to take out related i915_inject_probe_failure infra.

/Juha-Pekka

Test-with: 20251015112002.234956-1-juhapekka.heikkila@gmail.com

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
 drivers/gpu/drm/xe/display/ext/i915_utils.c   | 11 ----
 21 files changed, 18 insertions(+), 210 deletions(-)

-- 
2.43.0

