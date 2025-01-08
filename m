Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD093A05BC6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8F710E29A;
	Wed,  8 Jan 2025 12:39:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hn+7b8G3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8308B10E894;
 Wed,  8 Jan 2025 12:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736339941; x=1767875941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LUmm23xPt96o7bd+dFs1Vi1T88gpbF8iJgmgrKarYV0=;
 b=hn+7b8G3vMRuBD6fJevYozrYk3GistHxWQW74jfFx0K2T32wl0UoHAIA
 Epj09ZRC3AYFyH2ewVRJDb4qW86f8Xxqgtg2fRjANvDDzitWaxiK0GvNL
 AQNAMzhiR8e9KXqGCoe51GSpEdv12DXPFlgVSTIHKYhKfgJ2G/19SB9Xn
 I2P823s/QEEA3BIJDKFcOOqe+ibZbTH0/KIQmDrSPawvDEnX1LDp6k4nS
 6TuH1OyLFIfXqZ6CNNqsqQhWe5GquQqbQw4L8prnJBDYzmto7PDKvG5x2
 1ptlBQE9vVEBlQwZkVeA9gVD5XJ8L5qBm5w74yYNp38nnA6nPdFv1Gvuf w==;
X-CSE-ConnectionGUID: Vx/h5WfCQquJzGOWwI2WqA==
X-CSE-MsgGUID: NnyZ0Ga/SHersAm2BtTmGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35855347"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="35855347"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:39:01 -0800
X-CSE-ConnectionGUID: RZYhnjI/RfaAld4qqv8oJQ==
X-CSE-MsgGUID: ybCkGPTqTWeGKfJJryPbxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102886083"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jan 2025 04:38:58 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4 0/7] Check Scaler and DSC Prefill Latency Against Vblank
Date: Wed,  8 Jan 2025 18:05:34 +0530
Message-ID: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
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

Compute and check if dsc and scaler prefill latency is sufficient with
respect to vblank.

Previous Revision Reference:
https://patchwork.freedesktop.org/series/141203/
https://patchwork.freedesktop.org/series/142745/

Mitul Golani (7):
  drm/i915/scaler: Add and compute scaling factors
  drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
  drm/i915/scaler: Refactor max_scale computation
  drm/i915/scaler: Compute scaling factors for pipe scaler
  drm/i915/scaler: Limit pipe scaler downscaling factors for YUV420
  drm/i915/scaler: Check if vblank is sufficient for scaler
  drm/i915/dsc: Check if vblank is sufficient for dsc prefill

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 116 ++++++++++++------
 drivers/gpu/drm/i915/display/skl_watermark.c  |  68 ++++++++++
 3 files changed, 149 insertions(+), 37 deletions(-)

-- 
2.46.0

