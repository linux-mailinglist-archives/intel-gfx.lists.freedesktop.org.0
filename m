Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74451902707
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF4810E447;
	Mon, 10 Jun 2024 16:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWM3mmPy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6193889343
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038168; x=1749574168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZkD9hUZIy/RHm3Wi9BrAQzYSDQqFF1mlqiRXZuARbPA=;
 b=AWM3mmPyRKXFIb3P8Dblez/MF0MZIB/QL1fL5iN8iGu6XlWuB2nXbZeL
 QCZzB4ifLQ2rSwN4P5VQv053e7WBKVxMkiyZLWm20sX7mt+dO1kE43zBU
 LfKzfTYh7zA5vlh7ppIdY7ojYSV/eS+tql5iu+FYlwjckAx3iFVEhlGRi
 jBsPEM/IueHpzG9EikOQOtl/ZQ/CsfIzJwMl5TdKfIvmvOWJFdcBeawCU
 DB4kFUhmBuZDGHAYSTl6tU4oWmWzQ2oeTFzdgyZ9M1wQ94wr6OvyuPxGA
 uhR1fZkfU2OqnwHLWEswkCFU4KVVEPdyIxn6lEknlLe1BimPPllVwRhVo Q==;
X-CSE-ConnectionGUID: gnz0FmA6Quq1s657YVjGDA==
X-CSE-MsgGUID: mF1xJ308Ro+WBH9v0WXUDg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493952"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493952"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:27 -0700
X-CSE-ConnectionGUID: YXRee+90R8iKUufyyJ1T/Q==
X-CSE-MsgGUID: At/xiw4/TgmNW7UMOw+1cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060550"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 00/21] drm/i915/dp_mst: Enable link training fallback
Date: Mon, 10 Jun 2024 19:49:12 +0300
Message-ID: <20240610164933.2947366-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

This is v3 of [1], addressing the review comments and adding R-bs from
Ville, the main changes being:

- Add the link check work to intel_encoder and the corresponding helper
  functions to a new intel_encoder.c file. (Patch 7)
- Add documentation/asserts on intel_atomic_state being valid for MST
  vs. possibly NULL for SST links in the link training functions.
  (Patch 9,10)
- Lock connection_mutex in the debugfs entries only for the required
  intel_dp state. (Patch 17-21)
- Remove the link training info debugfs entry showing the link retrain,
  link training failure counters and the retrain disabled state, add a
  separate debugfs entry showing only the retrain disabled state.
  (Patch 21)

[1] https://lore.kernel.org/all/20240520185822.3725844-1-imre.deak@intel.com

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (21):
  drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
  drm/i915/dp: Move link train params to a substruct in intel_dp
  drm/i915/dp: Move link train fallback to intel_dp_link_training.c
  drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
  drm/i915: Factor out function to modeset commit a set of pipes
  drm/i915/dp: Use a commit modeset for link retraining MST links
  drm/i915/dp: Recheck link state after modeset
  drm/i915/dp: Reduce link params only after retrying with unchanged
    params
  drm/i915/dp: Pass atomic state to link training function
  drm/i915/dp: Send a link training modeset-retry uevent to all MST
    connectors
  drm/i915/dp: Use check link state work in the hotplug handler
  drm/i915/dp: Use check link state work in the detect handler
  drm/i915/dp: Use check link state work in the HPD IRQ handler
  drm/i915/dp: Disable link retraining after the last fallback step
  drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
  drm/i915/dp_mst: Enable link training fallback for MST
  drm/i915/dp: Add debugfs entries to force the link rate/lane count
  drm/i915/dp: Add debugfs entries to get the max link rate/lane count
  drm/i915/dp: Add debugfs entry to force link training failure
  drm/i915/dp: Add debugfs entry to force link retrain
  drm/i915/dp: Add debugfs entry to get the link retrain disabled state

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |  35 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  67 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  34 ++
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |  25 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 270 +++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |  11 +-
 .../drm/i915/display/intel_dp_link_training.c | 538 +++++++++++++++++-
 .../drm/i915/display/intel_dp_link_training.h |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  30 +-
 drivers/gpu/drm/i915/display/intel_encoder.c  |  39 ++
 drivers/gpu/drm/i915/display/intel_encoder.h  |  16 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 15 files changed, 878 insertions(+), 202 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_encoder.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_encoder.h

-- 
2.43.3

