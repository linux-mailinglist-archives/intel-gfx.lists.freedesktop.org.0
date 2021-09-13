Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECA7409B58
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 19:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7076E21C;
	Mon, 13 Sep 2021 17:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA55A6E21C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 17:57:49 +0000 (UTC)
Received: by mail-qt1-x832.google.com with SMTP id b14so8904932qtb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 10:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+Z/gkmVCvsztDvwQKTtg9653j9bA3DsjkVqL1DsfRE=;
 b=ZTjRV66shwmj2cONWMz6N7yJ8CIb1rpv2xIwGXJTegcXg6y9l5BxWFca8wfHUbkUbr
 Yh7isYBmCzbTR0kQMLIX/LgKfFRiw9Fj/jGky4Tq3goU/wDelLMX9djzJboCSd1w9fC+
 21h/+ZhuS+zLXWNXBfC0OWs4y7mQJaQfHiNy5WYWuHLgOyBX8znaC3wVh9/uVxsUbVaK
 OVa/COnz9sMI4bSxrlaPiJn3xtwInduha2gQOMoEOWZ5EOHzgFCdOhdJEkQebi/OLOV8
 PCqxP7xRsYks3hJbnqu3mGWQsR1MPdOS5HSCcLeFUwCsFLhCOk32YzIpzEw7OXC0x/k1
 lbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+Z/gkmVCvsztDvwQKTtg9653j9bA3DsjkVqL1DsfRE=;
 b=acBvdUYVK5+MFz7u65D/cIjvSws8PrrXGwsV3wY31au+It6bIIuTLMv0Nadi5fc+jk
 O5/oSz6SxOOG9g1pcGB4cQvtPDqTo3p9Hp4TU1vx50eiG8j//a50VvcpCvk+SEfBHw0K
 sCVqPtzjXK8N2XjVWmIt8jWMmvN9R8kzAARdJVUc0LUBgfrty8DoqBLXqmN9VRf9odwp
 rZ1K7axumUJ96e91YuX+wf3Z6mQhYNCtu+Mz3Mpu6qtVE/AZ2HlAoHbdqW2qZcRxxfCa
 pfAxwpHY6U0HWC8qJ4wZsQOkolOQiWFeZWk+xvOXh3Gi/FXk38VwvF5R4Yzm2n37SijR
 sY7Q==
X-Gm-Message-State: AOAM533Ftln8x/OLEElsR3SBLt0WIr9tz5Zhcayr1cr4p7BSA0kF2yj6
 KcF06Ymky9LzPKgA+F9qORLdxw==
X-Google-Smtp-Source: ABdhPJw8UyOvmhVyjPN/ZpDg5fwq/8CfA8xWtWK68mOOymsPtJuvjxAn4Tjy3QOlkHd3+SUvFRWKTQ==
X-Received: by 2002:ac8:5f09:: with SMTP id x9mr753242qta.103.1631555868924;
 Mon, 13 Sep 2021 10:57:48 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id s10sm5630845qko.134.2021.09.13.10.57.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Sep 2021 10:57:48 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: Sean Paul <seanpaul@chromium.org>
Date: Mon, 13 Sep 2021 13:57:31 -0400
Message-Id: <20210913175747.47456-1-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/14] drm/hdcp: Pull HDCP auth/exchange/check
 into
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

From: Sean Paul <seanpaul@chromium.org>

Hello,
This patchset pulls the HDCP protocol auth/exchange/check logic out from
i915 into a HDCP helper library which drivers can use to implement the
proper protocol and UAPI interactions for achieving HDCP.

Originally this was all stuffed into i915 since it was the only driver
supporting HDCP. Over the last while I've been working on HDCP support
in the msm driver and have identified the parts which can/should be
shared between drivers and the parts which are hw-specific.

We can generalize all of the sink interactions in the helper as well as
state handling and link checks. This tends to be the trickiest part of
adding HDCP support, since the property state and locking is a bit of a
nightmare. The driver need only implement the more mechanical display
controller register accesses.

The first third of the pachset is establishing the helpers, the next
third is converting the i915 driver to use the helpers, and the last
third is the msm driver implementation.

I've left out HDCP 2.x support, since we still only have i915 as the
reference implementation and I'm not super comfortable speculating on
which parts are platform independent.

Please take a look,

Sean

Sean Paul (14):
  drm/hdcp: Add drm_hdcp_atomic_check()
  drm/hdcp: Avoid changing crtc state in hdcp atomic check
  drm/hdcp: Update property value on content type and user changes
  drm/hdcp: Expand HDCP helper library for enable/disable/check
  drm/i915/hdcp: Consolidate HDCP setup/state cache
  drm/i915/hdcp: Retain hdcp_capable return codes
  drm/i915/hdcp: Use HDCP helpers for i915
  drm/msm/dpu_kms: Re-order dpu includes
  drm/msm/dpu: Remove useless checks in dpu_encoder
  drm/msm/dpu: Remove encoder->enable() hack
  drm/msm/dp: Re-order dp_audio_put in deinit_sub_modules
  dt-bindings: msm/dp: Add bindings for HDCP registers
  drm/msm: Add hdcp register ranges to sc7180 device tree
  drm/msm: Implement HDCP 1.x using the new drm HDCP helpers

 .../bindings/display/msm/dp-controller.yaml   |   11 +-
 drivers/gpu/drm/drm_hdcp.c                    | 1198 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_atomic.c   |    7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   29 +-
 .../drm/i915/display/intel_display_debugfs.c  |   11 +-
 .../drm/i915/display/intel_display_types.h    |   58 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  341 ++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   17 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 1011 +++-----------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   35 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  256 ++--
 drivers/gpu/drm/msm/Makefile                  |    1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c   |   17 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   30 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h       |    2 -
 drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h     |    4 -
 drivers/gpu/drm/msm/dp/dp_debug.c             |   49 +-
 drivers/gpu/drm/msm/dp/dp_debug.h             |    6 +-
 drivers/gpu/drm/msm/dp/dp_display.c           |   47 +-
 drivers/gpu/drm/msm/dp/dp_display.h           |    5 +
 drivers/gpu/drm/msm/dp/dp_drm.c               |   68 +-
 drivers/gpu/drm/msm/dp/dp_drm.h               |    5 +
 drivers/gpu/drm/msm/dp/dp_hdcp.c              |  433 ++++++
 drivers/gpu/drm/msm/dp/dp_hdcp.h              |   27 +
 drivers/gpu/drm/msm/dp/dp_parser.c            |   30 +-
 drivers/gpu/drm/msm/dp/dp_parser.h            |    4 +
 drivers/gpu/drm/msm/dp/dp_reg.h               |   44 +-
 drivers/gpu/drm/msm/msm_atomic.c              |   15 +
 include/drm/drm_hdcp.h                        |  194 +++
 29 files changed, 2570 insertions(+), 1385 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.c
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.h

-- 
Sean Paul, Software Engineer, Google / Chromium OS

