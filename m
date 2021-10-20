Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB1643540D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC086E30F;
	Wed, 20 Oct 2021 19:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9006E30F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 19:51:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209663400"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="209663400"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:42 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="444495830"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 20 Oct 2021 22:51:27 +0300
Message-Id: <20211020195138.1841242-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/11] drm/i915: Simplify handling of
 modifiers
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

This is v4 of [1] addressing review comments from Jani and Ville in
patch 1 and 9.

[1] https://patchwork.freedesktop.org/series/95579/

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (11):
  drm/i915: Add a table with a descriptor for all i915 modifiers
  drm/i915: Move intel_get_format_info() to intel_fb.c
  drm/i915: Add tiling attribute to the modifier descriptor
  drm/i915: Simplify the modifier check for interlaced scanout support
  drm/i915: Unexport is_semiplanar_uv_plane()
  drm/i915: Move intel_format_info_is_yuv_semiplanar() to intel_fb.c
  drm/i915: Add a platform independent way to get the RC CCS CC plane
  drm/i915: Handle CCS CC planes separately from CCS AUX planes
  drm/i915: Add a platform independent way to check for CCS AUX planes
  drm/i915: Move is_ccs_modifier() to intel_fb.c
  drm/i915: Add functions to check for RC CCS CC and MC CCS modifiers

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  30 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |   1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 150 +----
 drivers/gpu/drm/i915/display/intel_display.h  |   3 -
 .../drm/i915/display/intel_display_types.h    |  17 -
 drivers/gpu/drm/i915/display/intel_fb.c       | 526 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fb.h       |  30 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  35 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |   1 +
 .../drm/i915/display/skl_universal_plane.c    | 206 ++-----
 drivers/gpu/drm/i915/intel_pm.c               |   1 +
 12 files changed, 612 insertions(+), 407 deletions(-)

-- 
2.27.0

