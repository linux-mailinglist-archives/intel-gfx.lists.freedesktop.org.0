Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0012CA34436
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0747010E3F9;
	Thu, 13 Feb 2025 15:02:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GjWe2k+l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EA0B10E3F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458944; x=1770994944;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ODl7B/A0fvYv6GUB18QE99cq3zyOLNmBX7L/U83Q1E8=;
 b=GjWe2k+l9RpR+Z1lu8p585LsZSaFaGgOBwUi62ksh5kE4jgDFSo1Lw9T
 NS4kVBYR0I2eKf1lHubAaJMJJerVW+3lzjE++v4fa0sCy0HRzj0ZICliW
 rn5B/GWnZiI5DDEmShCwP2wHDRMA2DWhBbfLBlri8VDI716eOklFILCLL
 zVSkZ7vESGSECZeblkVMCc0uP/yZbAlhLelXMeUlJKQaqaOEokmgQuImO
 rPIcVCKWvQ+Ie288qEynUugdmUtYEZq88aaiqRCQeZBb/U8hHkacWWV/d
 Gkh60+6DqZmgWpdWSoqtovwnfwRydKnB5bFG0KBfDo4ipPPEibtH+TQbi Q==;
X-CSE-ConnectionGUID: xtLGlnFNQRqWMX5OZ7eiNg==
X-CSE-MsgGUID: nHnAPVOETOaRsq22NO60qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567412"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567412"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:24 -0800
X-CSE-ConnectionGUID: DhIt9Rh6Qvm7g0L7imTNIw==
X-CSE-MsgGUID: jGvqLOgUQeCsYM9iJTHs8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349561"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/12] drm/i915: Hoist some stuff out from intel_display.c
Date: Thu, 13 Feb 2025 17:02:08 +0200
Message-ID: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

intel_display.c still has a bunch of random stuff in it.
Move some of it into a slightly better place.

Ville Syrjälä (12):
  drm/i915: Move modeset_retry stuff into intel_connector.c
  drm/i915: Always initialize connector->modeset_retry_work
  drm/i915: Extract intel_connector_cancel_modeset_retry_work()
  drm/i915: Extract intel_hdcp_cancel_works()
  drm/i915: Move intel_hpd_poll_fini() into intel_hotplug.c
  drm/i915: Move intel_plane_destroy() into intel_atomic_plane.c
  drm/i915: Relocate vlv_wait_port_ready()
  drm/i915: Simplify vlv_wait_port_ready() arguments
  drm/i915: Relocate intel_plane_uses_fence()
  drm/i915: Relocate intel_{rotation,remapped}_info_size()
  drm/i915: Relocate some other plane fb related stuff into intel_fb.c
  drm/i915: s/state/plane_state/

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   6 +-
 .../gpu/drm/i915/display/intel_atomic_plane.c |  13 ++
 .../gpu/drm/i915/display/intel_atomic_plane.h |   1 +
 .../gpu/drm/i915/display/intel_connector.c    |  42 +++++
 .../gpu/drm/i915/display/intel_connector.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 143 ------------------
 drivers/gpu/drm/i915/display/intel_display.h  |  17 ---
 drivers/gpu/drm/i915/display/intel_dp.c       |  45 +-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 -
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  34 +++++
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |   6 +
 drivers/gpu/drm/i915/display/intel_fb.c       |  96 ++++++++++--
 drivers/gpu/drm/i915/display/intel_fb.h       |  17 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   9 ++
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  16 ++
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   1 +
 drivers/gpu/drm/i915/i915_vma.c               |   2 +-
 19 files changed, 232 insertions(+), 223 deletions(-)

-- 
2.45.3

