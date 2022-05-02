Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D082A5183DB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 14:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F93310EB76;
	Tue,  3 May 2022 12:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DDEC10F134
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 16:51:31 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id z8so15771981oix.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 May 2022 09:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qDbeIX3G7CAdlzYVZYrcGdjlGadN5/397vtFVJ5LGZ0=;
 b=XooHx68yyT3HJJvAvwlP32zNjixKBDR2DZX+foZ/QUBBANRiEilHqqKIyJMKqQF8l/
 USWW8mTYv0yD5WnhQ0199oxHJVfYZVVhMtab+xX+vTqWNRBVI827oWnXoJMh9n93ls2F
 nK8foxy6JPLfD6Nw+a3+4xbM+FHpQjSzk4OnF1T1AEAjbTwArmAnU2215ZyRtP6OZNkY
 VfkPJ6/gYjrj9tycLldB0fedH/O+ear22oankqOIHZjEeGz14YDpsbV+kvuEmjeijaLl
 emcOmA1hbgQyUmRUGEEL9AwyWm5TliinL6rXMxDelAdp3wYsyqvMA8t1HxV9X+0HGmEk
 77zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qDbeIX3G7CAdlzYVZYrcGdjlGadN5/397vtFVJ5LGZ0=;
 b=7BDFlLBcJDhKFtL5iiJkci4UEiKQi1sdKw1XgwBVCHXI/KCivN/ZuJoQ80il3TiOnB
 7jCBH8PJn41/2sDXtG+ffsspsTJWG0r1b5QXoAaGXASTrFJIHTiFdaMheBd3pE0Oi4VZ
 UygBvhfcfDlxpny1rv/t9iktXvoicINWvGs6Szi/NOWet/FO/Hbdls33u1IgcWPEP6gV
 fWr+B4C2xbM3JiTWbXvrj0GaHO4ZMMYorfV5QajmqCZPQUN0tyiz14Ahl8GyL+ZYjr7D
 XXda6ccLh51dvIixVEbFJPzAbokGDVPFgHQCFYd//WXVkc2Lo0YMXMAYt8RcYGvYUXLU
 moTg==
X-Gm-Message-State: AOAM5309RUdin+puZ3axX4W6f/eE+MLtsw8UdN2/MWbBxwDtmm10R905
 wPLUDX2bKEKiVfTxnX2107UTvQ==
X-Google-Smtp-Source: ABdhPJzBKz1yiIK2Jf2XUFNV3lOE1PeOdmDd6SS2he3gildxijlbqu95mdYr54pb4q4sU2bTKcztnQ==
X-Received: by 2002:aca:502:0:b0:2cd:c24:278f with SMTP id
 2-20020aca0502000000b002cd0c24278fmr33189oif.150.1651510290838; 
 Mon, 02 May 2022 09:51:30 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 h11-20020a4add8b000000b0035eb4e5a6ccsm4029422oov.34.2022.05.02.09.51.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 09:51:29 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Date: Mon,  2 May 2022 09:53:11 -0700
Message-Id: <20220502165316.4167199-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 03 May 2022 12:03:05 +0000
Subject: [Intel-gfx] [PATCH v4 0/5] drm/msm/dp: implement HPD notifications
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Stephen Boyd <swboyd@chromium.org>,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

USB altmodes code would send OOB notifications to the drm_connector
specified in the device tree. However as the MSM DP driver uses
drm_bridge_connector, there is no way to receive these event directly.
Implement a bridge between oob_hotplug_event and drm_bridge's hpd_notify
and use it to deliver altmode messages to the MSM DP driver.

Note, I left the original 'bool connected' field to be used by the
notifiers. However I think that it should be replaced in favour of using
the dp->hpd_state properly.

Bjorn Andersson (2):
  drm: Add HPD state to drm_connector_oob_hotplug_event()
  drm/msm/dp: Implement hpd_notify()

Dmitry Baryshkov (3):
  drm/bridge_connector: stop filtering events in
    drm_bridge_connector_hpd_cb()
  drm/bridge_connector: implement oob_hotplug_event
  drm/msm/dp: remove most of usbpd-related remains

 drivers/gpu/drm/drm_bridge_connector.c   | 17 +++--
 drivers/gpu/drm/drm_connector.c          |  6 +-
 drivers/gpu/drm/i915/display/intel_dp.c  | 17 ++++-
 drivers/gpu/drm/i915/i915_drv.h          |  3 +
 drivers/gpu/drm/msm/Makefile             |  1 -
 drivers/gpu/drm/msm/dp/dp_ctrl.h         |  1 -
 drivers/gpu/drm/msm/dp/dp_debug.c        |  6 +-
 drivers/gpu/drm/msm/dp/dp_debug.h        |  4 +-
 drivers/gpu/drm/msm/dp/dp_display.c      | 81 +++++++++++-------------
 drivers/gpu/drm/msm/dp/dp_display.h      |  1 +
 drivers/gpu/drm/msm/dp/dp_drm.c          |  3 +
 drivers/gpu/drm/msm/dp/dp_drm.h          |  2 +
 drivers/gpu/drm/msm/dp/dp_hpd.c          | 67 --------------------
 drivers/gpu/drm/msm/dp/dp_hpd.h          | 78 -----------------------
 drivers/gpu/drm/msm/dp/dp_panel.h        |  1 -
 drivers/gpu/drm/msm/dp/dp_power.c        |  2 +-
 drivers/gpu/drm/msm/dp/dp_power.h        |  3 +-
 drivers/usb/typec/altmodes/displayport.c | 10 +--
 include/drm/drm_connector.h              |  6 +-
 19 files changed, 88 insertions(+), 221 deletions(-)
 delete mode 100644 drivers/gpu/drm/msm/dp/dp_hpd.c
 delete mode 100644 drivers/gpu/drm/msm/dp/dp_hpd.h

-- 
2.35.1

