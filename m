Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93B514B022
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF91D6ECAF;
	Tue, 28 Jan 2020 07:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B48816ECAE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:14:45 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id c14so14719673wrn.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L5rJjGW45Z+8qSbHYVvuoI5CUz6BfgTic5/gZkDJ/Y8=;
 b=UgRWZAH0XkaMeIU/waZA3b2LhF3N28TF8GD5Xo9y1mKGDWEUh1tqZ09zpXL7qVNev8
 N7i8zAKXvr3JaRCQLJvH8hmc+EkrkpM4mqflzBWcQe4zqLNOdbLckyVxaev1WybTdUOi
 NIuNtXL9aZz3mii3UhpG+llabvq3oc6gaSNYDB529xmfU5qwcLs6B6S/hqgygNplF6sO
 y0o1KDlkiUWbA4/+5nnvJz3OzsuMLlmgHkPFO9Be6M+iBYKfPHge1IRPQfssJr0HwSdJ
 PztX/AYB/obeK5kLs12XPsLFXQyrfIPopT9JVZtY8KQ/+fB1OWFvqTIMD8cKDnMKZRfx
 l+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L5rJjGW45Z+8qSbHYVvuoI5CUz6BfgTic5/gZkDJ/Y8=;
 b=lCwIvHnzKi8onqpxFbqLODB+8024+dobBEB8MaVBaaWUdVdrsq2HbqTgSHeQja4KHF
 sksV5d6tKHjje4zcUruZf+puAv7pjLYl+quSSV31S+GI2Dslre4hZhwEzs7cpeIPVRTj
 ZNbjmWK4k+W8teOfm7t+ODLxv0Jio4+rA65f0sbL/FkRTitBJb65fcaFVWJqA5uj+Zvb
 TTW19lDOXtUgu8Qly0rvSw/zwobGcLRXyYvA/ofVa416AoCPG3GlUseOtQ+fNnVtrSua
 jwdwkrB3PJhbk26O/FnDYu52nQ1EXMZleqhv53tQ3B3/f/ML8WyGqQUlskWV9ZFQg2Z4
 hBLA==
X-Gm-Message-State: APjAAAWTIqdXhaMkhb9XxjW4yWTVJi7nYusNdX0fBRZHvBjNDrH24OBl
 /KnlW8SlWG+B87PnDPMpZ50=
X-Google-Smtp-Source: APXvYqwa7tWyBpDRtHnj5Qd9UlSvn8PEuNh5+zk3g2NLNfAuRUUZoeewfloHgJQh/rKSUHnE6h03ZA==
X-Received: by 2002:adf:ff84:: with SMTP id j4mr27186950wrr.27.1580195684338; 
 Mon, 27 Jan 2020 23:14:44 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:14:43 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:29 +0300
Message-Id: <20200128071437.9284-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/8] drm/i915/gt conversion to new drm logging
 macros.
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

This series continues the conversion to the new drm logging macros
focused on the drm/i915/gt folder. This was done both manually and using
coccinelle.

Wambui Karuga (8):
  drm/i915/gt: conversion to struct drm_device macros when struct
    drm_i915_private is available.
  drm/i915/ggtt: use new drm logging macros in gt/intel_ggtt.c
  drm/i915/reset: conversion to new drm logging macros in
    gt/intel_reset.c
  drm/i915/engine_cs: use new drm logging macros in gt/intel_engine_cs.c
  drm/i915/lrc: conversion to new drm logging macros in gt/intel_lrc.c
  drm/i915/gt: convert to new logging macros in gt/intel_gt.c
  drm/i915/ring: convert to new logging macros in
    gt/intel_ring_submission.c
  drm/i915/rps: move to new drm logging macros in gt/intel_rps.c

 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 11 +--
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 63 +++++++++------
 drivers/gpu/drm/i915/gt/intel_gt.c            | 49 ++++++-----
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 24 +++---
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 30 ++++---
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 48 ++++++-----
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 36 +++++----
 drivers/gpu/drm/i915/gt/intel_rps.c           | 81 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  7 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  4 +-
 13 files changed, 196 insertions(+), 164 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
