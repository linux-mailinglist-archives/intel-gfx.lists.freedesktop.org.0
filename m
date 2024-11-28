Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F08569DBAAA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 16:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9359C10ECEE;
	Thu, 28 Nov 2024 15:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cQF/yqu5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DF610ECF0;
 Thu, 28 Nov 2024 15:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732808337; x=1764344337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c/87n4iZS5n8u6v4UylcqiJlynnlkh0Ik/RdUWATjFc=;
 b=cQF/yqu5EL/II0RUNezj5qu4H7/avcex8QHfXo4m6GE7XQlh/DLKaI4n
 mDGVuPctWmhemVvKM+v5yRnnX9CE9nECpG47LREBBWNw61Kuk01/kUW3G
 pICvW3Qx7ojoWzxft6oc0hKhM+3/ZpJKXw2F8PnDfoqc0IQR6OCEqDx3o
 nt6fi0gKE8Bss6kAdygLdB6DkmImTiw6KiRMQrIv+80j5N+Dbd+NHehR2
 SON2ssBEyVQwKoQJF2+ANipHMwe/aMycUaVR0PtAgl5lPP2Xru6CZAMQc
 WZ3MFdkXTZO78JYikLsjOUGDntRIoBPpHxKo/PYhdtpllgqf18W39i0G7 Q==;
X-CSE-ConnectionGUID: OqRf3pJiRt+HvjTSaj+Ymg==
X-CSE-MsgGUID: lTq+hZz4Sk6D4M6ERH3jMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="32905989"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="32905989"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:30 -0800
X-CSE-ConnectionGUID: Gcp+rlIQSCOymJQYYflRww==
X-CSE-MsgGUID: tW5rtZUORjO1eReqwJjagQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92137502"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 0/6] drm/i915/display: power conversion to struct
 intel_display
Date: Thu, 28 Nov 2024 17:38:18 +0200
Message-Id: <cover.1732808222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

This is v2 of [1] with patch 1 dropped, and some minor checkpatch issues
fixed.

[1] https://lore.kernel.org/r/cover.1732727056.git.jani.nikula@intel.com

Jani Nikula (6):
  drm/i915/display: convert for_each_power_well() to struct
    intel_display
  drm/i915/display: convert for_each_power_domain_well() to struct
    intel_display
  drm/i915/display: convert power wells to struct intel_display
  drm/i915/display: convert power domain code internally to struct
    intel_display
  drm/i915/display: convert high level power interfaces to struct
    intel_display
  drm/i915/display: convert power map to struct intel_display

 .../drm/i915/display/intel_display_debugfs.c  |   3 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   3 +-
 .../drm/i915/display/intel_display_power.c    | 948 +++++++++---------
 .../drm/i915/display/intel_display_power.h    |  31 +-
 .../i915/display/intel_display_power_map.c    |  56 +-
 .../i915/display/intel_display_power_well.c   | 548 +++++-----
 .../i915/display/intel_display_power_well.h   |  35 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   7 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  32 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  28 +-
 15 files changed, 870 insertions(+), 843 deletions(-)

-- 
2.39.5

