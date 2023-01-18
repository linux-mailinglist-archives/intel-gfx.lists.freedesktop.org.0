Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4DC672833
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 20:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37A510E811;
	Wed, 18 Jan 2023 19:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDC010E811
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 19:30:20 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id e8so9750014qts.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 11:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=g7xDPjbRpbW/1Y146BUFy3rG1PlEHIGh3rZX85WmAFk=;
 b=YCT7NhsFTBwdjtcySMujXsQ9iT8sSkX9P2rJSOEi7MIf/vUZgLKWPIvYhDDJ5KX0h2
 04Y3Gb4+aqh+eqPj9AsvYA5GWlhSgRiEEgTn4XOEJ1fZkP+7FFANL24g7AWuZkMKqdRP
 aw1/btRMyKOiceej5xV2eo4/2E6hYFfTepV+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=g7xDPjbRpbW/1Y146BUFy3rG1PlEHIGh3rZX85WmAFk=;
 b=7Bq3/To0VYJoaF68U6aVU584MvlOaAqX6cy2PlShxf+QYZxMiwlL+Ow2Rj/WqEoRJt
 FAF3THOxjwjl4EMqQ5GhpBUAi9mx9dEUozYNF5TG5zOFgF+qlpWGGpMbviTcRMPkyu6k
 MULt3+LVp+C94gmR9XQRDes6CtgPTL+LtGVcJeicYMuEZSQYvo1IcmQMJiV61uwurOl/
 XFQhoQ1QP63lLCWUArMsE60jFsXN2Aab+KlbOToUJtTNLljNsiwvL3egiQ3h5VV5fjAd
 zEls9M3I3ifVzMX+Gbc3/VRN1tjtu5/vBBZVHDLrEvHLQH0Dx9Ayi6uWmts2RGzAskUu
 BgDg==
X-Gm-Message-State: AFqh2kqCrwW7KgGpPxRGVRPGZAbmHByR1Cz+JEywxivQPyq6ZO+TZOe+
 tH2+HdyWAFnkR3Hprds0mRVydA==
X-Google-Smtp-Source: AMrXdXuZJIDRMFdvUl35vOCmEkGVlA3bW2dOxpF8adOcUqZuFBuN3qGMHLxiai/uwwErQRkgA/dCow==
X-Received: by 2002:ac8:6b88:0:b0:3b0:4084:d6ad with SMTP id
 z8-20020ac86b88000000b003b04084d6admr11101265qts.58.1674070219105; 
 Wed, 18 Jan 2023 11:30:19 -0800 (PST)
Received: from localhost (29.46.245.35.bc.googleusercontent.com.
 [35.245.46.29]) by smtp.gmail.com with UTF8SMTPSA id
 y2-20020a05620a44c200b006e42a8e9f9bsm8957331qkp.121.2023.01.18.11.30.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Jan 2023 11:30:18 -0800 (PST)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: quic_khsieh@quicinc.com, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 19:30:05 +0000
Message-Id: <20230118193015.911074-1-markyacoub@google.com>
X-Mailer: git-send-email 2.39.0.246.g2a6d74b583-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 00/10] drm/hdcp: Pull HDCP
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
Cc: quic_sbillaka@quicinc.com, konrad.dybcio@somainline.org,
 bjorn.andersson@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 airlied@gmail.com, hbh25y@gmail.com, marex@denx.de, abhinavk@codeaurora.org,
 javierm@redhat.com, agross@kernel.org, quic_jesszhan@quicinc.com,
 daniel@ffwll.ch, lucas.demarchi@intel.com, quic_abhinavk@quicinc.com,
 swboyd@chromium.org, robh+dt@kernel.org, christophe.jaillet@wanadoo.fr,
 maxime@cerno.tech, rodrigo.vivi@intel.com, johan+linaro@kernel.org,
 markyacoub@chromium.org, andersson@kernel.org, dianders@chromium.org,
 tzimmermann@suse.de, dmitry.baryshkov@linaro.org, seanpaul@chromium.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mark Yacoub <markyacoub@chromium.org>

Hello,

I rebased this series which is authored by Sean Paul.

A major rebase conflict was that drm/drm_hdcp was split to drm/display/drm_hdcp & drm/display/drm_hdcp_helper.

Another major one was in msm dp where drm_connector was no longer tracked, but it's replaced by msm_dp_bridge to carry over its functionalities.

The first 4 patches modify DRM. They've been reviewed.
Patches 5-7 are intel-only. Only patch 7 hasn't been reviewed.
Patches 8-10 are msm-only. Only patch 9 hasn't been reviewed.

Thanks,
Mark

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

 .../bindings/display/msm/dp-controller.yaml   |    8 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  |    8 +
 drivers/gpu/drm/display/drm_hdcp_helper.c     | 1202 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_atomic.c   |    8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   32 +-
 .../drm/i915/display/intel_display_debugfs.c  |   11 +-
 .../drm/i915/display/intel_display_types.h    |   60 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  348 ++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   16 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 1028 +++-----------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   36 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  270 ++--
 drivers/gpu/drm/msm/Kconfig                   |    1 +
 drivers/gpu/drm/msm/Makefile                  |    1 +
 drivers/gpu/drm/msm/dp/dp_debug.c             |   48 +-
 drivers/gpu/drm/msm/dp/dp_debug.h             |    6 +-
 drivers/gpu/drm/msm/dp/dp_display.c           |   52 +-
 drivers/gpu/drm/msm/dp/dp_display.h           |    5 +
 drivers/gpu/drm/msm/dp/dp_drm.c               |  108 +-
 drivers/gpu/drm/msm/dp/dp_drm.h               |   16 +-
 drivers/gpu/drm/msm/dp/dp_hdcp.c              |  456 +++++++
 drivers/gpu/drm/msm/dp/dp_hdcp.h              |   29 +
 drivers/gpu/drm/msm/dp/dp_parser.c            |   20 +-
 drivers/gpu/drm/msm/dp/dp_parser.h            |    4 +
 drivers/gpu/drm/msm/dp/dp_reg.h               |   32 +-
 drivers/gpu/drm/msm/msm_atomic.c              |   15 +
 include/drm/display/drm_hdcp.h                |  168 ++-
 include/drm/display/drm_hdcp_helper.h         |   33 +-
 28 files changed, 2667 insertions(+), 1354 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.c
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.h

-- 
2.39.0.246.g2a6d74b583-goog

