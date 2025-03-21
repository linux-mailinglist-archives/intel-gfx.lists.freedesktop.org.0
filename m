Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D30A6BDBF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 15:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E0B10E7E2;
	Fri, 21 Mar 2025 14:56:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FbfbyLgP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 301D210E7E2;
 Fri, 21 Mar 2025 14:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742568987; x=1774104987;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rTX5OkHmUIfb4qz2r03xAvrMACooqahPUx2AZbmQw0Y=;
 b=FbfbyLgPINNeCX7M7MzZu4e1rLHaXoA/Tiu+/HhdFYG8ERpRgwXSaRwH
 p3JtjrYeId27HtWyRz/w5tSfrEmt4hR+XzffIhY1ezKSxweMXkzbHLBY5
 +RR+vFt4DKN7R5FH/ieO4jNqkdAH706ofK1EXrjgrh74Pk8tM7wvUKuOO
 8aa7+mEOdZiDrAWOeeiAhTjnSFF7HWEEOrLa8CcV+9CItz2Er0usdxLxw
 vJhCe3l2z6raby5sr6T2uBVaPGbyRCA4yN6GNdieo5RXVr4sRMIcPJAW3
 QSL9Jm8iudtOEjQ0TCaXPVZN07sPcZHuPipY9u6/E5xtcYaypOAlQkXiJ A==;
X-CSE-ConnectionGUID: frGMZcv9TWy7w0dHZvP4Jw==
X-CSE-MsgGUID: XucXyfZrQO+O9/iRYgcDVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="47617948"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="47617948"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:56:26 -0700
X-CSE-ConnectionGUID: 1hJ7Fuu8Q1ygGtZamx2Nqg==
X-CSE-MsgGUID: KYeE9BeeQY2A3DP9JB0TfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128478322"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:56:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915: Fix DP MST SB message timeouts due to PPS delays
Date: Fri, 21 Mar 2025 16:56:23 +0200
Message-ID: <20250321145626.94101-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

This patchset fixes DP MST down request side-band message timeouts on
one port caused by long PPS (panel/backlight, power-cycle) delays on
another eDP port.

Imre Deak (3):
  drm/i915/pps: Add helpers to lock PPS for AUX transfers
  drm/i915/dp_mst: Fix side-band message timeouts due to long PPS delays
  drm/i915/pps: Use intel_pps_is_pipe_instance() instead of open-coding
    it

 drivers/gpu/drm/i915/display/g4x_dp.c       |  6 +-
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 +----
 drivers/gpu/drm/i915/display/intel_pps.c    | 79 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_pps.h    |  5 +-
 5 files changed, 80 insertions(+), 28 deletions(-)

-- 
2.44.2

