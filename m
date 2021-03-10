Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 407DE334B4A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74ED889E06;
	Wed, 10 Mar 2021 22:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E157D89E06
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:40 +0000 (UTC)
IronPort-SDR: FrcJhtGuhQpRwNhDVbUxEPRL2DG5wR7Q3AXBauJt+XDsPxKK1QGZTKVrxe12GfgY0nRAJMVLax
 +0M/qyQpvAnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592048"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592048"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:39 -0800
IronPort-SDR: 3SH23pkoz4rlq9AvuB6pwNDbHjzC5NTfS5r4i6sGAXTMDph7PKlOnYEKfOiAgiN9C9yQkaWzXT
 XyR1Pmb6LXJw==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852155"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:38 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:13 +0200
Message-Id: <20210310221736.2963264-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/23] drm/i915: Add support for FBs requiring a
 POT stride padding
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

An upcoming platform requires the stride of tiled display surfaces to be
power-of-two aligned. This patch adds support for this using the FB
remapping logic.

Until the functionality is fully enabled we keep testing it via the
vma selftests and by the last patch which forces the padding on for all
platforms where the FB remapping is possible.

The other goal of the changes is to reduce the size of intel_display.c,
starting to collect all FB plane specific functions to a separate
intel_fb.c file and to share more code between the FB creation and
commit time remapping logic.

For reference I also pushed the changes to:
https://github.com/ideak/linux/commits/fb_pot_remap

Imre Deak (23):
  drm/i915: Fix rotation setup during plane HW readout
  drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()
  drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()
  drm/i915: Make sure i915_ggtt_view is inited when creating an FB
  drm/i915/selftest: Make sure to init i915_ggtt_view in
    igt_vma_rotate_remap()
  drm/i915: Remove duplicate intel_surf_alignment() declaration
  drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h
  drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c
  drm/i915/intel_fb: Pull is_surface_linear() from
    intel_display.c/skl_universal_plane.c
  drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c
  drm/i915/intel_fb: Pull FB plane functions from intel_display.c
  drm/i915/intel_fb: Unexport intel_fb_check_stride()
  drm/i915/intel_fb: s/dev_priv/i915/
  drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()
  drm/i915/intel_fb: Factor out calc_plane_aligned_offset()
  drm/i915/intel_fb: Factor out calc_plane_normal_size()
  drm/i915/intel_fb: Factor out plane_calc_remap_info()
  drm/i915: Shrink the size of intel_remapped_plane_info struct
  drm/i915/selftest: Unify use of intel_remapped_plane_info in
    igt_vma_rotate_remap()
  drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct
  drm/i915: Add support for FBs requiring a POT stride alignment
  drm/i915/selftest: Add remap/rotate vma subtests when
    dst_stride!=width/height
  drm/i915: For-CI: Force remapping the FB with a POT aligned stride

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c     |    1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |    1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  833 +-------------
 drivers/gpu/drm/i915/display/intel_display.h  |   19 -
 .../drm/i915/display/intel_display_types.h    |   32 +-
 drivers/gpu/drm/i915/display/intel_fb.c       | 1012 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |   56 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |   32 -
 drivers/gpu/drm/i915/display/intel_sprite.h   |    1 -
 .../drm/i915/display/skl_universal_plane.c    |   41 +-
 .../drm/i915/display/skl_universal_plane.h    |    2 -
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   58 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   16 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |   12 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  217 +++-
 16 files changed, 1310 insertions(+), 1024 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb.h

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
