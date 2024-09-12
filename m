Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB8976C36
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 16:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878BA10EBA3;
	Thu, 12 Sep 2024 14:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IFWIFVyR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33FB810EB91;
 Thu, 12 Sep 2024 14:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726151661; x=1757687661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dkuAbsj2+yCr8LUrLcQw3/cxUi/vpyscienoQh3nIjU=;
 b=IFWIFVyRScxPY3qE/czXq0ywJJKBVXoVHJmGhy6cwIk2wmhcnv7x9LvF
 U0p5YQSNE1lOvAqE3RqIlMfhzrD6E0M+JQ0htd8Dz+bTu9Wk0iIUg9KlF
 dPYGVZ3cbCQwiI0fPpqI17eHMNmiH1d/eZJJv/fJyLh6stJRt2scCRJma
 WbQ1YkKBuZ0qnwNpAEfIwZ6keKs7IIMj47Q9lFPrUW38bmf088kbM6p4T
 QcyiQjgJe9gx5WFUoaQgtBcpjyPv+flOLc3PiWOG5LYiUvOJnTAfZBM0B
 FyQI9jzpchyiScdC47LSve3B5ZsqVgfZ+zTLAbM7F4KbgZ81uOH0bydDi A==;
X-CSE-ConnectionGUID: sWZTLVAwSOKszeC6QI2M9A==
X-CSE-MsgGUID: 58ILpH16RTOw9TiyxssRzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="25108948"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="25108948"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 07:34:21 -0700
X-CSE-ConnectionGUID: ER+I4FcsSvyGaPTCCSWSXw==
X-CSE-MsgGUID: Z8DQkVbNS++2EDStQ8N4oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="72514867"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 07:34:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v3 0/4] drm/i915/display: add snapshot capture/print infra
Date: Thu, 12 Sep 2024 17:34:10 +0300
Message-Id: <cover.1726151571.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Rebased [1].

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1725888718.git.jani.nikula@intel.com

Jani Nikula (4):
  drm/i915: dump display parameters captured in error state, not current
  drm/i915/display: add intel_display_snapshot abstraction
  drm/i915/display: move device info and params handling to snapshot
  drm/i915/display: move dmc snapshotting to new display snapshot

 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/display/intel_display_params.c   |  8 ++-
 .../drm/i915/display/intel_display_params.h   |  5 +-
 .../drm/i915/display/intel_display_snapshot.c | 72 +++++++++++++++++++
 .../drm/i915/display/intel_display_snapshot.h | 16 +++++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 38 +++++++---
 drivers/gpu/drm/i915/display/intel_dmc.h      |  6 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 16 +++--
 drivers/gpu/drm/i915/display/intel_overlay.h  | 25 ++++---
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 25 ++-----
 drivers/gpu/drm/i915/i915_gpu_error.h         | 11 +--
 12 files changed, 166 insertions(+), 59 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h

-- 
2.39.2

