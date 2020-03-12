Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA70182665
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 01:57:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3CB6E9E1;
	Thu, 12 Mar 2020 00:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860DF6E9CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 00:57:28 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id w4so2255090pjt.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 17:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=sei44eoljO70BQTRmM/UvmF8MrB7eTx6LtWSPNoZXds=;
 b=T4T7iRekar5ZIxwrvQxe3HvHCJpb2oLeUGHCNohdw8sqcT+F+yCqOpLBpmBLtwukB5
 zXnW2C571C8qx/GVByfeMpQGiEjtzCaVS6MyjfOqOxsC/S1K5BahZAs60IZ0XNE1G2Hz
 oWJaah+eorGWc/Gt+SV18LNHqaiiU7Ra/rQUiDyJz8YpOmpHQf881pLXWqWWTnrIG9xp
 xaaCJrqGivEdS4NX+PJnxMUrZ2L9v0l/E/aR0fWIaps4HDYOx3CNbMtLQUXtRFM+pN3C
 rwQ1cvvbDRLCYiycdpkjaQ4IDRN4XrCb0Z7EeC7sdHjyn/o6xQSZWmo2mqLHspas4qWW
 mTDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=sei44eoljO70BQTRmM/UvmF8MrB7eTx6LtWSPNoZXds=;
 b=hWp15XwtlcvrFYjqvvLSwTjsfaWqj3XueFDYdmS8cvZ+xPqQZT615f9P8RuHeL3dpE
 hVCnzW/HagR5kvHGVn5DudJfF4p1CoLJemVdkHNA3SPVbHFXuYi0T5YfC5r1FZgwAzVX
 wkgIbOdHqPbm1XxwWZG9HBx+xKSfws9Te9JBl32PkY4Ipo78+5orPvvYYf+lkHXwk/pz
 105WP/xwV8xKS03Sh5UCFf2cpc+ry+fEEniA1hi29PgjB9az91NKBtjoi+ktjX8wcrSv
 RgTnl50ccWJGjYWHuKLxU6m8meitI3qYqFLO2qdNEuhYXtPFVHykaJVJls+7Dv+bDPWF
 6/hw==
X-Gm-Message-State: ANhLgQ03WRXQabLm5SAdT1O9XOYjRWqdlQma9J7c5WnohG5vO2OBpPsR
 BoIwPazm8CPgRVGiGPNPTqQ7X/TlYDyo
X-Google-Smtp-Source: ADFU+vueKqfD5oH+ZMgo/VSjBEC/kZSY8+bu/uN24FhFc6J20lIsRGi+drzdDsHdvjfQ+t/HUa/T8WAxDlOn
X-Received: by 2002:a17:90b:1989:: with SMTP id
 mv9mr1462161pjb.72.1583974647951; 
 Wed, 11 Mar 2020 17:57:27 -0700 (PDT)
Date: Wed, 11 Mar 2020 17:57:17 -0700
Message-Id: <20200312005722.48803-1-rajatja@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
From: Rajat Jain <rajatja@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 "=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=" <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, 
 "=?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?=" <jose.souza@intel.com>,
 linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 gregkh@linuxfoundation.org, mathewk@google.com, 
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Pavel Machek <pavel@denx.de>, seanpaul@google.com,
 Duncan Laurie <dlaurie@google.com>, 
 jsbarnes@google.com, Thierry Reding <thierry.reding@gmail.com>,
 mpearson@lenovo.com, Nitin Joshi1 <njoshi1@lenovo.com>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>, 
 Tomoki Maruichi <maruichit@lenovo.com>
Subject: [Intel-gfx] [PATCH v8 0/5] drm/i915: Support for integrated privacy
 screens
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset adds support for integrated privacy screen on some laptops
using the ACPI methods to detect and control the feature.

Rajat Jain (5):
  intel_acpi: Rename drm_dev local variable to dev
  drm/connector: Add support for privacy-screen property
  drm/i915: Lookup and attach ACPI device node for connectors
  drm/i915: Add helper code for ACPI privacy screen
  drm/i915: Enable support for integrated privacy screen

 drivers/gpu/drm/drm_atomic_uapi.c             |   4 +
 drivers/gpu/drm/drm_connector.c               |  51 +++++
 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_acpi.c     |  30 ++-
 drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  48 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +
 .../drm/i915/display/intel_privacy_screen.c   | 184 ++++++++++++++++++
 .../drm/i915/display/intel_privacy_screen.h   |  27 +++
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 include/drm/drm_connector.h                   |  24 +++
 13 files changed, 382 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_privacy_screen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_privacy_screen.h

-- 
2.25.1.481.gfbce0eb801-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
