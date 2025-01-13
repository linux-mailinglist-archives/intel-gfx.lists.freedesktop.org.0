Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49839A0B4D5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:54:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB82B10E638;
	Mon, 13 Jan 2025 10:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QLq/BkM/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E2910E634;
 Mon, 13 Jan 2025 10:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736765642; x=1768301642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SrLrVeMxCPV8ackzAItCH1zkUwstF4Vv5iDiAm2dvjo=;
 b=QLq/BkM/c9ykDiTMU2taIMGfuloZzf4UZCgBf5Ol6h4v63qu12PVKrl6
 B6oA5DjwOqhqOrafWOozSY7Kr0KNPUJ24B9iJIdmElRQ39QWiQo/RhThR
 Lfj7GScAzBIpWfdJcs9rUnShPpfxGFcrb+PhMxcIu3wV/3WbSi/3UTCPN
 42iqwbaFSWqs2Kjfz9WmIxDtHhbi8KUhNQLtEZ3ZDphbkCf9vCz+zAHs5
 t9NMuoEVRgE4von4b9CQ2DRLmQquJZfRa5heGhboVPoLkxgr2fskoaa5q
 PSj8tx3XVc670Zgsnrtt1c+Wc9gnKuUk1dZbGlDgkYc8Xrwj7PHqCCJqD w==;
X-CSE-ConnectionGUID: nWTwN4nhSbOiUrfuRPRnwA==
X-CSE-MsgGUID: SkjCE7+/TVmpGwvhC+36vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="54565089"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="54565089"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:54:02 -0800
X-CSE-ConnectionGUID: XrOx8FebTkCBGV17AIWMlA==
X-CSE-MsgGUID: ElXzYQCRSZak2Uby5rFkNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104954923"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 13 Jan 2025 02:54:00 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/6]  Introduce drm sharpness property
Date: Mon, 13 Jan 2025 16:19:30 +0530
Message-Id: <20250113104936.1338290-1-nemesa.garg@intel.com>
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
 14 files changed, 509 insertions(+), 16 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h

-- 
2.25.1

