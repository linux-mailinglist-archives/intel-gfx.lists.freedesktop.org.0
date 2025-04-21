Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DC2A953B6
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3A710E0E1;
	Mon, 21 Apr 2025 15:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZcyNjOpx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A207C10E0E1;
 Mon, 21 Apr 2025 15:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250668; x=1776786668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0GchZCABeVEOOvWqs+GfjcTp7zp7pthtnKUYgmNKTPQ=;
 b=ZcyNjOpxRlhIuWxjBMEBi5/uIzuQbv1+Fyk4yu6f37mfqMQUyyobg2dU
 T/vzUEteWbY1ev8OCD+Bf0VsdAKMLsjVZXFrpYpyVGJppImeLmacxVpWt
 F2MFz2m8EKIT9d6S/po9+RUShv8XMmdmTCVVj/mLwjs+jdhrtoC39DgWg
 JKcadvQa1LJYc2UJEel3j25nMFdxQuyIIFC8QRhieFUTPrGTWb+07e39T
 x10wwQybZiI0+AdCp+3JeAF4NbFoU41iNcTnlK2Yzu+anAwIjDwUJEr0a
 UY33cbxJVKI4r9sZxbgfIyMfnxup9nYRd5Lr+o1w5wxatcufEbKwejCuj Q==;
X-CSE-ConnectionGUID: 9aMp9VUIQt+N7loUhFZCcw==
X-CSE-MsgGUID: VK5Z7tCoT0iO5ZAGNkRO+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434057"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434057"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:06 -0700
X-CSE-ConnectionGUID: +tXA5SBkSiyAUqqAxDK1NA==
X-CSE-MsgGUID: 2ptmstsxSwm00AM6vQhgrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725553"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 00/13] Enable/Disable DC balance along with VRR DSB
Date: Mon, 21 Apr 2025 21:18:47 +0530
Message-ID: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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

Control DC Balance Adjustment bit to accomodate changes along
with VRR DSB implementation.

Mitul Golani (7):
  drm/i915/display: Add source param for dc balance
  drm/i915/vrr: Add enable/disable calls for DC Balance
  drm/i915/vrr: Add compute config for DC balance params
  drm/i915/vrr: Add state dump for dc balance params
  drm/i915/vrr: Add state checker for dc balance params
  drm/i915/display: Prepare state checker for dc balance enable
  drm/i915/vrr: enable dc balance bit

Ville Syrjälä (6):
  drm/i915/vrr: Refactor vmin/vmax stuff
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Pause DC balancing for DSB commits

 .../drm/i915/display/intel_crtc_state_dump.c  |   9 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  21 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  24 ++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  80 +++++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 ++-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 210 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  66 ++++++
 12 files changed, 452 insertions(+), 40 deletions(-)

-- 
2.48.1

