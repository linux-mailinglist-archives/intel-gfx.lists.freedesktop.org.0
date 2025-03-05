Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 054EEA4FFC7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 14:14:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A353510E72C;
	Wed,  5 Mar 2025 13:14:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KjJ/2aDP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37E8898A4;
 Wed,  5 Mar 2025 13:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741180442; x=1772716442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GHjjCPjJH6ycTEjuu0vjlJkbIBGseDIzi3cXhgwjlmY=;
 b=KjJ/2aDPe4lAAM50e2bDcCaNLcJFVkR/mTKx1UtTkGj9kapa+iX0rOV2
 VxSN/1vPXbmYJUBWJTM3AWAL+2KXL4D4poyDeUhVOM7DpQBYwUR3RTWP0
 sLefpbnkI+pXTZIROGjQEEtnOc73aUL+i4OqbirYCXur0eBku8qk79vDH
 2yJxo46uHyAP0laMQ7sNFWGOCls+w2Sas6LjOkyJBkxtPTldfm5z4nCe6
 ISUNtzsH2uJ9J2LMpnONP+DlPZaODI1SU+p/V0BiN/DtIrqH9TqUeMv+K
 c4wEyKVKCnmsxT9p3UUMDlppfuLJU4KzqNBxq65Pv6L9aDYujbowAuz+c w==;
X-CSE-ConnectionGUID: AAMdAY/ZRa6QL37aUWvHlA==
X-CSE-MsgGUID: d9yHMPPTQbyojUrM0Uk3GQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59685351"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="59685351"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:14:01 -0800
X-CSE-ConnectionGUID: GzhPBLbQTQeVekq5vXvokw==
X-CSE-MsgGUID: xY3Xr0HHT12ThGRmhoH4ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118701058"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa006.jf.intel.com with ESMTP; 05 Mar 2025 05:13:53 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, harry.wentland@amd.com,
 pekka.paalanen@haloniitty.fi, sebastian.wick@redhat.com, jadahl@redhat.com,
 mwen@igalia.com, contact@emersion.fr, naveen1.kumar@intel.com,
 dmitry.baryshkov@linaro.org, Uma Shankar <uma.shankar@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Shashank Sharma <shashank.sharma@amd.com>,
 Alexander Goins <agoins@nvidia.com>, Joshua Ashton <joshua@froggi.es>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <mdaenzer@redhat.com>,
 Aleix Pol <aleixpol@kde.org>, Xaver Hugl <xaver.hugl@gmail.com>,
 Victoria Brekenfeld <victoria@system76.com>, Sima <daniel@ffwll.ch>,
 Naseer Ahmed <quic_naseer@quicinc.com>,
 Christopher Braga <quic_cbraga@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Arthur Grillo <arthurgrillo@riseup.net>, Hector Martin <marcan@marcan.st>,
 Liviu Dudau <Liviu.Dudau@arm.com>,
 Sasha McIntosh <sashamcintosh@google.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Subject: [v3 00/23] Plane Color Pipeline support for Intel platforms
Date: Wed,  5 Mar 2025 18:55:45 +0530
Message-ID: <20250305132608.2379253-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

This series intends to add support for Plane Color Management for
Intel platforms. This is based on the design which has been agreed
upon by the community. Series implementing the design for generic
DRM core has been sent out by Harry Wentland and is under review
below:
https://patchwork.freedesktop.org/series/123446/

The base work of above series is squashed under 1 patch and support
for Intel platform is added on top of it.
Any reviews on the original core design is expected to be done in 
Harry's series to avoid any forking of the discussion.

Changes added on core design:

1. Implemented a HW capability property to expose segmented luts.
drm: Add Color lut range attributes
drm: Add Color ops capability property
drm: Define helper to initialize segmented 1D LUT

This helps in generically defining the hardware lut capabilities,
lut distribution, precision, segmented or PWL LUTS.

2. Added support for enhanced prescision, 3x3 matrix and 1d LUT:
drm: Add Enhanced LUT precision structure
drm: Add support for 3x3 CTM
drm: Add 1D LUT color op

On top of this base work for DRM core plane color pipeline design,
implementation is done for Intel hardware platforms. Below patches
include the same:

drm/i915: Add identifiers for intel color blocks
drm/i915: Add intel_color_op
drm/i915/color: Add helper to allocate intel colorop
drm/i915/color: Add helper to create intel colorop
drm/i915/color: Create a transfer function color pipeline
drm/i915/color: Add and attach COLORPIPELINE plane property
drm/i915/color: Add framework to set colorop
drm/i915/color: Add callbacks to set plane CTM
drm/i915/color: Add framework to program PRE/POST CSC LUT
drm/i915/color: Enable Plane Color Pipelines
drm/i915: Define segmented Lut and add capabilities to colorop
drm/i915/color: Add plane CTM callback for TGL and beyond
drm/i915: Add register definitions for Plane Degamma
drm/i915: Add register definitions for Plane Post CSC
drm/i915/color: Program Pre-CSC registers
drm/i915/xelpd: Program Plane Post CSC Registers

IGT Changes to validate the same have been implemented and can be found
in the below github repository:
https://github.com/ckborah/igt-sandbox/tree/amd-intel-color-pipeline-v5-new_seg

Changes in v2:
   - Added documentation for hardware capability detection for segmented luts
   - Added documentation for lut computation in userspace based on
     hardware caps
   - Updated drm_color_lut_range data structure and handling
   - Enhanced the structure to avoid ambiguity and cater to varying
     hardware implementations of 1D Lut blocks
   - replaced drm_color_lut_ext with drm_color_lut32
   - Changed namespace for drm_color_lut_range flags (Sebastien)
   - Program super fine post csc gamma lut segment for Intel hardware

Changes in v3:
   - Rebased on latest plane color pipeline series (v7) from AMD
   - Updated documentation for 3x3 CTM colorop (Dmitry)
   - Fixed documentation for multi segmented 1D lut (Dmitry)
   - Squashed changes for 1d LUT helpers (Dmitry)

ToDo:
   - Implement Checks for sanity of hardware capability structure
   - Implement and Enhance Checks for user data for Lut Blob
   - Implement post blending color API's

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Cc: Simon Ser <contact@emersion.fr>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Melissa Wen <mwen@igalia.com>
Cc: Jonas Ådahl <jadahl@redhat.com>
Cc: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Shashank Sharma <shashank.sharma@amd.com>
Cc: Alexander Goins <agoins@nvidia.com>
Cc: Joshua Ashton <joshua@froggi.es>
Cc: Michel Dänzer <mdaenzer@redhat.com>
Cc: Aleix Pol <aleixpol@kde.org>
Cc: Xaver Hugl <xaver.hugl@gmail.com>
Cc: Victoria Brekenfeld <victoria@system76.com>
Cc: Sima <daniel@ffwll.ch>
Cc: Naseer Ahmed <quic_naseer@quicinc.com>
Cc: Christopher Braga <quic_cbraga@quicinc.com>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Arthur Grillo <arthurgrillo@riseup.net>
Cc: Hector Martin <marcan@marcan.st>
Cc: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Sasha McIntosh <sashamcintosh@google.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Chaitanya Kumar Borah (12):
  drm: Add support for 3x3 CTM
  drm: Add 1D LUT multi-segmented color op
  drm/i915: Add identifiers for intel color blocks
  drm/i915: Add intel_color_op
  drm/i915/color: Add helper to create intel colorop
  drm/i915/color: Create a transfer function color pipeline
  drm/i915/color: Add and attach COLORPIPELINE plane property
  drm/i915/color: Add framework to set colorop
  drm/i915/color: Add callbacks to set plane CTM
  drm/i915/color: Add new color callbacks for Xelpd
  drm/i915/color: Add framework to program PRE/POST CSC LUT
  drm/i915/color: Enable Plane Color Pipelines

Harry Wentland (1):
  drm: color pipeline base work

Uma Shankar (10):
  drm: Add Enhanced LUT precision structure
  drm: Add Color lut range attributes
  drm: Add Color ops capability property
  drm: Define helper to initialize segmented 1D LUT
  drm/i915/color: Add plane CTM callback for D13 and beyond
  drm/i915: Add register definitions for Plane Degamma
  drm/i915: Add register definitions for Plane Post CSC
  drm/i915/color: Program Pre-CSC registers
  drm/i915/xelpd: Program Plane Post CSC Registers
  drm/doc/rfc: Add documentation for multi-segmented 1D LUT

 Documentation/gpu/drm-kms.rst                 |  15 +
 Documentation/gpu/rfc/color_pipeline.rst      | 518 +++++++++++
 Documentation/gpu/rfc/index.rst               |   3 +
 drivers/gpu/drm/Makefile                      |   1 +
 .../gpu/drm/amd/display/amdgpu_dm/Makefile    |   3 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |   4 +
 .../amd/display/amdgpu_dm/amdgpu_dm_color.c   | 566 ++++++++++++-
 .../amd/display/amdgpu_dm/amdgpu_dm_colorop.c | 206 +++++
 .../amd/display/amdgpu_dm/amdgpu_dm_colorop.h |  36 +
 .../amd/display/amdgpu_dm/amdgpu_dm_plane.c   |  32 +
 drivers/gpu/drm/drm_atomic.c                  | 177 +++-
 drivers/gpu/drm/drm_atomic_helper.c           |  12 +
 drivers/gpu/drm/drm_atomic_state_helper.c     |   5 +
 drivers/gpu/drm/drm_atomic_uapi.c             | 174 ++++
 drivers/gpu/drm/drm_color_mgmt.c              |  43 +
 drivers/gpu/drm/drm_colorop.c                 | 707 ++++++++++++++++
 drivers/gpu/drm/drm_ioctl.c                   |   7 +
 drivers/gpu/drm/drm_mode_config.c             |   7 +
 drivers/gpu/drm/drm_plane.c                   |  52 ++
 drivers/gpu/drm/i915/display/intel_color.c    | 628 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_color.h    |  17 +-
 .../drm/i915/display/intel_display_limits.h   |  13 +
 .../drm/i915/display/intel_display_types.h    |  19 +
 .../drm/i915/display/skl_universal_plane.c    |   5 +
 .../i915/display/skl_universal_plane_regs.h   | 126 +++
 drivers/gpu/drm/tests/Makefile                |   3 +-
 drivers/gpu/drm/tests/drm_fixp_test.c         |  71 ++
 drivers/gpu/drm/vkms/Kconfig                  |  15 +
 drivers/gpu/drm/vkms/Makefile                 |   5 +-
 drivers/gpu/drm/vkms/tests/.kunitconfig       |   4 +
 drivers/gpu/drm/vkms/tests/Makefile           |   3 +
 drivers/gpu/drm/vkms/tests/vkms_color_test.c  | 459 ++++++++++
 drivers/gpu/drm/vkms/vkms_colorop.c           | 113 +++
 drivers/gpu/drm/vkms/vkms_composer.c          | 131 ++-
 drivers/gpu/drm/vkms/vkms_composer.h          |  27 +
 drivers/gpu/drm/vkms/vkms_drv.h               |   7 +
 drivers/gpu/drm/vkms/vkms_luts.c              | 801 ++++++++++++++++++
 drivers/gpu/drm/vkms/vkms_luts.h              |  12 +
 drivers/gpu/drm/vkms/vkms_plane.c             |   1 +
 include/drm/drm_atomic.h                      | 130 +++
 include/drm/drm_atomic_uapi.h                 |   3 +
 include/drm/drm_color_mgmt.h                  |  13 +
 include/drm/drm_colorop.h                     | 473 +++++++++++
 include/drm/drm_file.h                        |   7 +
 include/drm/drm_fixed.h                       |  18 +
 include/drm/drm_mode_config.h                 |  18 +
 include/drm/drm_plane.h                       |  19 +
 include/uapi/drm/amdgpu_drm.h                 |   9 -
 include/uapi/drm/drm.h                        |  16 +
 include/uapi/drm/drm_mode.h                   | 192 +++++
 50 files changed, 5876 insertions(+), 50 deletions(-)
 create mode 100644 Documentation/gpu/rfc/color_pipeline.rst
 create mode 100644 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c
 create mode 100644 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.h
 create mode 100644 drivers/gpu/drm/drm_colorop.c
 create mode 100644 drivers/gpu/drm/tests/drm_fixp_test.c
 create mode 100644 drivers/gpu/drm/vkms/tests/.kunitconfig
 create mode 100644 drivers/gpu/drm/vkms/tests/Makefile
 create mode 100644 drivers/gpu/drm/vkms/tests/vkms_color_test.c
 create mode 100644 drivers/gpu/drm/vkms/vkms_colorop.c
 create mode 100644 drivers/gpu/drm/vkms/vkms_composer.h
 create mode 100644 drivers/gpu/drm/vkms/vkms_luts.c
 create mode 100644 drivers/gpu/drm/vkms/vkms_luts.h
 create mode 100644 include/drm/drm_colorop.h

-- 
2.42.0

