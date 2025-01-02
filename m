Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938F19FF6F6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 09:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A82210E3BB;
	Thu,  2 Jan 2025 08:36:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WArIHu0d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA3610E3B6;
 Thu,  2 Jan 2025 08:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735807011; x=1767343011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1/m2PWWmBkf74K/KqN8hNhEBENIU+t7039XDrO5HxV4=;
 b=WArIHu0dU2gHEwFxQvmFXNSosIJxw81djEtym9RuRmDVjKQPaNF0k86U
 jYBy4R2QmhN6RPotpAnV7ER8V7wukzXWA8DTLHN9GzPma8KP4nr2f3Uxo
 IoFAHMRnDsRv+m3FYiSy/glLmH/jzFRZx1WHptOtxu+SJ3nxDTLtbZUiJ
 R8Ykp49uo34pdFOS7Outwoi40OGqtlXsjYszCXMXkSSDRsLLAnWN917si
 Wrn5vkRANgb3F+VNb49LEJChLAx9zlw+eAeAQ93hKF15B5bVpcDxgrCJh
 1bx4ckCHkR+bolsCPC4hOW2CeQATOZz9IfcsjTQE9bUqYzD0oXVR1HrFd w==;
X-CSE-ConnectionGUID: rtQv31VaTR+rAWI4AIvZZQ==
X-CSE-MsgGUID: 3T6/dUYET6iAA7d7j9nsaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="23626892"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="23626892"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:36:51 -0800
X-CSE-ConnectionGUID: sA9ngilKQEy7d+ejGq5ILw==
X-CSE-MsgGUID: MqxJIbEdSbKuZsbpiPik9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="106314121"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.76])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:36:49 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/9] PSR DSB support
Date: Thu,  2 Jan 2025 10:36:29 +0200
Message-ID: <20250102083638.2552066-1-jouni.hogander@intel.com>
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

This patch set is doing necessary modifications to support PSR update
using DSB on LunarLake onwards

It is not necessary to wait for PSR1 to idle or PSR2 to exit DEEP
sleep at the begin of commit This is left out from DSB commit. There
might be room for optimization for non-DSB as well because such wait
is not supposed to be necessary at the begin of update.

PSR mutex is not locked when performing DSB commit. It is not
necessary as we are currently using DSB only when sending updates
towards panel. I.e. not using it when changing PSR mode. Also
necessary changes are made to use PSR2_MAN_TRK_CTL only in
DSB. Frontbuffer updates and legacy cursor updates are using SFF_CTL
register to perform full frame updates.

v2:
  - use _MMIO_TRANS instead of _MMIO_TRANS2
  - drop evasion from intel_psr_configure_full_frame_update

Jouni Högander (9):
  drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to send full update
  drm/i915/psr: Rename psr_force_hw_tracking_exit as
    intel_psr_force_update
  drm/i915/psr: Split setting sff and cff bits away from
    intel_psr_force_update
  drm/i915/psr: Add register definitions for SFF_CTL and CFF_CTL
    registers
  drm/i915/psr: Use SFF_CTL on invalidate/flush for LunarLake onwards
  drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL using DSB
  drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling when DSB is in use
  drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
  drm/i915/psr: Allow DSB usage when PSR is enabled

 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 119 ++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.h      |   4 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  10 ++
 5 files changed, 73 insertions(+), 73 deletions(-)

-- 
2.43.0

