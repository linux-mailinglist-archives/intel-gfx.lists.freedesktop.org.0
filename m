Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 555A753766D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 10:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C96F10E12C;
	Mon, 30 May 2022 08:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B2010E0E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 08:19:21 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id a10so1075495pju.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 01:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pBLLK5jVhwbNway5d1jcnH/mwgI9yxE1r2VmUrlYtDU=;
 b=LLgjKgp2+ro4rOIKxUWfMFimQjfxFWRvVWoMjpqWUvgtX/IIENmwdkMHUIq88hcolf
 ROFZ7vAAUlY+NJsshhvUkkommU11wX7sGxpjL1CjmCeZgVV/zkVhk3p7u/ZyNujeoi9J
 QxRXyXc9nqN8qIybleH4/7N9FDZp9fBXbaLPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pBLLK5jVhwbNway5d1jcnH/mwgI9yxE1r2VmUrlYtDU=;
 b=0h6jrO+Pa6ngEvQBUIORVnuvyFXT92EoQHzej6r/JeWLfVv2H5t9B80H3SW7OrMp7D
 O1vvWSXryLcaoMq/52hNXSwduZeZ0hPbdmx4NlHDa+73c1bVILXG6dkc+fRsHzDA2gXM
 RywiPJI1yRNVcYisRYD05VM10ZDIdCI0lQrTlkeRxe8IW2moMlFv87oAorO4DVku3zFm
 cb4hp0XYYRsZQ29Jv1GfJGzUXIyVzrgOrsNqJPSYAhlnw9l5DdUVB4PlNwrkM+WzMTHq
 RsbGEuS3XQ+xP+GjaMG0A4brwmi4/jE9OrWRoS7EtA6piw7atfG9jAj2gqskavu62yMN
 Cedg==
X-Gm-Message-State: AOAM531TlGv2B2267PxEWOGE4RoKIz7u0A1wmSZqRHPACg0X4aIu/u5K
 jvCnbOBjqCGQEn8BBziFdlIp9A==
X-Google-Smtp-Source: ABdhPJz+H5PQ1/wn0WMWpccN62eOSMQ6CsdGl2YYPW6OhEKjBgqYnlaum+TZJlp8G3W0bq500UZXIw==
X-Received: by 2002:a17:903:124a:b0:154:c860:6d52 with SMTP id
 u10-20020a170903124a00b00154c8606d52mr55869147plh.159.1653898761542; 
 Mon, 30 May 2022 01:19:21 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:ae1c:3d63:abec:1097])
 by smtp.gmail.com with ESMTPSA id
 m1-20020a170902f64100b001618b70dcc9sm8537900plg.101.2022.05.30.01.19.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 May 2022 01:19:21 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Mon, 30 May 2022 16:19:06 +0800
Message-Id: <20220530081910.3947168-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 0/4] Separate panel orientation property
 creating and value setting
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
Cc: Rob Clark <robdclark@chromium.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Harry Wentland <harry.wentland@amd.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Alex Deucher <alexander.deucher@amd.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Simon Ser <contact@emersion.fr>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some drivers, eg. mtk_drm and msm_drm, rely on the panel to set the
orientation. Panel calls drm_connector_set_panel_orientation() to create
orientation property and sets the value. However, connector properties
can't be created after drm_dev_register() is called. The goal is to
separate the orientation property creation, so drm drivers can create it
earlier before drm_dev_register().

After this series, drm_connector_set_panel_orientation() works like
before. It won't affect existing callers of
drm_connector_set_panel_orientation(). The only difference is that
some drm drivers can call drm_connector_init_panel_orientation_property()
earlier.

Hsin-Yi Wang (4):
  gpu: drm: separate panel orientation property creating and value
    setting
  drm/mediatek: init panel orientation property
  drm/msm: init panel orientation property
  arm64: dts: mt8183: Add panel rotation

 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  1 +
 drivers/gpu/drm/drm_connector.c               | 58 ++++++++++++++-----
 drivers/gpu/drm/mediatek/mtk_dsi.c            |  7 +++
 drivers/gpu/drm/msm/dsi/dsi_manager.c         |  4 ++
 include/drm/drm_connector.h                   |  2 +
 5 files changed, 59 insertions(+), 13 deletions(-)

-- 
2.36.1.124.g0e6072fb45-goog

