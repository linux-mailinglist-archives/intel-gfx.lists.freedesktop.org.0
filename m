Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FB7CD8E67
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081E310E0B9;
	Tue, 23 Dec 2025 10:45:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O6k0YBuO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE4410E0B9;
 Tue, 23 Dec 2025 10:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766486708; x=1798022708;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CXviflxflEKYouL8Sc/yECz+sjuWylmgjPrftWEy9ck=;
 b=O6k0YBuOD7K7tDUu0d1UlvdabbdC2I7NR6nUfoAA4KJl6Wqf9FGsTrk/
 J1C5CcbWER4ay6DzRIR0IibAeM9epGO/baui9ae5Xe5taPQ5ShqrZElPy
 EwhWsFiSrHTm+PCT2M8sTlw80EPhJP7OXKpTgfqGq9ZDBMyKWM8jLEHen
 4wW9csMRWoxXWqpva+7CtZDp6gKuwJW+nM2NpbsVKYYHlGbsm2EhwJp/v
 tzZg8KykSr2ptTn0Yo9jpMmgWkiWfAcFicKCfhJ12ZdyfDtySxM1891M0
 Z8C0tYKKsacGFaUiAkTYfkj5xQfUAELfy0KhXjzVzsMSxylJ3yApu/szC Q==;
X-CSE-ConnectionGUID: TfhT1AaTTKWSoWUzJSb6jA==
X-CSE-MsgGUID: YK8+0n1vT4WJLw/QtTgfSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68089965"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68089965"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:45:08 -0800
X-CSE-ConnectionGUID: SAKQ75NfSUC8RexkWpPHMw==
X-CSE-MsgGUID: GbuambCpRLuS5/3uyzoeoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199734446"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 23 Dec 2025 02:45:03 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v11 00/18] Enable/Disable DC balance along with VRR DSB
Date: Tue, 23 Dec 2025 16:15:22 +0530
Message-ID: <20251223104542.2688548-1-mitulkumar.ajitkumar.golani@intel.com>
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

Mitul Golani (12):
  drm/i915/display: Add source param for dc balance
  drm/i915/vrr: Add VRR DC balance registers
  drm/i915/vrr: Add DC Balance params to crtc_state
  drm/i915/vrr: Add state dump for DC Balance params
  drm/i915/vrr: Add compute config for DC Balance params
  drm/i915/vrr: Add function to check if DC Balance Possible
  drm/i915/vrr: Add function to reset DC balance accumulated params
  drm/i915/display: Add DC Balance flip count operations
  drm/i915/vrr: Write DC balance params to hw registers
  drm/i915/display: Wait for VRR PUSH status update
  drm/i915/display: Add function to configure event for dc balance
  drm/i915/vrr: Enable DC Balance

Ville Syrjälä (6):
  drm/i915/dmc: Add pipe dmc registers and bits for DC Balance
  drm/i915/vrr: Add functions to read out vmin/vmax stuff
  drm/i915/vblank: Extract vrr_vblank_start()
  drm/i915/vrr: Implement vblank evasion with DC balancing
  drm/i915/dsb: Add pipedmc dc balance enable/disable
  drm/i915/vrr: Pause DC Balancing for DSB commits

 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +
 drivers/gpu/drm/i915/display/intel_display.c  |  30 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  11 +
 drivers/gpu/drm/i915/display/intel_dmc.c      |  25 ++
 drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  60 ++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  31 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  33 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 281 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h      |  10 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  68 +++++
 12 files changed, 556 insertions(+), 7 deletions(-)

-- 
2.48.1

