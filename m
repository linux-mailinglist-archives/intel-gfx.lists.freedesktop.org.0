Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE073D0153
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 20:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32ED96E49B;
	Tue, 20 Jul 2021 18:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12AA6E192
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 18:14:04 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 h6-20020a17090a6486b029017613554465so76148pjj.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 11:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=of2whry+ved6HNeGLLY4AipytgO/6qqnDcIiw1/WDio=;
 b=xXQkf+965qBS1JN8p07OLCDjasIqyBIrOC3bjMPJFkjTSOmsU4j/J3/grmyw2f9f3g
 n2YAOWT47tJoTXI50GwSwJX75tpt/QSyXRLBuedIZ08Wq/6f+DTGR9waSllkUIe+u5Qt
 Vr3XreC9ajVjF+rZQBlYwDJDBSlsjlqySlVgMwoBVeSWZSLGZpWzuKLR1fbnq8+AFLe5
 K8o5Ykf/NmGQNHG5MQR4qOuErB0pgzWk3WjGqKzVoHde9Yk0ILBv2mumzqmMA/A7gf8d
 cQUXlcpQiNIQgddLV1mhq9E2AKYQRHEOK1uRK5FVLxi9YW06+OThuzoH/3Wp7WxvUt9V
 aI6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=of2whry+ved6HNeGLLY4AipytgO/6qqnDcIiw1/WDio=;
 b=gnecgV+2f/XKBebLtep8q9yb3vT3QxF51/BD2IKjgoStblMspZ5LE3bY40UC7NuhJK
 3t/ayQ8h8V1O0B022DFFEBBiqMDZurJcS+0YlpNqtm6bdHlKj9C5c58Re92mR3CdjWjE
 P/vjjVgzwYZ0IHayZRui0/7DlWkHDmp3qWwgU/Rf346a70w8QgOg7+EdVtTEs3qyRdSe
 jylOqsPbkxNfPeZbgvxIyHoSrJfFOREw9ykohOlT/C++B+RooLPHRKGuirYh6J1vCc9D
 Xjriwf7YZUhKqmjov5BVWTjdb9Ybn3IwlJYcXkmU8ckfQXM8X3d5Ku3WsJtWN+/EkdKD
 UFCQ==
X-Gm-Message-State: AOAM533Yn3kOBxQvZGdcsvXE+6m5SxGhrs3bAjva9+6/V6zIKwClsf+A
 ouHpF0A3sY4c9Q0p1L0MfjP9qX/zzWlf5A==
X-Google-Smtp-Source: ABdhPJwYRdr5KbajCO4ESotYw9fAQYoVDdkOaoYQ5OLmSU5acRlyxauymh/0fUDFT4PM2/jwMnzbKA==
X-Received: by 2002:a17:90a:4f02:: with SMTP id
 p2mr35448736pjh.112.1626804843793; 
 Tue, 20 Jul 2021 11:14:03 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id c2sm26436573pgh.82.2021.07.20.11.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 11:14:03 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 20 Jul 2021 13:13:51 -0500
Message-Id: <20210720181357.2760720-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Fix the debugfs splat from mock selftests
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series fixes a miscellaneous collection of bugs that all add up
to all our mock selftests throwing dmesg warnings in CI.  As can be seen
from "drm/i915: Use a table for i915_init/exit", it's especially fun since
those warnings don't always show up in the selftests but can show up in
other random IGTs depending on test execution order.

Jason Ekstrand (6):
  drm/i915: Call i915_globals_exit() after i915_pmu_exit()
  drm/i915: Call i915_globals_exit() if pci_register_device() fails
  drm/i915: Use a table for i915_init/exit
  drm/ttm: Force re-init if ttm_global_init() fails
  drm/ttm: Initialize debugfs from ttm_global_init()
  drm/i915: Make the kmem slab for i915_buddy_block a global

 drivers/gpu/drm/i915/i915_buddy.c             |  44 ++++++--
 drivers/gpu/drm/i915/i915_buddy.h             |   3 +-
 drivers/gpu/drm/i915/i915_globals.c           |   6 +-
 drivers/gpu/drm/i915/i915_pci.c               | 103 ++++++++++++------
 drivers/gpu/drm/i915/i915_perf.c              |   3 +-
 drivers/gpu/drm/i915/i915_perf.h              |   2 +-
 drivers/gpu/drm/i915/i915_pmu.c               |   4 +-
 drivers/gpu/drm/i915/i915_pmu.h               |   4 +-
 .../gpu/drm/i915/selftests/i915_selftest.c    |   2 +-
 drivers/gpu/drm/ttm/ttm_device.c              |  14 +++
 drivers/gpu/drm/ttm/ttm_module.c              |  16 ---
 11 files changed, 134 insertions(+), 67 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
