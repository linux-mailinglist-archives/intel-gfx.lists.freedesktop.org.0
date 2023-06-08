Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2E7728354
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 17:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49DC310E5CC;
	Thu,  8 Jun 2023 15:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB39110E5CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 15:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686237122; x=1717773122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6P3JJffNXb8XWfnJqtIC5oaV4omzJM/WS2tn3EFtwUs=;
 b=GALAtgVPCJEws0i2+rL/xJu4rH2PcBJfXuXyoYw0kPSIDdj/72FSDE0O
 A708l5/gZHVBd2RSuFyjzB/9xsz0iMQQXoXdZJ3e98pWI3qEUkNt8O9vj
 KXY7WVZ1DH99BvzjBvPwaQPeoz6qudPF0aajkGtkcOQgS9rBWZZ13pjja
 v6Io0N+VnM4nQKPxAx4SCkMOphwBNQu2d11dnAGw2KjWiN/HlaEwZ3gYk
 LbxFMblOWrXVmCqdUKIHQIVuZEIPPrtgkx6BwVTPM4gRX+2ZGuEP99WZP
 B3ZU8rrcozOROyYWmPLBGC0WSsPMvKZCjKc7modLeO382RY4BDodCJYpl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="423201554"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="423201554"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="956751456"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="956751456"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 18:09:01 +0300
Message-Id: <cover.1686236840.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: further device info cleanups
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Building on Matt's display info separation, we can finally trivially
make device info a const pointer to rodata.

BR,
Jani.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>


Jani Nikula (4):
  drm/i915: separate display info printing from the rest
  drm/i915: fix display info usage
  drm/i915: move display device and runtime info to struct intel_display
  drm/i915: make device info a const pointer to rodata

 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 .../gpu/drm/i915/display/intel_display_core.h |  9 ++++
 .../drm/i915/display/intel_display_device.c   | 21 ++++++++++
 .../drm/i915/display/intel_display_device.h   |  5 +++
 drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/i915/i915_drv.h               |  9 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |  6 +++
 drivers/gpu/drm/i915/i915_gpu_error.h         |  3 ++
 drivers/gpu/drm/i915/intel_device_info.c      | 42 +++----------------
 drivers/gpu/drm/i915/intel_device_info.h      |  4 --
 11 files changed, 58 insertions(+), 46 deletions(-)

-- 
2.39.2

