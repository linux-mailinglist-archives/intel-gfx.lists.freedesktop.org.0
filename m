Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA33199C848
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 13:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD6110E24A;
	Mon, 14 Oct 2024 11:12:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Km1r6qke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1C210E24A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 11:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728904339; x=1760440339;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D/8LMb/DeU7HShewhDXdojQzar0i5P+5fLzYx+OgeCo=;
 b=Km1r6qkePmV0Tnp7D0lORPhT+agcRv/1i2WzClvR3Pe28uy6n+43SCBK
 JCCgfB/71wiUO9wiSKabL4SEF6ESzS9Kq8kPxToV574f0TZZbUaRj94qL
 4Bgk3v8xJa/XRqcReLSdRIDI46ms+0BwKNRbnaeAiNOtgFI/m3mgPeDer
 cLDJz0dXEcbEEiWuQ7GKQO5cqBadAKE4LSLoW7laqB7cjGkJjC34dCMhf
 GV3omVmUUvu6L1aw1iEoCSv4nhSUnRuyS8JxENREJrAYSnPucaLqVz0KD
 4rMsbENnLVOLJiii4wKMFp+EM/wzKkADCEUaYu1KV1VBza3o1UeK5m2/D A==;
X-CSE-ConnectionGUID: nL1bmqBJRq6IQgTWIj3gVw==
X-CSE-MsgGUID: FcBrwYODT0+fiYobgOQ4lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="28377941"
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="28377941"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 04:12:19 -0700
X-CSE-ConnectionGUID: c1QQpRfaTmKTAgVzedajBA==
X-CSE-MsgGUID: gM7B/KMqThKIdK+szxivwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77473303"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa010.jf.intel.com with ESMTP; 14 Oct 2024 04:12:17 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/5]  Introduce drm sharpness property
Date: Mon, 14 Oct 2024 16:42:57 +0530
Message-Id: <20241014111302.95362-1-nemesa.garg@intel.com>
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
 drivers/gpu/drm/i915/display/intel_casf.c     | 249 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h     |  24 ++
 .../gpu/drm/i915/display/intel_casf_regs.h    |  36 +++
 drivers/gpu/drm/i915/display/intel_crtc.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  |  26 +-
 .../drm/i915/display/intel_display_types.h    |  16 ++
 .../drm/i915/display/intel_modeset_verify.c   |   2 +
 drivers/gpu/drm/i915/display/intel_panel.c    |   7 +
 drivers/gpu/drm/i915/display/skl_scaler.c     |  95 ++++++-
 drivers/gpu/drm/i915/display/skl_scaler.h     |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |   2 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 include/drm/drm_crtc.h                        |  17 ++
 16 files changed, 504 insertions(+), 15 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h

-- 
2.25.1

