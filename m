Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAA4831C80
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 16:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C66210E0A8;
	Thu, 18 Jan 2024 15:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9E410E0A8;
 Thu, 18 Jan 2024 15:29:03 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-50e9e5c97e1so15787160e87.0; 
 Thu, 18 Jan 2024 07:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1705591681; x=1706196481; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=3hDntVIRTdqlHnttcQWkjbRbMigpxTlBBQcGLVZU06s=;
 b=aCeVwfMYiknV/Ce/FPmx7zJInYQudQUT+V8nzasC3maaHSefgcT1d4uNekpvGPl2LC
 cjVp/fg3iqzlK+/ZNg0ThR4WiRSjytCzaCOq79Hv+SKuyDdRjUK1usXcK3cW/EZqbnZI
 M7vBhY8kyl3bZSpZzsUPSsqnal8KeoPcqbf0qgj387YgUpKoxDlFs6WAYcl7bxRUYaEl
 QVK8/SpNI+/BBzJpbtXx1NM8HvryyqsR28BlbAy2725XPHise2K3gfC45Xsm2rZhljkg
 kZI8my0YvC0DO7Fsegd2Ei7+D7olPtpqAhaXAnnKyp2bJwsQkFml1W44UhLYyKlzPLlz
 /rUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705591681; x=1706196481;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3hDntVIRTdqlHnttcQWkjbRbMigpxTlBBQcGLVZU06s=;
 b=vhU3K3Dx9bJvzbxhnLWSx/7MWcapVXFbPMjyDk+8oVMtVjTrbBgohZgjkADbeYLeXz
 8mSwDa46lFfM5O8cGtCIL2GyWI9wdYea6454YPjdjAk/ednd8bY59YZuKvoCnoX9bDoC
 elmSZKOkclsRioi6vgkex3bWubMf3EM/YOoObrSzbia4uQFhW7T7xMyDhJGrX5UhXWRm
 s+2ySGrYJ36xa6a/tR9alUKwtuQ0jbL7wJ25vnX0m3G4lIrfAe/0Ci0wVIJHkFX5Kxi1
 wclwDvSOKY5aZkoXvFzvgksrqeqH/2laQGQXmBSTda4HzmEebwkj03HawgmPocSZtDxI
 qIiw==
X-Gm-Message-State: AOJu0Yw6X68vJu+uDZkHXa9QmogUoizlJMiWO3drVD1A8k/icmsV0zGb
 23J4L0zX79ca1jE7dl31iU5CD0f8tz8iQI5bfB6RL0pupc7Cz7seyG+i7uD6h0FZrg==
X-Google-Smtp-Source: AGHT+IGsrARs8dtHU58R+Kni+8/ms5R194kRw+Aa+mB7O/WAHnjCjeXHXqijurSJxJQ1mwx8s2xkwg==
X-Received: by 2002:ac2:550b:0:b0:50e:6168:c99d with SMTP id
 j11-20020ac2550b000000b0050e6168c99dmr559994lfk.27.1705591680615; 
 Thu, 18 Jan 2024 07:28:00 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:96ab:4869:ae6:2c8a])
 by smtp.gmail.com with ESMTPSA id
 z1-20020ac25de1000000b0050eea9541casm672737lfq.44.2024.01.18.07.27.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jan 2024 07:28:00 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] Enable ccs compressed framebuffers on Xe2
Date: Thu, 18 Jan 2024 17:27:41 +0200
Message-Id: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
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

This patch set touches Xe and i915 drivers. On i915 is checked if
running on Xe2 hardware and enable framebuffer ccs decompression
unconditionally for tile4 framebuffers. On Xe driver with Xe2
hardware check if ccs compression is in use and behave accordingly;
attempt to use ccs with linear and x-tiled framebuffers will result
in -EINVAL as display does support decompression only on tile4.

Juha-Pekka Heikkila (4):
  drm/xe: add bind time pat index to xe_bo structure
  drm/xe: store bind time pat index to xe_bo
  drm/xe/xe2: Limit ccs framebuffers to tile4 only
  drm/i915/display: On Xe2 always enable decompression with tile4

 .../gpu/drm/i915/display/skl_universal_plane.c  |  5 +++++
 drivers/gpu/drm/xe/display/xe_fb_pin.c          | 17 +++++++++++++++++
 drivers/gpu/drm/xe/xe_bo_types.h                |  6 ++++++
 drivers/gpu/drm/xe/xe_pt.c                      |  4 ++++
 4 files changed, 32 insertions(+)

-- 
2.25.1

