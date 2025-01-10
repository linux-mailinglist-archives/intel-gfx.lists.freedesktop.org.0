Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F15AA08867
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 07:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF00910EFD4;
	Fri, 10 Jan 2025 06:37:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LD6RqcxY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816D510EFD4;
 Fri, 10 Jan 2025 06:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736491038; x=1768027038;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W2r3IJobJSzBL7UUrcs2P/IA/40Nilst7iyI4zA5u6I=;
 b=LD6RqcxYnRdh26iUgh73uR4reUvb1zLvlSSoaHQYPv9mXuHaGzCb3RKg
 jJr1kCJpbLY7Y9B8qSSa7PjZ9VwbUsLwYyqnC9YyE3xiM1QyuFYBc5Qm9
 mJz9e2g5DihqPDOTMkJondI4kvN88nw4GL8QyMdPD4WM6MVA2XnUKEHmJ
 Ic1C2hKQmSf/YfFes3cJomrLHM40pp+mc/tNQ5winjOcHxIgUIUi9UhdW
 TWeGXZqNvY3h/oTXtIHpqJQpLwiYF4ELfwkcU7Z8nSk0idvit5B1Ru6Rs
 LkSAX1HpO7f3xVD5Brd4lDjOFIiXWj4QHXGIDlQLPj42MuI1Vr27BZb26 w==;
X-CSE-ConnectionGUID: 7JpX/70FQd6OLBVVP7/bZQ==
X-CSE-MsgGUID: 9WNTNA8WTRa3eqrV/UuY4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="24380427"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="24380427"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 22:37:18 -0800
X-CSE-ConnectionGUID: N2izwmVCSbS5+ymF54nD8A==
X-CSE-MsgGUID: 7G/bjLzvSquiC8WsDTNnZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="134477938"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa002.jf.intel.com with ESMTP; 09 Jan 2025 22:37:15 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/6]  Introduce drm sharpness property
Date: Fri, 10 Jan 2025 12:02:38 +0530
Message-Id: <20250110063244.1129552-1-nemesa.garg@intel.com>
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

Nemesa Garg (6):
  drm: Introduce sharpness strength property
  drm/i915/display: Compute the scaler filter coefficients
  drm/i915/display: Configure the scaler
  drm/i915/display: Enable the second scaler for sharpness
  drm/i915/display: Add registers and compute the strength
  drm/i915/display: Load the lut values and enable sharpness

 drivers/gpu/drm/drm_atomic_uapi.c             |   4 +
 drivers/gpu/drm/drm_crtc.c                    |  35 +++
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_casf.c     | 259 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h     |  24 ++
 .../gpu/drm/i915/display/intel_casf_regs.h    |  39 +++
 drivers/gpu/drm/i915/display/intel_crtc.c     |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  |  19 +-
 .../drm/i915/display/intel_display_types.h    |  16 ++
 drivers/gpu/drm/i915/display/intel_pfit.c     |   6 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 100 ++++++-
 drivers/gpu/drm/i915/display/skl_scaler.h     |   1 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 include/drm/drm_crtc.h                        |  17 ++
 14 files changed, 508 insertions(+), 17 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h

-- 
2.25.1

