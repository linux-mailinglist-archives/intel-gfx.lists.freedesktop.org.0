Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 370BF14EA1C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB9B6FACF;
	Fri, 31 Jan 2020 09:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D891E6E202
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:34:23 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id d16so7740859wre.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 01:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqKsmnOmE4g1eBao9sea+b2KIRjHTfrjdFuonuG9FSk=;
 b=shQQzFh5jgHiSGjoEfEzYxO3qWs03sD2gW6akiij+M8W+MzlEZslN80bTPskohZMrt
 6vMDmiWMBfAqhQ/4KQDK2kj5dELhcCHIJt2K60I5YmQo9FMmsdHeoTnip9CvEnnP1CWC
 zBRONUoHYRGTLe4igCCTZ1uQ3rooR34OFhCT2iEABqVk8jOqXvpqq/7YyEwkBv1+PNwI
 6yuQcpKEE05yRQNKHtKcRIJ5rx7hvJshhBJwGLk0tFJXoMQovLI4VdqTrC99PjwNfZPo
 k8GG2KiEJ5AoqpKR44RtRg7g9BN6QrGXYT55ZmLcIBo4nm/SAhHzPnmLBUhGHwg7DF/y
 83Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fqKsmnOmE4g1eBao9sea+b2KIRjHTfrjdFuonuG9FSk=;
 b=XP/iHx+hNPkRnDj/5hxIzw3zF/VDY0Pdx50SybBwoi08xDqtHy7xFpFoxzdGZPqx8D
 n1+LI2M2PDK6FHcMqE8SDIB7jGpuHFNIDl+2/M1IYWCujbWQnmLv1s4Y7StpA8ZC731D
 k+lS0ThRZn9FjQ+VXT8jr/LZrBKjQv7VzF6DBHWPKO+ncXCrBLf03kryIYqqVVCd8WKb
 C6ygXmwKUVTYY73H/j4UO9XdrdtwV7gTFAzZ9bIvHCINICYFNZ5NqLTvhLs8bH3GH5G7
 +T14xyHnmAmSOeExjz0NlVM2GdJ1gfxiGEd08lw353CUVE0orIJ7TjNiL9ng57nxtdRf
 jL3Q==
X-Gm-Message-State: APjAAAWh+s3/JXPvmZkR97ONrp17UUn6wWMZZKFzrKhYbKYZH5IfiR+o
 0ahLJprbQErXCZLF2Paqx9RBMzUS5qo=
X-Google-Smtp-Source: APXvYqwDXlPb5ZdnpPzORX989a1Vlsq739CkKIx43uhQl07JHWBr6weELlt857acKWlmZHKJtM3HCw==
X-Received: by 2002:adf:f10b:: with SMTP id r11mr11089016wro.307.1580463262396; 
 Fri, 31 Jan 2020 01:34:22 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm10365360wmc.38.2020.01.31.01.34.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 01:34:21 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Fri, 31 Jan 2020 12:34:11 +0300
Message-Id: <20200131093416.28431-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: conversion to new struct
 drm_device based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series continues the conversion of the printk based logging
macros to the struct drm_device based logging macros in drm/i915. This
series focuses on the root drm/i915 driver folder with patches achieved
manually and using coccinelle.

Wambui Karuga (5):
  drm/i915: conversion to drm_device logging macros when
    drm_i915_private is present.
  drm/i915/debugfs: conversion to drm_device based logging macros.
  drm/i915/cmd_parser: conversion to struct drm_device logging macros.
  drm/i915/perf: conversion to struct drm_device based logging macros.
  drm/i915/pci: conversion to drm_device based logging macros.

 drivers/gpu/drm/i915/i915_cmd_parser.c    |  29 +++--
 drivers/gpu/drm/i915/i915_debugfs.c       |  44 ++++---
 drivers/gpu/drm/i915/i915_drv.c           | 126 ++++++++++--------
 drivers/gpu/drm/i915/i915_gem_fence_reg.c |   2 +-
 drivers/gpu/drm/i915/i915_gem_gtt.c       |   3 +-
 drivers/gpu/drm/i915/i915_irq.c           |  92 ++++++++------
 drivers/gpu/drm/i915/i915_pci.c           |   3 +-
 drivers/gpu/drm/i915/i915_perf.c          | 148 ++++++++++++++--------
 drivers/gpu/drm/i915/i915_sysfs.c         |  19 ++-
 9 files changed, 279 insertions(+), 187 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
