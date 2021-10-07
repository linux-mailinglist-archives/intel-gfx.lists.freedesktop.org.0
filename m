Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24523425D9F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 22:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679296E030;
	Thu,  7 Oct 2021 20:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C1E06E02D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 20:35:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="213303790"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="213303790"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:20 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="458926528"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Oct 2021 23:35:06 +0300
Message-Id: <20211007203517.3364336-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: Simplify handling of modifiers
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

This patchset adds a descriptor table for all modifiers used by i915,
which deduplicates the listing of supported modifiers during plane
initialization and during checking for a modifier support on a plane.
This also simplifies getting some modifier attributes like checking
if a plane is a CCS modifier. The motivation is to make it easier to
add and maintain new CCS modifier sets, which will be needed for at
least ADL-P and another upcoming platform.

Tested with igt/kms_plane,kms_ccs on CHV,HSW,TGL,ADLP.

The patches are also avaiable at:
https://github.com/ideak/linux/commits/modifier-descriptors

Imre Deak (11):
  drm/i915: Add a table with a descriptor for all i915 modifiers
  drm/i915: Move intel_get_format_info() to intel_fb.c
  drm/i915: Add tiling attribute to the modifier descriptor
  drm/i915: Simplify the modifier check for interlaced scanout support
  drm/i915: Unexport is_semiplanar_uv_plane()
  drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
  drm/i915: Add a platform independent way to get the RC CCS CC plane
  drm/i915: Handle CCS CC planes separately from CCS control planes
  drm/i915: Add a platform independent way to check for CCS control
    planes
  drm/i915: Move is_ccs_modifier() to intel_fb.c
  drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers

 .../gpu/drm/i915/display/intel_atomic_plane.c |   1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 150 +----
 drivers/gpu/drm/i915/display/intel_display.h  |   4 -
 .../drm/i915/display/intel_display_types.h    |  17 -
 drivers/gpu/drm/i915/display/intel_fb.c       | 536 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fb.h       |  25 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  35 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   1 +
 .../drm/i915/display/skl_universal_plane.c    | 165 +-----
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 drivers/gpu/drm/i915/intel_pm.c               |   1 +
 12 files changed, 569 insertions(+), 388 deletions(-)

-- 
2.27.0

