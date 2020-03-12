Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6208018390D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 19:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A2C16E255;
	Thu, 12 Mar 2020 18:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33C16E255
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 18:56:34 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id na17so3817281pjb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=sei44eoljO70BQTRmM/UvmF8MrB7eTx6LtWSPNoZXds=;
 b=KxXhraTRYvbP6q/v3MOA1GEiCSzG3LudoXZy2DXZQrHJDt/gha0YdQwnS6nMDp7gcH
 efZSqSb3CpTXZNTe2F1559U+nYlcqB+4V79EWQo+lcjlD3KxXgAjgJstD3vW3IhTjYSO
 i7fVtSUXzr5cHQjlF+V+SZtHlwq/pYKTmakQ+245oRzZG9wgbXmJ2DIQAktYl+CZ0sN5
 mzqLs3SnstAJfCnP711IpzNM7DOs61XZezkYZ9JoQtu0mg0rzH/SIKKPifg2xQwdL9tc
 4w76XECPdz+3NVC+c2hmF/plc5spgHTGEU2RyJYqeDGpOK6BNcsOfjiPG0THuqEnW5jl
 JDtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=sei44eoljO70BQTRmM/UvmF8MrB7eTx6LtWSPNoZXds=;
 b=SxA9A5DVKd3ZJzPvPUk/StyzTX+WsUKkc158Hr3x67LwxEkeu8rIPzQ38My+qGG3iJ
 6QfVBqzpEaU0ZKwbtbv3Zv4op05fNghd4E8OJjOXaNE4v4SawNoPGHJe5BhcN5qRe3tA
 GIdgGosmaZHRsxHCPXGj8v6NGTfhMxTPFN6a8c+kLLzXiREI+rUw8lGlJEKaWsJ2V4Vi
 yJRIN38//2075+VtJRyN+VqwnqPjE6Xw1hOAK4OtiiVMERQh91sx49d3Q4Rc1AVugbL9
 XOdTYbPEMRWb5Km6nJ4xNRcEPwK5n6quDjegTTte4BsAiftSA+pjhRrUt8DsbWoePUVN
 OCyA==
X-Gm-Message-State: ANhLgQ31hOpLpUztaM9cUX8/CgeY7d3D7vNTm2eCCrcmc+iD/xTeRB4E
 AmjTpMTEfQxwYv8yzBHCHV095tJ+4xZx
X-Google-Smtp-Source: ADFU+vuYLz7wtRk2dXjXy2q6XhwL+1erGQc9nvzXs6bt9R+vf+zDpaz3AfTjx5/wkKQXoxHsgkgKTjeMI8X9
X-Received: by 2002:a17:90a:30c7:: with SMTP id
 h65mr5835404pjb.44.1584039393995; 
 Thu, 12 Mar 2020 11:56:33 -0700 (PDT)
Date: Thu, 12 Mar 2020 11:56:24 -0700
Message-Id: <20200312185629.141280-1-rajatja@google.com>
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
Subject: [Intel-gfx] [PATCH v9 0/5] drm/i915 Support for integrated privacy
 screen
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
