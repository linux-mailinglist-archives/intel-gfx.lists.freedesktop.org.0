Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E6615179A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE04D6EE04;
	Tue,  4 Feb 2020 09:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FCD06EE04
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:09 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id m16so21949001wrx.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GO697o/dRC2e5bk66tkFT0/e70IXPket6OYeHoidlyE=;
 b=fkQA7tqZrXJsHLAM3vY94OdbnrVyfKxfmAqx0rXGMmcWMkB11La7D3i0CwsZ2gFSZ7
 q0OuM5/urpjAoFdpCnZW8NZH3T3FhoyTpBhSIrnicLHSJ1ixHGjforuFcKfmAGsGtMS7
 jQDaSyWcBsNAuR2e/5PNVBMO/r0MYYUAFi454KKXm2LQpbDfoC1i2jRWqKOaSCYA3/XC
 5nw4jcLqeSwx8ToWIBjE/PAnfEU4CcbFV0Rcd+PUndua9GRcAMe6rk543P7VF2RYKvTe
 6R988iXd2lBN1Winn2IFRWoDXq4X9xcWdYQi5MEg2O678cr7Nl7tHAoS/s/giCBmq8hg
 vkvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GO697o/dRC2e5bk66tkFT0/e70IXPket6OYeHoidlyE=;
 b=IxhaMHBW2ADfMqqoYexe1PYjgYBSuZrLt4ECreDKg4TjnIh1RKkjVToyKygbB0VdL0
 AFoRS4BKKyhatpm7l2HVNwgv2GJGiGjsOogsDOBlgnafpsMc6SzO8VQkMYgoMcKeq8Vn
 xP5fQbLCIYxumAWCLFyZzpgurm9MBaJvtPsYhwD2whVex7kYW/3gb8F/JjETw6XgYf+x
 gUzOZWI9hcgAdHwjlDmVAdtYGYYvnRsIynRl9XuOYTzLlYkl4LmvXreO28G1AujVIFXl
 mUjP5Loi724rY82W6m4CB8sE149/ivLz+CbVOkWHupbPjDldGBbPdyZnHWyznPfGjaQ3
 HlFw==
X-Gm-Message-State: APjAAAVmzoIM/wAJMKaTnyJ0vK6eyzpke+L97CSLzsFh+2EMjGyJY341
 jiNooDnohDN9GJtEXQovO88=
X-Google-Smtp-Source: APXvYqzisE4naSVj6KQZEe32UOLCEXPTMbdauGkb1ch6kqsnxql6SLWnC8o0ICqPD8cDF3kPP9JecQ==
X-Received: by 2002:a5d:608f:: with SMTP id w15mr16135783wrt.20.1580807948154; 
 Tue, 04 Feb 2020 01:19:08 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:07 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:43 +0300
Message-Id: <20200204091855.24259-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: conversion to drm_device based
 logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset continues the conversion of printk based logging macros to
the struct drm_device based logging macros in drm/i915, this time
focusing on the i915/display folder. The patches were
achieved manually and using coccinelle.

Wambui Karuga (12):
  drm/i915/dp: convert to struct drm_device based logging macros.
  drm/i915/dp_link_training: convert to drm_device based logging macros.
  drm/i915/atomic: conversion to drm_device based logging macros.
  drm/i915/color: conversion to drm_device based logging macros.
  drm/i915/crt: automatic conversion to drm_device based logging macros.
  drm/i915/dp_aux_backlight: convert to drm_device based logging macros.
  drm/i915/dpll_mgr: convert to drm_device based logging macros.
  drm/i915/combo_phy: convert to struct drm_device logging macros.
  drm/i915/dp_mst: convert to drm_device based logging macros.
  drm/i915/dsi_vbt: convert to drm_device based logging macros.
  drm/i915/hdmi: convert to struct drm_device based logging macros.
  drm/i915/dpio_phy: convert to drm_device based logging macros.

 drivers/gpu/drm/i915/display/intel_atomic.c   |  23 +-
 drivers/gpu/drm/i915/display/intel_color.c    |   3 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |  23 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  49 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 320 +++++++++++-------
 .../drm/i915/display/intel_dp_aux_backlight.c |  72 ++--
 .../drm/i915/display/intel_dp_link_training.c |  75 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  30 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  28 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 254 ++++++++------
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  | 162 +++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 193 +++++++----
 12 files changed, 754 insertions(+), 478 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
