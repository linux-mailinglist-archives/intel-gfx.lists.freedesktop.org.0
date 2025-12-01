Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9928C97948
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 14:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426C689EFF;
	Mon,  1 Dec 2025 13:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XSW3jxev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D58D89EFF;
 Mon,  1 Dec 2025 13:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764595509; x=1796131509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5ZMOYDB0X03L1Cox2FBO48mjQBXwVKbysLEhpLNBWxw=;
 b=XSW3jxevc2EVgQjKOIdsPd00qUOQP1suRcysqQZLcwrusxBvBndrrAmM
 J3WfhYKmYs+RgwCfx5hhq21MGr5kI+wl6IB6NRpM1RPYeKfnLKStJw3E7
 Ln1osdtaYHmiIvhbnyPLU7G8y7E191sAZagzM3PGRlZ1bgiiL7WBh2vId
 tc5j7w6Ti/+dmrf6e9X7HRK2hEEBMK7svPwi/ctdgwoWR9MYcFMKX49wU
 8KuPcnhFleS24ULrVx/Ij2jLZYtTmgeo08a0nkvwXGr/RKF4XOLI1zh0L
 hXp3HAdOV7TgP5vU3fN13P5SR0lhf385pQBq2b/vRrMnN54hNWdMeJD9i g==;
X-CSE-ConnectionGUID: A6Orn5VlS3qrXIqtSwCDyQ==
X-CSE-MsgGUID: FoZm/XWnSKOCgvkNC6JofQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="70394305"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="70394305"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 05:25:09 -0800
X-CSE-ConnectionGUID: dYBuP7uJRTqesy9N/48M3w==
X-CSE-MsgGUID: lrtwUVOaSRi6eU7d7su0mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="225055479"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 05:25:07 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/3] Selective Fetch and async flip
Date: Mon,  1 Dec 2025 15:24:54 +0200
Message-ID: <20251201132457.624358-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set contains fixes for Selective Fetch async flip
sequences. On async flip selective fetch is choosing full ftrame
update. Also subsequent flip/update is still using full frame update
to ensure plane with pending async flip is not taken in to selective
fetch/update.

v3:
  - rebase
  - fix old_crtc_state->pipe_srcsz_early_tpt
  - fix using intel_atomic_get_new_crtc_state
v2:
  - check also crtc_state->async_flip_planes in
    psr2_sel_fetch_plane_state_supported

Jouni Högander (3):
  drm/i915/psr: Set plane id bit in crtc_state->async_flip_planes for
    PSR
  drm/i915/psr: Perform full frame update on async flip
  drm/i915/psr: Allow async flip when Selective Fetch enabled

 drivers/gpu/drm/i915/display/intel_display.c |  8 ---
 drivers/gpu/drm/i915/display/intel_plane.c   | 10 ++-
 drivers/gpu/drm/i915/display/intel_psr.c     | 72 +++++++++++---------
 3 files changed, 49 insertions(+), 41 deletions(-)

-- 
2.43.0

