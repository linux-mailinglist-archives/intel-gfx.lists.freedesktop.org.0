Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6945174C0B0
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Jul 2023 05:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CA1310E19D;
	Sun,  9 Jul 2023 03:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C39C10E188
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Jul 2023 03:42:17 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-2b701e1ca63so50627101fa.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 08 Jul 2023 20:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1688874133; x=1691466133;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=RQnOLw2jy72B5d49p7EFl7RtUNtBu7jzNiDmy4d3gvw=;
 b=aAJuz4htS1BKdTf5jaulHZxuWw59Qcz6zgxK/Yat4BgS1ZhDP98V4jFS6AiOpeSjbF
 3IaQtm2szazl+4/o91QCA3nHTnuf12fM2Ta8C7PkLuarkemwo/Rd6wlCgcUWNvWhOnX3
 SqYX0u3aPtjeCynh+C1waBxT6r5b0p02Zyip7UaIvsk1lXu4EkPlFu0yE2qaYSiyPxxp
 gH2GYZe18ll79PTPdV9sU0UIJsbNVg3YDJvz0jJSIkMOQC7d+qb2MnG2mjohw/kSO12X
 4E3B8ruGhfMNy/qV3Jnzoa62EkrxY9dRE/gZbmRnyl6hv+UeV3AKl2/XzHAQjgZxwTQQ
 /jtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688874133; x=1691466133;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RQnOLw2jy72B5d49p7EFl7RtUNtBu7jzNiDmy4d3gvw=;
 b=GmClzBPvtqC29T2G2lLKdS9B83RDKlLNlZdroa1FCwlld3CUDYA9dma3MbfbzxQpaD
 3ywo82HySk7hx9wXPH7IQnATnfBCKdwFhib5r2gSTHKNjPqAiFQRXlqQ8WwWb1b0XrsV
 zEVvvUt3ceWeFQJcd5+XePcJ1mRrw86hGH6lDXN6fdWO3LcO+ro/cIlyC5tJRrqOZHK7
 OqkyRnnDSsEdsWhByMOa4+dJDHewwKf5xejDrr2th//A82Pag3soatzsVKh1wlqsPpOe
 j9AEoXNk0tGmr2gYCBRPgcLNfWJ4xfpo10LtvCUOuhgjX8+IZSQ8Z4FmwpbUWSCWXLSt
 nd3A==
X-Gm-Message-State: ABy/qLaTc9H+jNpwNWm/v1gnOGTMWMAc2p4FTF4rHimY3waDL5p5sy2x
 3BNKHnIueiBcgBdfB2e9kkXw8g==
X-Google-Smtp-Source: APBJJlEIUuViZXZGeg4gKvrVXN0zB+nx8HuxfmaaEW7u+bhbsBTjyxPqmkvjkEhwiYrUb2wJY7X9hw==
X-Received: by 2002:a2e:9206:0:b0:2b5:8eae:7846 with SMTP id
 k6-20020a2e9206000000b002b58eae7846mr6984695ljg.18.1688874132630; 
 Sat, 08 Jul 2023 20:42:12 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi.
 [2001:14ba:a0db:1f00::ab2]) by smtp.gmail.com with ESMTPSA id
 y13-20020a2e9d4d000000b002b6d7682050sm1390289ljj.89.2023.07.08.20.42.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Jul 2023 20:42:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Sun,  9 Jul 2023 06:42:08 +0300
Message-Id: <20230709034211.4045004-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/3] drm/bridge_connector: implement OOB HPD
 handling
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
Cc: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <andersson@kernel.org>, linux-usb@vger.kernel.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Note, this is sent as v5, since there were several revisions for this
patchset under a different series title ([1]).

USB altmodes code would send OOB notifications to the drm_connector
specified in the device tree. However as the MSM DP driver uses
drm_bridge_connector, there is no way to receive these event directly.
Implement a bridge between oob_hotplug_event and drm_bridge's
hpd_notify.

Merge strategy: since this series touches i915 code, it might make sense
to merge it through drm-intel.

[1] https://patchwork.freedesktop.org/series/103449/

Changes since v4:
- Picked up the patchset
- Dropped msm-specific patches
- Changed drm_bridge_connector_oob_hotplug_event to call connector's HPD
  callback directly, rather than going through the last bridge's
  hpd_notify
- Added proper fwnode for the drm_bridge_connector

Bjorn Andersson (1):
  drm: Add HPD state to drm_connector_oob_hotplug_event()

Dmitry Baryshkov (2):
  drm/bridge_connector: stop filtering events in
    drm_bridge_connector_hpd_cb()
  drm/bridge_connector: implement oob_hotplug_event

 drivers/gpu/drm/drm_bridge_connector.c        | 34 ++++++++++++++-----
 drivers/gpu/drm/drm_connector.c               |  6 ++--
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 17 ++++++++--
 drivers/usb/typec/altmodes/displayport.c      | 13 ++++---
 include/drm/drm_connector.h                   |  6 ++--
 6 files changed, 57 insertions(+), 22 deletions(-)

-- 
2.39.2

