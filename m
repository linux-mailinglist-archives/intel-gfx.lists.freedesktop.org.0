Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E0C3D1243
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 17:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20E936E8A4;
	Wed, 21 Jul 2021 15:24:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 371A66E4EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 15:24:57 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 gp5-20020a17090adf05b0290175c085e7a5so4256836pjb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 08:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IUFS9JScH7K5vVor56zPcPsX6I51skx868VgLMYWUto=;
 b=ho2qtJA8u9IgSBDcg0VpRR5I5gzJdykkQRC0dJ7TYNiWPogkWsAOtHC96pUT2dTi4k
 nsypt5QZqomAsiAKccq+gMVlJOyk2e8j1POstJ5dzPrDFI/Xw2j0ROxBLCt/6M37r+jn
 sSR7mP/heMqVE5644py74ls79IikH6nHKzlzzsRnewqgPfCZCYAAbjGq15PPuozRP+Z0
 rdE81Dxb+KPd9pA37mIDZ4UL4EKF0Xi047i99bVccIVM9XonvrGAusHWzlU6D+YfA60F
 qtV88IZBpcGQURaFqmAC+Ixa7KcmktuHTVcJTwaYMEjyfFioO6JU10lv1I8D9tYTuWrS
 PReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IUFS9JScH7K5vVor56zPcPsX6I51skx868VgLMYWUto=;
 b=DUh94MLXbHKy+WHPBwbFB/OFy4UyYtL+9483Gn1nRVS1WVCahgub4vLLvkM8qVifD2
 8GnZMTHl/syTvk6PPssoXB6BIRd+VXN7E9YvvLGwbQKqYRNsQ924smRivjIon4URsYkp
 GwQSR6iSd1BYyZ7YpIFza7XYz3HTBc/uMCmhBg9HT7429WyGNK71HpKdL7FLlEPH/OnX
 kICNbwY5S1rll6sp/WZ0brwOqoR9qXF8L8eaimH3gvFpnFyaRbkc8jBH0U7GWSYtd8EU
 DlWQvwYYURbhDROuaZrYWp/UmkzVx+vs1eUMvmRMlidOultAcSxJLbvWtxvWddOG3wWO
 ydHg==
X-Gm-Message-State: AOAM531U7DlgTFzVuet6He6IHoSxElqYtwz30kvzB0Uldl2JcoW0fRqE
 bMcV7ZGr0aR+qwF4rTL9BSRl5GApQI7ZfA==
X-Google-Smtp-Source: ABdhPJyF559yMeUil6M9Tqu3IZeVcTNqNWv57mvgOXT7kghIjMUCXz0mWLfotP9bM3BSrpBAvHhN3Q==
X-Received: by 2002:a17:902:eccc:b029:12b:a750:cc3a with SMTP id
 a12-20020a170902ecccb029012ba750cc3amr3198591plh.57.1626881096470; 
 Wed, 21 Jul 2021 08:24:56 -0700 (PDT)
Received: from omlet.com ([134.134.137.82])
 by smtp.gmail.com with ESMTPSA id e4sm32451034pgi.94.2021.07.21.08.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 08:24:56 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 10:23:52 -0500
Message-Id: <20210721152358.2893314-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Fix the debugfs splat from mock selftests
 (v3)
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
  drm/i915: Use a table for i915_init/exit (v2)
  drm/ttm: Force re-init if ttm_global_init() fails
  drm/ttm: Initialize debugfs from ttm_global_init()
  drm/i915: Make the kmem slab for i915_buddy_block a global

 drivers/gpu/drm/i915/i915_buddy.c             |  44 ++++++--
 drivers/gpu/drm/i915/i915_buddy.h             |   3 +-
 drivers/gpu/drm/i915/i915_globals.c           |   6 +-
 drivers/gpu/drm/i915/i915_pci.c               | 104 ++++++++++++------
 drivers/gpu/drm/i915/i915_perf.c              |   3 +-
 drivers/gpu/drm/i915/i915_perf.h              |   2 +-
 drivers/gpu/drm/i915/i915_pmu.c               |   4 +-
 drivers/gpu/drm/i915/i915_pmu.h               |   4 +-
 .../gpu/drm/i915/selftests/i915_selftest.c    |   4 +-
 drivers/gpu/drm/ttm/ttm_device.c              |  14 +++
 drivers/gpu/drm/ttm/ttm_module.c              |  16 ---
 11 files changed, 136 insertions(+), 68 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
