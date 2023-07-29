Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B08767A0A
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 02:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BB510E6B9;
	Sat, 29 Jul 2023 00:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083D810E7B4
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 00:49:16 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-4fe0eb0ca75so4624424e87.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 17:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1690591754; x=1691196554;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HcpHajTaDbkiN1SmMKnkIjR4kEQTV0CiarudRewqC4M=;
 b=qup1r5mEULabDCd1ImqHW7xNa6N8vd07IyxUGSqzY9P8lVSNf1c3xfifZFu7E/M4aZ
 Tlf8v3YwBqpkkUx9ScZL7oLdOthcsrqZvmVEAUVPg0pbcduf5yqF3Frf7b/KEsUYLjdx
 nLUnundJU/GElBBhNhz484f/Ax2lAiYCbubUD50mJxFRrKO97NSKf2fj98Ry1wmAMySv
 BqQ+e/waVl0L2SLOHdq6G494CdYyRVvYJzgCYOPHf6rvGOnzmWHtzp67kUAY89ACbZPB
 Mv3h1fGB/LaypW7E+EPepd3i4gT9EEeo4fgdZ0vVqSsoMD3dKKvvguBF4j2724I+bOL9
 jxFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690591754; x=1691196554;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HcpHajTaDbkiN1SmMKnkIjR4kEQTV0CiarudRewqC4M=;
 b=NSIeAnMgVfqfx/lhN4dgxsHDjuFyp3JqfuqggOM3MT8YwqF3+MDZ+VLNjywFqLobQx
 sV9oEoq/z+39+B9yZN0E0dKC/pLwYN1aF2Xwape6euyvW3txhsnk//phqCjzrBHlNMOi
 TkQnfHRS+DCLC55o5MZUNiz3xa1jf/iT6iAXKggEi4Ic4kBk6ZjFfMyeXmdzS7mkz/M1
 FMbEfSnmfohTktXlLrZBtKdVgnQ13IEzNgeo34h9XsGTkVRvW71t89N5TfDWKMal14bt
 SdfvFhWuPwXqCtBLbnw/Dxaw2V2dqubIV/G4OnSoQCINyUmGhLQmrWqsszIwB2r1KZrQ
 tabw==
X-Gm-Message-State: ABy/qLaHFz/kg7JTdkXYGS/jS6UHtJU++96v4SLhkc9faIOZ0kmJy6H3
 sb5nEB3PExWByu0TrM9A0nHDwA==
X-Google-Smtp-Source: APBJJlHHFFRedGkZ4zanjYhAuAchLEIUJIiyKrxAJi2F4NVKP+9VlNvY5pQAKk7npRBfrHlFd5ETVQ==
X-Received: by 2002:a05:6512:1116:b0:4fb:9712:a717 with SMTP id
 l22-20020a056512111600b004fb9712a717mr3341583lfg.13.1690591754194; 
 Fri, 28 Jul 2023 17:49:14 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
 by smtp.gmail.com with ESMTPSA id
 a24-20020a19f818000000b004fe20d1b288sm500702lff.159.2023.07.28.17.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Jul 2023 17:49:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Simon Ser <contact@emersion.fr>,
 Janne Grunau <j@jannau.net>
Date: Sat, 29 Jul 2023 03:49:09 +0300
Message-Id: <20230729004913.215872-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/bridge-connector: simplify handling of
 USB-C DP
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
Cc: intel-gfx@lists.freedesktop.org, Leo Li <sunpeng.li@amd.com>,
 dri-devel@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

During the discussion of DP connetors, it was pointed out that existing
DP drivers supporting USB-C altmode (AMDGPU, Intel) use
DRM_MODE_CONNECTOR_DisplayPort for such connectors rather than
DRM_MODE_CONNECTOR_USB.

This patchset attempts to solve this issue. It adds USB to the enum
drm_dp_subconnector and then provides a simple yet efficient way to
define DP-in-USB subconnector type for the drivers that use
drm_bridge_connector.

Dmitry Baryshkov (4):
  drm: allow specifying default subtype for the DP subconnector property
  drm/bridge-connector: handle subconnector types
  drm/uapi: document the USB subconnector type
  soc: qcom: pmic_glink: properly describe the DP connector

 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    |  3 +-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  3 +-
 drivers/gpu/drm/drm_bridge_connector.c        | 33 ++++++++++++++++++-
 drivers/gpu/drm/drm_connector.c               |  7 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/soc/qcom/pmic_glink_altmode.c         |  3 +-
 include/drm/drm_bridge.h                      |  4 +++
 include/drm/drm_connector.h                   |  3 +-
 include/uapi/drm/drm_mode.h                   |  1 +
 9 files changed, 52 insertions(+), 8 deletions(-)

-- 
2.39.2

