Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B855482EEF5
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0856D10E568;
	Tue, 16 Jan 2024 12:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E4C10E2BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 16:06:38 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-336c9acec03so7434546f8f.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 08:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1705334797; x=1705939597; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=2nfzXYtohis0OwCD+AmIl/qoZqPN5SyFIj+AeVDGrUY=;
 b=Vib1ZBP/CfjnsPKUneq3MhVGzPIEI7vK/Ip1teCt5rtjTfkszJoqZ2Dx6ykC+ReZB+
 yCPqJeUbID0JHxCM2GTzdUapMBh2q6MSiZyV+4B+u2ESmElJPIBZZljH/pMfN5/WYvlC
 QDAO2EnCGOlF6b2CBE6lmfWQQKHnCzeQN5NEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705334797; x=1705939597;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2nfzXYtohis0OwCD+AmIl/qoZqPN5SyFIj+AeVDGrUY=;
 b=luhv/mvc59z9quDSS2+Xhxn1OAqigbTy11gEJ/jNdX7ywHSbIWIy28xIzwTsCsJd1h
 BrqKEPlF5R9VBNCjfbnjAdWhKRPZtG7bYl5Appcwz7gNCxuWVcwSFKN735lJqNuTCc2D
 SdhOCnNbUGhQWsz9Mwr+/pFP0Q4/y+z71L7cvPoJoXrC0TgwUbmdYhBu0oUY38G01u/X
 rJrUI5cLaU/jCkWfmCwz6lM2U9t5Q/HB2IN8RFfW3BPLtyvzMKpMdwFi4ZHZIivd5cqO
 qwMkVDKS4+WpTFMGb/dM7hvsYUxfrAFWO6Mf+0vnlkL8NR0ERbRfB7FVJfWcvg0RyCUD
 KJxA==
X-Gm-Message-State: AOJu0YzA3207ug8TQFf5Av03WM1gN7375KIXchstfEhX/q8k+ysJMUzU
 rz2lljm+7RqoyM7dEAE3ueOkj21sNGg+cg==
X-Google-Smtp-Source: AGHT+IEUUc5iRjuXbMJ2dngkv+RJCZlkEQjqC7ossePXJRfMhg+lS/5kV7bU5iCCs/lMM5nEnzQUkw==
X-Received: by 2002:a7b:cbc7:0:b0:40e:6707:b758 with SMTP id
 n7-20020a7bcbc7000000b0040e6707b758mr2317948wmi.178.1705334796754; 
 Mon, 15 Jan 2024 08:06:36 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 l22-20020a05600c4f1600b0040d6b91efd9sm20174140wmq.44.2024.01.15.08.06.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jan 2024 08:06:36 -0800 (PST)
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
Subject: [PATCH v2 0/4] New DRM properties for output color format
Date: Mon, 15 Jan 2024 16:05:50 +0000
Message-ID: <20240115160554.720247-1-andri@yngvason.is>
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

After some discussion, we decided to drop the "active color format"
property and rename the "preferred color format" property to "force
color format". 

The user can probe available color formats in combination with other
properties using TEST_ONLY commits.

v1: https://lore.kernel.org/dri-devel/20240109181104.1670304-1-andri@yngvason.is/

v2
 - Dropped "active color format"
 - Replaced "preferred color format" with "force color format"


Werner Sembach (4):
  drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check
  drm/uAPI: Add "force color format" drm property as setting for
    userspace
  drm/amd/display: Add handling for new "force color format" property
  drm/i915/display: Add handling for new "force color format" property

 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 67 ++++++++++++++++---
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  4 ++
 drivers/gpu/drm/drm_atomic_helper.c           |  4 ++
 drivers/gpu/drm/drm_atomic_uapi.c             |  4 ++
 drivers/gpu/drm/drm_connector.c               | 48 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 35 ++++++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  5 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 29 ++++++--
 include/drm/drm_connector.h                   | 16 +++++
 9 files changed, 190 insertions(+), 22 deletions(-)


base-commit: 052d534373b7ed33712a63d5e17b2b6cdbce84fd
-- 
2.43.0

