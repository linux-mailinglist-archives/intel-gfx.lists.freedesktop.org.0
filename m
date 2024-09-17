Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BA297ADD2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 11:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7172C10E447;
	Tue, 17 Sep 2024 09:26:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RjIelsm6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959EA10E447;
 Tue, 17 Sep 2024 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726565213; x=1758101213;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uB/PgTi3mMpr15zn5U0JX8fPkgY7CMKT0DWb3xRBAmg=;
 b=RjIelsm6pw803OvMV9IKTT2NYrXvTVGQzJWJmWXnq5zhZjeeT6t3MYWD
 2IBhDq6DhoM2jG+qLG1wQzKlC2aF6mvcPDpbMxCcB3w56ERz+P6whwCkT
 slocoW/rD+42Fef+ChqowwWx7lDjClSQ/3dnsWcHUs3W0z4vXPZ8fpbWV
 8ORJp1sC1LB8JlaISqEi4U5JhkK6tGiVNu9MrgWCBoZBa4vkHXRoj+d4z
 9PUXNBddFYEChR/pJ+Fg/3hTggiEFouD2YGqaCIOwLdPz5Ca3npbo7wNt
 G/6sqj/s4/AE7U3Bi5+SS1sGuFb6riueXu4jCW6tNWPVnRykTksOIMnSA Q==;
X-CSE-ConnectionGUID: goIW44q1TMSERLx0bKSx/Q==
X-CSE-MsgGUID: 5EYP+PUcRCaSfI82e5GKbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36789028"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36789028"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 02:26:52 -0700
X-CSE-ConnectionGUID: +9VjOmE1SVipFPQtmaR1JA==
X-CSE-MsgGUID: rwH0X3gSR02zy+vJ+/rTjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="99815974"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa002.jf.intel.com with ESMTP; 17 Sep 2024 02:26:50 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/5]  Introduce drm sharpness property
Date: Tue, 17 Sep 2024 14:56:29 +0530
Message-Id: <20240917092634.1109572-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

 Many a times images are blurred or upscaled content is also not as
crisp as original rendered image. Traditional sharpening techniques often
apply a uniform level of enhancement across entire image, which sometimes
result in over-sharpening of some areas and potential loss of natural details. 

Intel has come up with Display Engine based adaptive sharpening filter 
with minimal power and performance impact. From LNL onwards, the Display
hardware can use one of the pipe scaler for adaptive sharpness filter.
This can be used for both gaming and non-gaming use cases like photos,
image viewing. It works on a region of pixels depending on the tap size.

This is an attempt to introduce an adaptive sharpness solution which
helps in improving the image quality. For this new CRTC property is added.
The user can set this property with desired sharpness strength value with
0-255. A value of 1 representing minimum sharpening strength and 255
representing maximum sharpness strength. A strength value of 0 means no
sharpening or sharpening feature disabled.
It works on a region of pixels depending on the tap size. The coefficients
are used to generate an alpha value which is used to blend the sharpened
image to original image.
 
Middleware MR link: https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3665
IGT patchwork link: https://patchwork.freedesktop.org/series/130218/

Continuing discussions from:  https://patchwork.freedesktop.org/series/129888/

Nemesa Garg (5):
  drm: Introduce sharpness strength property
  drm/i915/display: Compute the scaler filter coefficients
  drm/i915/display: Enable the second scaler for sharpness
  drm/i915/display: Add registers and compute the strength
  drm/i915/display: Load the lut values and enable sharpness

 drivers/gpu/drm/drm_atomic_uapi.c             |   4 +
 drivers/gpu/drm/drm_crtc.c                    |  35 +++
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 .../drm/i915/display/intel_modeset_verify.c   |   1 +
 drivers/gpu/drm/i915/display/intel_panel.c    |   7 +
 .../drm/i915/display/intel_sharpness_filter.c | 226 ++++++++++++++++++
 .../drm/i915/display/intel_sharpness_filter.h |  44 ++++
 drivers/gpu/drm/i915/display/skl_scaler.c     |  91 ++++++-
 drivers/gpu/drm/i915/display/skl_scaler.h     |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  19 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 include/drm/drm_crtc.h                        |  17 ++
 15 files changed, 461 insertions(+), 14 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_sharpness_filter.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_sharpness_filter.h

-- 
2.25.1

