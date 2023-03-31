Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061A96D2AF4
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 00:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1124110E31E;
	Fri, 31 Mar 2023 22:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com
 [IPv6:2607:f8b0:4864:20::112b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC68210E29C
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 22:12:16 +0000 (UTC)
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-5463fa0c2bfso110505237b3.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 15:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1680300736;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Ul+iwHwSuq8EtHT3ReinvAkUetXdzl/doPlLM8/gJ5Y=;
 b=oC0JhBRMzR4v6WHPfPI/+BkGZUVZbmdeDFBDQKNejrIu8Ai+5xdzc8SvTyF0Tvrq/u
 JICqgZ41e6Jh3C8/eBLMmVwWaLDHJiSIfcC8mQUrwygScuG/PzsBPMdTzv6oGpN5xmby
 rdkNumSql1OJIHtUH57fWB55grElTlKN0CAFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680300736;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ul+iwHwSuq8EtHT3ReinvAkUetXdzl/doPlLM8/gJ5Y=;
 b=npUjsnNceD7GzlISxH1GHqE/B2oVssgYpXj6xCHpnX6W3QwDNEyq/I/uxF4WGVucwK
 Wx+80E/iv1dgJov8K4TAQnwSdB7xa6+n3JlBBAXulDoUk0sqgw5HUSSHQac8jFxOl7DO
 yHH0CRyAq6yn+aFbh+lK1Ad59Nyj+CRlKmpZXUF0oQiLHreVKfJimCo9oG8BjaCJmojB
 M1rdOBI2ndmWlX15kvBRmSm2U1hFtav07ko2z+facikWzgcrQvrrpeqfIEmbmXWgQDR3
 HjxAxZf5RfR9Hg/qam/A14EsgKhNnDsWNhDaaCeg/NCNK9Rwx6bAUhJ2PNfBDA5Kwv3r
 teQw==
X-Gm-Message-State: AAQBX9cK4MfUeXDW3IpDN1GPl8rz9F+u5UXiwoc9t+aemBvGCPiZ88uA
 3GtMCkjkGmJkA2RkRfOKN38VBg==
X-Google-Smtp-Source: AKy350bSSZ84tGaiJn/+cY/bAExvKBccTwQndUWSIe7vmsHQlBO9XjKxaYpnYVkVXkgFrPTEdff5hw==
X-Received: by 2002:a81:7dd4:0:b0:544:6fc4:5bcc with SMTP id
 y203-20020a817dd4000000b005446fc45bccmr26206174ywc.5.1680300735884; 
 Fri, 31 Mar 2023 15:12:15 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:a8f6:869a:3ef5:e1d])
 by smtp.gmail.com with UTF8SMTPSA id
 bq10-20020a05690c060a00b00545ac8682e0sm783534ywb.103.2023.03.31.15.12.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Mar 2023 15:12:15 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: 
Date: Fri, 31 Mar 2023 18:12:02 -0400
Message-Id: <20230331221213.1691997-1-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 00/10] drm/hdcp: Pull HDCP
 auth/exchange/check into helpers
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
Cc: intel-gfx@lists.freedesktop.org, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org,
 freedreno@lists.freedesktop.org, Mark Yacoub <markyacoub@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,
This is v7 of the HDCP patches. The patches are authored by Sean Paul. 
I rebased and addressed the review comments in v6-v8.

Patches 1-4 focus on moving the common HDCP helpers to common DRM. 
This introduces a slight change in the original intel flow
as it splits the unique driver protocol from the generic implementation.

Patches 5-7 split the HDCP flow on the i915 driver to make use of the common DRM helpers.

Patches 8-10 implement HDCP on MSM driver.

Thanks,
-Mark Yacoub


Sean Paul (10):
  drm/hdcp: Add drm_hdcp_atomic_check()
  drm/hdcp: Avoid changing crtc state in hdcp atomic check
  drm/hdcp: Update property value on content type and user changes
  drm/hdcp: Expand HDCP helper library for enable/disable/check
  drm/i915/hdcp: Consolidate HDCP setup/state cache
  drm/i915/hdcp: Retain hdcp_capable return codes
  drm/i915/hdcp: Use HDCP helpers for i915
  dt-bindings: msm/dp: Add bindings for HDCP registers
  arm64: dts: qcom: sc7180: Add support for HDCP in dp-controller
  drm/msm: Implement HDCP 1.x using the new drm HDCP helpers

 .../bindings/display/msm/dp-controller.yaml   |    7 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  |    8 +
 drivers/gpu/drm/display/drm_hdcp_helper.c     | 1303 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_atomic.c   |    8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   32 +-
 .../drm/i915/display/intel_display_debugfs.c  |   11 +-
 .../drm/i915/display/intel_display_types.h    |   51 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  368 ++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   16 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 1036 +++----------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   42 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  276 ++--
 drivers/gpu/drm/msm/Kconfig                   |    1 +
 drivers/gpu/drm/msm/Makefile                  |    1 +
 drivers/gpu/drm/msm/dp/dp_catalog.c           |  156 ++
 drivers/gpu/drm/msm/dp/dp_catalog.h           |   18 +
 drivers/gpu/drm/msm/dp/dp_debug.c             |   46 +-
 drivers/gpu/drm/msm/dp/dp_debug.h             |   11 +-
 drivers/gpu/drm/msm/dp/dp_display.c           |   39 +-
 drivers/gpu/drm/msm/dp/dp_display.h           |    5 +
 drivers/gpu/drm/msm/dp/dp_drm.c               |   39 +-
 drivers/gpu/drm/msm/dp/dp_drm.h               |    7 +
 drivers/gpu/drm/msm/dp/dp_hdcp.c              |  397 +++++
 drivers/gpu/drm/msm/dp/dp_hdcp.h              |   33 +
 drivers/gpu/drm/msm/dp/dp_parser.c            |   14 +
 drivers/gpu/drm/msm/dp/dp_parser.h            |    4 +
 drivers/gpu/drm/msm/dp/dp_reg.h               |   30 +-
 drivers/gpu/drm/msm/msm_atomic.c              |   19 +
 include/drm/display/drm_hdcp.h                |  287 ++++
 include/drm/display/drm_hdcp_helper.h         |   52 +
 30 files changed, 2983 insertions(+), 1334 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.c
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.h

-- 
2.40.0.348.gf938b09366-goog

