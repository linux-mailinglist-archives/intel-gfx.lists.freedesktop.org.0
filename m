Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26778C4693
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 19:59:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D86510E8D6;
	Mon, 13 May 2024 17:59:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VV6sAu1S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8864210E4F3;
 Mon, 13 May 2024 17:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715623185; x=1747159185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dothaqTt69DTlvc2N6h+eGjw4+1EX32VhfjU0moekbw=;
 b=VV6sAu1STY2MM7J7mGjtx7BJJ1907oelFVF4SAMU6Ay+bms7fhWeQVMz
 0K/Ej7QFxC2nd5k+CIxDZjgQNnA+cYyVFXG6zf6ASHp/zpFu1CGU9ZAHh
 Xmp9JE4aiiSY1E8OcmF9P5fVvenbe+J7ad+e1bGLfE5Gj8Oj0C5d+FD62
 LGAnWhgQL4//UF/RbwJIFZNYPa5bsBOEGoVGtbmTVWF5Ot3L+Zccy6tsL
 AKOOu/sV/AZgTOMG/wfpUcJ6g4KgJpCh617pOw+oX/TQNDUuBFtABcyD+
 5Zqzr/YDVUXFbpaf/WMc6PItnfigCKRIosNvVmjPlIjNc0UZjhDejoB5C w==;
X-CSE-ConnectionGUID: cZrfJoOhRv6zVyVejVa5gQ==
X-CSE-MsgGUID: ZtbvZ/hZQjKUmrCNbeC76Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="14517914"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="14517914"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 10:59:44 -0700
X-CSE-ConnectionGUID: N02Jqoq/R5iui1DXEYbKBA==
X-CSE-MsgGUID: R19o1YyiQcudFux0jknptQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30395159"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 10:59:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 20:59:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Subject: [PATCH 0/9] drm/i915: Polish plane surface alignment handling
Date: Mon, 13 May 2024 20:59:33 +0300
Message-ID: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_surf_alignment() in particular has devolved into
a complete mess. Redesign the code so that we can handle
alignment restrictions in a nicer. Also adjust alignment
for TGL+ to actually match the hardware requirements.

Ville Syrjälä (9):
  drm: Rename drm_plane_check_pixel_format() to drm_plane_has_format()
  drm: Export drm_plane_has_format()
  drm/i915: Introduce plane->min_alignment() vfunc
  drm/i915: Introduce fb->min_alignment
  drm/i915: Split cursor alignment to per-platform vfuncs
  drm/i915: Split pre-skl platforms out from intel_surf_alignment()
  drm/i915: Move intel_surf_alignment() into skl_univerals_plane.c
  drm/i915: Update plane alignment requirements for TGL+
  drm/i915: Nuke the TGL+ chroma plane tile row alignment stuff

 drivers/gpu/drm/drm_atomic.c                  |   7 +-
 drivers/gpu/drm/drm_crtc.c                    |   6 +-
 drivers/gpu/drm/drm_crtc_internal.h           |   2 -
 drivers/gpu/drm/drm_plane.c                   |  23 ++-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  75 ++++++++-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  38 +++++
 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/display/intel_fb.c       | 145 ++++--------------
 drivers/gpu/drm/i915/display/intel_fb.h       |   3 -
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  63 ++++++--
 drivers/gpu/drm/i915/display/intel_fb_pin.h   |   3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  26 ++++
 .../drm/i915/display/skl_universal_plane.c    |  82 +++++++++-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |   3 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c |   4 +-
 include/drm/drm_plane.h                       |   2 +
 17 files changed, 324 insertions(+), 168 deletions(-)

-- 
2.43.2

