Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B2FA194DE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 16:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8AD10E3C0;
	Wed, 22 Jan 2025 15:18:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KsmuAAXt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C9E10E3B5;
 Wed, 22 Jan 2025 15:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737559078; x=1769095078;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pNVK13/ylrv51tzWg9LjKBMYpFsvBtFY3hIZiNPSa2c=;
 b=KsmuAAXtNDt8fIRGjy+ihjNPCw6yWQqZ711wVLTshahfCeDgfQhlke0B
 0NBw5omFpAnHI/7BcNPOPaZaaN8CMCpjUKKMCkZeT3igqHI26MhWLDOua
 Ej5nQn+gagINmtAs1KqxxitKm5QwJ41MuBw5jGCzd/mSdV1ZbfJehSVbI
 aJD75Tg4MMbMsvnRHTiIIU1ys1C2zrFEoiHEsnlGy6dQQzcVGSthSUwOR
 LCdprkFZIWqj7MBYp+GdNzxdRy5K13WkRpTOCPJp/EIbxsHMPstd+8utO
 V6QUknWl3VnnJCn/esouFqsaa/JOrwhaDrRXTaZRe2Tv/vD971Gutfj6Z A==;
X-CSE-ConnectionGUID: QOGIYpHvSsGO1nAD/NVoew==
X-CSE-MsgGUID: 5pvY5khyRAqAKgssLzxYWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="40841166"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="40841166"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 07:17:58 -0800
X-CSE-ConnectionGUID: c7Jn28HWRz+vytuFX0BQVw==
X-CSE-MsgGUID: ZKcdLvhlS6iXXodvPQvWSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107274681"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Jan 2025 07:17:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2025 17:17:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915: Improve the display VT-d workarounds
Date: Wed, 22 Jan 2025 17:17:50 +0200
Message-ID: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

Try to make the display VT-d workarounds more robust.

Ville Syrjälä (5):
  drm/i915: Move VT-d alignment into plane->min_alignment()
  drm/i915: Use more optimal VTd alignment for planes
  drm/i915: Calculate the VT-d guard size in the display code
  drm/i915: Use per-plane VT-d guard numbers
  drm/i915/fbdev: Use fb->normal_view.gtt

 drivers/gpu/drm/i915/display/i9xx_plane.c     | 15 ++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   |  8 ++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_fb.c       | 48 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |  3 ++
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 20 ++++----
 drivers/gpu/drm/i915/display/intel_fb_pin.h   |  1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  7 ++-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 15 ++++++
 .../drm/i915/display/skl_universal_plane.c    |  7 +++
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 15 ++----
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
 15 files changed, 120 insertions(+), 28 deletions(-)

-- 
2.45.2

