Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2294D16FBB7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1E36E43D;
	Wed, 26 Feb 2020 10:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4048C6E43D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:11:48 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id a141so1569043wme.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+OBLZe5JCJc9vyrE3tg2uEPICF2Q8ViC++M+2AhK74k=;
 b=LRMjk0GYs1Ba6dBQYihAbmh+5P1f9fwHh1aUFirJvJHikNNhp715uRXbV/DqVSMlVQ
 x5JQ0AeyHmLpOR0b30t0myrqcks7awuygmYoJ1kVJxwXxZzSt4t8UWt+8Or4//Qu7ElX
 jAxre3tDZ3YCyFJYBIlF+cDgGI6d8CsVkfc5EL5A2Y6qcucbCJtg3dTCzgWdvYg0JcZn
 dzs4knyj7EDzatm0ShD1PHchyYQuxTDXdVeNQVf3cxxIv9v2kuDGe3vOQ178DQ7K5YkI
 9o9KAFigRnQaWvliBFDCI60E9q5gPgJbOH8JVD2okYGrkm74Nqp87tE0hxD5rM35qNyX
 4yBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+OBLZe5JCJc9vyrE3tg2uEPICF2Q8ViC++M+2AhK74k=;
 b=VxLxYSxRlrTSgcWJQFGEW5nyf/X/lM61OZEUA9kyzTXlT/GX0QYCA0uE82Drz+Sy07
 EqwUZePgy8vt+NBtAtCWxuGY9lff3D8oytkZKhx1bpIwHq/7WMW9sTMBWKTouql6k08P
 7mUN87m0BnfndhCKUQdpts10zeru87zeGmlGbxm2meDe5ohJLw1zTwcsWithJOtMEuX9
 CuzkBp5nvi+r7/IvtNmEwm8zVVY4Exh1fZl+t4g0MzA3hCW03WCcxwk3IODLdixpR9mQ
 5evja73yX5Prlv3Gkb+RxdPKhRBBTagN/vxcs7NUcpnwAdPLFI/t7j7cBkxZw/bSiLzo
 rAxQ==
X-Gm-Message-State: APjAAAUlV+ah24nBd6jw4aum220DOZqgUIaVHJC4UUjYjzRJmmlt7qgd
 3Pq6m1/nT20sdppa04xj13Y=
X-Google-Smtp-Source: APXvYqwNBj9f1zyCdEcA11kFB3lPNlzKWDFJpRC2MQzxuxNcsUyRXfd/NUtQksOypWrS9Gu4bH45WA==
X-Received: by 2002:a05:600c:291d:: with SMTP id
 i29mr4805258wmd.39.1582711906806; 
 Wed, 26 Feb 2020 02:11:46 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.11.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:11:46 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:28 +0300
Message-Id: <20200226101138.15435-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] drm/i915/display: conversion to
 drm_device based logging macros
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

This series continues the conversion of various instances of the printk
based drm logging macros to use the struct drm_device logging macros.
This series focuses on various files in drm/i915/display and was done
both manually and using coccinelle.

Wambui Karuga (10):
  drm/i915/dsb: convert to drm_device based logging macros.
  drm/i915/fbc: convert to drm_device based logging macros.
  drm/i915/fbdev: convert to drm_device based logging.
  drm/i915/fifo_underrun: convert to drm_device based logging.
  drm/i915/gmbus: convert to drm_device based logging,
  drm/i915/hdcp: convert to struct drm_device based logging.
  drm/i915/hotplug: convert to drm_device based logging.
  drm/i915/lpe_audio: convert to drm_device based logging macros.
  drm/i915/lvds: convert to drm_device based logging macros.
  drm/i915/overlay: convert to drm_device based logging.

 drivers/gpu/drm/i915/display/intel_dsb.c      |  28 +++--
 drivers/gpu/drm/i915/display/intel_fbc.c      |  28 +++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  89 ++++++++------
 .../drm/i915/display/intel_fifo_underrun.c    |  29 +++--
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  33 ++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 114 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  40 +++---
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  23 ++--
 drivers/gpu/drm/i915/display/intel_lvds.c     |  43 ++++---
 drivers/gpu/drm/i915/display/intel_overlay.c  |  11 +-
 10 files changed, 255 insertions(+), 183 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
