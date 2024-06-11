Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980D8903D71
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:33:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAF310E095;
	Tue, 11 Jun 2024 13:33:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EwFPqmCD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4A810E095
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112828; x=1749648828;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W9AbJ+JD2y1mg915W7spurrhgIv/4oveKHPgx+/jslQ=;
 b=EwFPqmCDYPNLogmZlaLP+N9tnqjtkg7KDxaquy+/Y9uHE1pEYY2OMmk0
 Rl6IaLSnt36pV57au+dqeZNC/yrztVjYRgTHDFk7K0o8Ls6TIlczlhbAH
 Tc15xPCiNht4FkAeDZgPtsit+fD8rJvB0IfkeZ85HadH3FC9vpOuK4adp
 gECwlkQA4DOBSBKVX/1kP9lK7oGenhvF75dmunzHgcwVKdAw68N8RdsvV
 nXPa3lSd446KMxCeBJTMHZjI72EdHYEiZYFUEkDKBtirQJ7cyf6RIXyM5
 /B/Mn4DzS48YnPJGSn0p9Z4DQ8Y2hXe2zegGCUMq87CwWhY8mldUAJ4oo A==;
X-CSE-ConnectionGUID: KsM2rDWIRUGgUj3Nq6YjKA==
X-CSE-MsgGUID: 4RofxAuCTECZyaXKZEyxHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018217"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018217"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:33:47 -0700
X-CSE-ConnectionGUID: R/fcB/M6QhqW92iY69Up0Q==
X-CSE-MsgGUID: mv+o/ddeQTeWHDFjgd/ZYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421348"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:33:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:33:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/11] drm/i915/dsb: DSB prep stuff
Date: Tue, 11 Jun 2024 16:33:33 +0300
Message-ID: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

More prep work extracted from my upcoming DSB based plane
programming series.

Ville Syrjälä (11):
  drm/i915: Extract intel_crtc_arm_vblank_event()
  drm/i915: Add async flip tracepoint
  drm/i915: Add flip done tracepoint
  drm/i915: Introduce intel_mode_vdisplay()
  drm/i915: Pass the whole atomic state to intel_color_prepare_commit()
  drm/i915/dsb: Plumb the whole atomic state into intel_dsb_prepare()
  drm/i915/dsb: Convert the DSB code to use intel_display rather than
    i915
  drm/i915/dsb: Add i915.enable_dsb module parameter
  drm/i915: Drop useless intel_dsb.h include
  drm/i915/dsb: Document that the ATS fault bits are for mtl+
  drm/i915/dsb: Try to document that DSB_STATUS bit 16 is level
    triggered

 .../gpu/drm/i915/display/intel_atomic_plane.c | 22 +++++--
 .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
 drivers/gpu/drm/i915/display/intel_color.c    | 13 ++--
 drivers/gpu/drm/i915/display/intel_color.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     | 30 +++++----
 drivers/gpu/drm/i915/display/intel_crtc.h     |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++--
 .../gpu/drm/i915/display/intel_display_irq.c  |  1 +
 .../drm/i915/display/intel_display_params.c   |  3 +
 .../drm/i915/display/intel_display_params.h   |  1 +
 .../drm/i915/display/intel_display_trace.h    | 50 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.c      | 66 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dsb.h      |  4 +-
 drivers/gpu/drm/i915/display/intel_dsb_regs.h |  6 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 10 +++
 drivers/gpu/drm/i915/display/intel_vblank.h   |  1 +
 16 files changed, 165 insertions(+), 62 deletions(-)

-- 
2.44.2

