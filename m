Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 442A5A6BF3F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 17:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F29910E7ED;
	Fri, 21 Mar 2025 16:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SauzIO8O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8445410E7ED;
 Fri, 21 Mar 2025 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742573495; x=1774109495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UZ79n/y7iQ6BRHTI0eMHUWVcB77VYPXlNREya2XktOA=;
 b=SauzIO8O1v9ZouvgB1J0D3PE+UzftWLBIrUjL4xOlVdSVBv3HeDW+MId
 9LEo84ooKRuRLmVJysPp9fboe2jv8JJeg7K2e0WhbVrOi9GitvBw9TjIN
 jsipteRKAFEVg9Nj3lppD/eESp9UXq+9PaB+h6W7BD8geq9zroFdoYAtp
 JuvhUP49EZFjT4U2kuFgMh+VLIz0UFWPcP/MlJdQfE9iFxXLWJcZa0YyJ
 qUfFUf5sPZ+TqhX1tfbZPnRjUDmDp/mymlOkmcgQIHlWJbaVwCvnKwcXX
 wJAFOjD9U5OrVc1Z6+0HGmacTSuWVzTJHkbka6UVDzkkjVyxx+24XU1x2 w==;
X-CSE-ConnectionGUID: 1avfL4ziRN2g3HuttNZNqw==
X-CSE-MsgGUID: W29lv2TpQyiuMsNmPas9XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="66308439"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="66308439"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 09:11:35 -0700
X-CSE-ConnectionGUID: lF4j4QBLTW6w8d5qXN9yoQ==
X-CSE-MsgGUID: S7nVIqmfRTW9/Cv+Vz7taA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128554900"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa004.fm.intel.com with ESMTP; 21 Mar 2025 09:11:33 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 00/12]  Introduce drm sharpness property
Date: Fri, 21 Mar 2025 21:36:16 +0530
Message-Id: <20250321160628.2663912-1-nemesa.garg@intel.com>
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

Nemesa Garg (12):
  drm/i915/display: Introduce sharpness strength property
  drm/i915/display: Introduce HAS_CASF for sharpness support
  drm/i915/display: Add sharpness strength and winsize
  drm/i915/display: Add filter lut values
  drm/i915/display: Compute the scaler filter
  drm/i915/display: Add and compute scaler parameter
  drm/i915/display: Configure the second scaler for
  drm/i915/display: Compare the sharpness state
  drm/i915/display: Set a scaler mode
  drm/i915/display: Write and read back the casf registers
  drm/i915/display: Enable/disable casf
  drm/i915/display: Expose sharpness strength property

 drivers/gpu/drm/drm_atomic_uapi.c             |   4 +
 drivers/gpu/drm/drm_crtc.c                    |  35 +++
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_casf.c     | 277 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h     |  24 ++
 .../gpu/drm/i915/display/intel_casf_regs.h    |  40 +++
 drivers/gpu/drm/i915/display/intel_crtc.c     |   3 +
 .../drm/i915/display/intel_crtc_state_dump.c  |   7 +
 drivers/gpu/drm/i915/display/intel_display.c  |  38 ++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  15 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |  93 +++++-
 drivers/gpu/drm/i915/display/skl_scaler.h     |   1 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 include/drm/drm_crtc.h                        |  17 ++
 15 files changed, 544 insertions(+), 13 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h

-- 
2.25.1

