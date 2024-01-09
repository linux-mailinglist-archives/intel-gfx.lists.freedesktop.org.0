Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D7882EEFE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4B510E550;
	Tue, 16 Jan 2024 12:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7766510E48F
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 18:11:18 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id
 2adb3069b0e04-50e80d40a41so3966341e87.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jan 2024 10:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1704823876; x=1705428676; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/P8n3FbWL68F6TxA0R2WkA/gfn2dX46Rf9mM5caQ3iY=;
 b=dVtup584BLfQj2OKFRtAVOiOBbOJqtunsTLshqLoz9yFkX2a//5a4jUf91P8PzG6h3
 Ry3fZXuiBwOFBwNRcQEOI9tpgw+MFuuoPeZwBdyMcRl6nuzO8tdJTARfOy/TYuhFpqmV
 L1lkCapC0ebmmptVIXbilIg7lmb90hE4JfXbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704823876; x=1705428676;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/P8n3FbWL68F6TxA0R2WkA/gfn2dX46Rf9mM5caQ3iY=;
 b=Dyu6g2/6Nbp2TmJf1WX7wkMYujIPx/2Zjrui23Hy5x2lSbKL4gf+e12cBBJ74WgAvx
 Hx/eRMIrl/etOlh4OzN8XP33vM67ZRI2zZ3m9wJZp5e+Cx5fBpud30GEntj3or0Zg5Qs
 F9YICCzxXmbLobDQTp1nSwyFFtMOZV+tZj/mhE4nWloGZkM8w1r0+uk9IMsrQPXIgw77
 9rj8SfBxHmfXX2J7Cnf+xBwD2Icf9BqW6AURHPZuI1yAa3zbC50o1HMjo6TR0n9MNTkW
 2tuFslAbDZY35c+Jx4Oj6TQBr5/sF4X18uKZSbD0LzXryKOmFrJ/XBLtn6GqcK51CBNW
 c2dg==
X-Gm-Message-State: AOJu0YxpOAenmRvbWOlr+Y2PSRBM9VLS8kI/SyAk0D5740OVNGghpD3c
 Pv5fBbLXuihI2B1cxYJBGRtTkqBTbXJLXA==
X-Google-Smtp-Source: AGHT+IHhF9LaN3kubE12wa/Q1/CdohNcShPSp8gh5kvPO8qnqS9yArqftswDYKp4dF2WmIezKVMLgw==
X-Received: by 2002:a05:6512:3d0c:b0:50e:a6f8:aacf with SMTP id
 d12-20020a0565123d0c00b0050ea6f8aacfmr3282849lfv.14.1704823876174; 
 Tue, 09 Jan 2024 10:11:16 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 n25-20020a05600c3b9900b0040e527602c8sm2104579wms.9.2024.01.09.10.11.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jan 2024 10:11:15 -0800 (PST)
From: Andri Yngvason <andri@yngvason.is>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 0/7] New DRM properties for output color format
Date: Tue,  9 Jan 2024 18:10:57 +0000
Message-ID: <20240109181104.1670304-1-andri@yngvason.is>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Jan 2024 12:28:11 +0000
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
Cc: amd-gfx@lists.freedesktop.org, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andri Yngvason <andri@yngvason.is>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a subset of patches, originally submitted by Werner Sembach
titled: New uAPI drm properties for color management [1]

I've rebased against the current master branch, made modifications where
needed, and tested with both HDMI and DP on both Intel and AMD hardware,
using modified sway [2] and wlroots [3].

The original patch set added the following properties:
 - active bpc
 - active color format
 - active color range
 - preferred color format
and consolidated "Broadcast RGB" into a single property.

I've elected to only include active and preferred color format in this
patch set as I've very little interest in the other properties and,
hopefully, this will be easier for others to review.

[1]: https://lore.kernel.org/dri-devel/20210630151018.330354-1-wse@tuxedocomputers.com/
[2]: https://github.com/swaywm/sway/pull/7903
[3]: https://gitlab.freedesktop.org/wlroots/wlroots/-/merge_requests/4509

Werner Sembach (7):
  drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check
  drm/uAPI: Add "active color format" drm property as feedback for
    userspace
  drm/amd/display: Add handling for new "active color format" property
  drm/i915/display: Add handling for new "active color format" property
  drm/uAPI: Add "preferred color format" drm property as setting for
    userspace
  drm/amd/display: Add handling for new "preferred color format"
    property
  drm/i915/display: Add handling for new "preferred color format"
    property

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  75 ++++++++++--
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |   8 ++
 drivers/gpu/drm/drm_atomic_helper.c           |   4 +
 drivers/gpu/drm/drm_atomic_uapi.c             |   4 +
 drivers/gpu/drm/drm_connector.c               | 111 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  33 ++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  23 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  10 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  16 ++-
 include/drm/drm_connector.h                   |  27 +++++
 10 files changed, 289 insertions(+), 22 deletions(-)


base-commit: 1f874787ed9a2d78ed59cb21d0d90ac0178eceb0
-- 
2.43.0

