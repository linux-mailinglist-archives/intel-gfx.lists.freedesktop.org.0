Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C82B36C8645
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 20:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DA210EC7F;
	Fri, 24 Mar 2023 19:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE43710EC7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 19:56:08 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id e65so3602650ybh.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 12:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1679687768;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=e2FTyRWHloi6hkoBb9Of5NQdNb+fa9gmty3BzbuvXxI=;
 b=Hwg7JurEXe02PPZq8Atsrknln4ZWbz3h8hs3ojbaE4NN1aVNDXN77C3kx0h5pb2wof
 tcljDFg1CEBSY/k86ooTZYzwsDRl3auUNr5aiUMC/hgsf4YX8Xuqw8Zy3ba6X/68Xs77
 x8oNnAW3ytucJM3sw8dE6dqohhu6c1217RtPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679687768;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=e2FTyRWHloi6hkoBb9Of5NQdNb+fa9gmty3BzbuvXxI=;
 b=GGOFegN6yn0CcSqoEnqU+3ETcax0DLCrOe5bZ4l6ceps4UaCqj2nVeRxSYbr1+8Q3G
 WDu7BdHswH2UsNgbgJc5u95/mHepy1sJoiDRUaTuJR4WlR4bdfdWu3H5R92ctLUQtKN1
 UJrrxy93LuV7YagjUIkgGBoWe6QW8TFqcCa3tZLRTsbJ4Gx6DPpRagIVi2MA+8iHGd7Q
 xFsipn4Y2RpwUcaw828pJjdthtgNJQEydpXHShbZ+AUGT/5YLv3fH/y946eDMa3vZin4
 RtXg6+ZZBg6afcPYK8qgJKZokOj9P1cM68sNGDy9P5yhc8o3gW4EDZfpOOoXsvYmifS8
 zyQA==
X-Gm-Message-State: AAQBX9dxxDsPXVpZnRLiW+yq305jHTl8kJ3qhDgCjMcjSqg/cTsmCPZZ
 /JFUkMoY3/WtAYP1wP/KIE7LyA==
X-Google-Smtp-Source: AKy350YXlphHGxD9YmJPptwOdxKORbaEhR2yE2Xjf7UDxR0W0rGvkUAkpY5HZm8IUo2jc1zwUlADIQ==
X-Received: by 2002:a25:e7c1:0:b0:b52:f8db:51d3 with SMTP id
 e184-20020a25e7c1000000b00b52f8db51d3mr2808501ybh.36.1679687767867; 
 Fri, 24 Mar 2023 12:56:07 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:5509:ec45:2b32:b39f])
 by smtp.gmail.com with UTF8SMTPSA id
 a19-20020a25ae13000000b00b7767ca7471sm642770ybj.14.2023.03.24.12.56.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Mar 2023 12:56:07 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: 
Date: Fri, 24 Mar 2023 15:55:44 -0400
Message-Id: <20230324195555.3921170-1-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 00/10] drm/hdcp: Pull HDCP
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
Cc: Mark Yacoub <markyacoub@chromium.org>, intel-gfx@lists.freedesktop.org,
 dianders@chromium.org, dri-devel@lists.freedesktop.org, seanpaul@chromium.org,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mark Yacoub <markyacoub@chromium.org>

Hi all,
This is v7 of the HDCP patches. The patches are authored by Sean Paul. 
I rebased and addressed the review comments in v6-v7.

Patches 1-4 focus on moving the common HDCP helpers to common DRM. 
This introduces a slight change in the original intel flow
as it splits the unique driver protocol from the generic implementation.

Patches 5-7 split the HDCP flow on i915 driver to make use the common DRM helpers.

Patches 8-10 implement HDCP on MSM driver.

(Note: I resent the patch to add missing cc's)

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
 drivers/gpu/drm/display/drm_hdcp_helper.c     | 1299 +++++++++++++++++
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
 drivers/gpu/drm/msm/dp/dp_debug.c             |   48 +-
 drivers/gpu/drm/msm/dp/dp_debug.h             |   17 +-
 drivers/gpu/drm/msm/dp/dp_display.c           |   42 +-
 drivers/gpu/drm/msm/dp/dp_display.h           |    5 +
 drivers/gpu/drm/msm/dp/dp_drm.c               |   39 +-
 drivers/gpu/drm/msm/dp/dp_drm.h               |   12 +-
 drivers/gpu/drm/msm/dp/dp_hdcp.c              |  483 ++++++
 drivers/gpu/drm/msm/dp/dp_hdcp.h              |   31 +
 drivers/gpu/drm/msm/dp/dp_parser.c            |   19 +
 drivers/gpu/drm/msm/dp/dp_parser.h            |    4 +
 drivers/gpu/drm/msm/dp/dp_reg.h               |   30 +-
 drivers/gpu/drm/msm/msm_atomic.c              |   19 +
 include/drm/display/drm_hdcp.h                |  287 ++++
 include/drm/display/drm_hdcp_helper.h         |   52 +
 28 files changed, 2903 insertions(+), 1341 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.c
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.h

-- 
2.40.0.348.gf938b09366-goog

