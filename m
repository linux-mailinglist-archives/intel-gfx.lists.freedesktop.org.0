Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B000092E1C1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 10:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0635A10E994;
	Thu, 11 Jul 2024 08:14:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLa+zVuj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7AC210E993
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 08:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720685685; x=1752221685;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cUW9kgbU2heTbd/CULnH+ZEV4u4Q0Ttb8RlRl0ldRuc=;
 b=TLa+zVuj1rdpZY7dQX/Yu7ESmwMZtCwI2nUYjIkfdH1eQW24lfKu/AHj
 dJTp/2r6zyprFHk1yTudxGIt1HvLXy0GkK0c4OvcipHTbNoZ8f5bbkZi3
 ycqLZWSfQX62+zu2VPOnPbT3ICXFr/fY4PMhYD2eU3shAcIoxDnDDW29O
 WjOcS3CqQQ7gPxae70RJHtw7/HO/AL07xYq9RpYIABKiAxd1mNEtF/RHu
 APZLz+OWqMAYX0onqXp5ZxtpOvpA15Ea1bTAc7ic92qu+sx78SmNd3CFU
 31fQ4QhQUV87X8b0Ahuliw0yWpcuTRiJuA5Rj7GzRKIKP5whlNZzjgeTG w==;
X-CSE-ConnectionGUID: 3t5Ai0TWTgSDUplk5IE6xg==
X-CSE-MsgGUID: iO0LReOrRiik2AnyWDo1mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21814072"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21814072"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 01:14:44 -0700
X-CSE-ConnectionGUID: Efk260ycShGsR4p5IuQWnA==
X-CSE-MsgGUID: wQnp6qXQSzm0P+iMB0fzcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="52785612"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa003.fm.intel.com with ESMTP; 11 Jul 2024 01:14:42 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, ville.syrjala@linux.intel.com,
 ankit.k.nautiyal@intel.com
Subject: [PATCH 0/6] Ultrajoiner basic functionality series
Date: Thu, 11 Jul 2024 11:14:35 +0300
Message-Id: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

This patch series attempts to implement basic support
for Ultrajoiner functionality.


Stanislav Lisovskiy (6):
  drm/i915: Add some essential functionality for joiners
  drm/i915: Split current joiner hw state readout
  drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
    checks
  drm/i915: Implement hw state readout and checks for ultrajoiner
  drm/i915: Compute config and mode valid changes for ultrajoiner
  drm/i915: Add new abstraction layer to handle pipe order for different
    joiners

 .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 339 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  18 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 117 ++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  18 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  54 +--
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  14 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  29 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
 12 files changed, 484 insertions(+), 133 deletions(-)

-- 
2.37.3

