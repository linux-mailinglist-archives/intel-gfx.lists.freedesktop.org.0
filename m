Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A70A2FEB4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 01:01:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E60BD10E22C;
	Tue, 11 Feb 2025 00:01:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iA83G7hj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8125710E22C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 00:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739232098; x=1770768098;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1UdgMImI9EuYUX6xvctIyNBxkMekfI5XSalW5htPHes=;
 b=iA83G7hjW9lF+gvFeKlMFlNu9R16QqwgkrDqjH2GtVvuV7ptEJYTHpGJ
 fFRnNInCV+wOnQTiWN7VEJJYWBns4wjSXs7qQocxRW71p7vd4+5Zwz7sc
 oa3BuDrbS+d5wrI2ItjIOfDP+5iPW2f50ZOdC2XUDxZOr1NY8hz/DReKM
 5zzabnEO0OBXFWz8iOTMNZ5JJPAp91wNvCuH1dcrmSypRxbT/LuqUkP0M
 IG4487MYKCdoF5TaOPlpabRQUW1TfSylUru4cmmvFuX6QzE5aiIjlp49x
 4IvCOMkpBGhZ7v2G3bEdcG7wUmNmLtkOmH4/mlDYkkBtvYgGvw064We+6 A==;
X-CSE-ConnectionGUID: DYimMHWfRQ2d+L9I+w/5XA==
X-CSE-MsgGUID: DD1bo40hRD2yP/cNY9W4VQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27434838"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="27434838"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 16:01:38 -0800
X-CSE-ConnectionGUID: nU5uefbkTgWh1DZC8REyLw==
X-CSE-MsgGUID: ectAaa4aTka7mtsROKYuTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112558906"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 16:01:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2025 02:01:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915: More display power conversions
Date: Tue, 11 Feb 2025 02:01:31 +0200
Message-ID: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
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

Apparently I screwed up the i915->display conversion a bit
so here's a fix, and an attempt at eliminating the specific
footgun hat got me. I also noticed that not much more i915
left in intel_display_power.h so I decided to finish it off.

Ville Syrjälä (4):
  drm/i915: Fix CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n build
  drm/i915: Continue intel_display_power struct intel_display conversion
  drm/i915/gvt: Stop using intel_runtime_pm_put_unchecked()
  drm/i915: Get rid of the _unchecked() runime pm stuff

 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 10 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
 .../drm/i915/display/intel_display_debugfs.c  |  3 +-
 .../drm/i915/display/intel_display_power.c    | 54 ++++---------------
 .../drm/i915/display/intel_display_power.h    | 45 +++-------------
 .../i915/display/intel_display_power_well.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 12 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 16 +++---
 drivers/gpu/drm/i915/display/skl_watermark.h  |  3 +-
 drivers/gpu/drm/i915/gvt/aperture_gm.c        |  7 +--
 drivers/gpu/drm/i915/gvt/debugfs.c            |  5 +-
 drivers/gpu/drm/i915/gvt/gtt.c                |  6 ++-
 drivers/gpu/drm/i915/gvt/gvt.h                |  9 ++--
 drivers/gpu/drm/i915/gvt/handlers.c           | 23 +++++---
 drivers/gpu/drm/i915/gvt/sched_policy.c       |  5 +-
 drivers/gpu/drm/i915/intel_gvt.c              |  3 --
 drivers/gpu/drm/i915/intel_runtime_pm.c       | 19 -------
 drivers/gpu/drm/i915/intel_runtime_pm.h       |  9 ----
 20 files changed, 80 insertions(+), 162 deletions(-)

-- 
2.45.3

