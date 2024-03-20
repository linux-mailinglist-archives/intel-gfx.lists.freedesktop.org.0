Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D7B8814DB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:48:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8BF10FC95;
	Wed, 20 Mar 2024 15:48:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eL3XBOvV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8CD10E55C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949691; x=1742485691;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D9RF22suYdiP9T2in0C7/aePsTsPNu3p5qfx48snjsI=;
 b=eL3XBOvVYTxDY4AEEcIYj8mF2RXRLq1GCWJe4GCj2eOORhsxUlwRLmXr
 QNhPfkDit+gONzSVnqtyfLt6gAW3uU+o0HMUBrEKpba6kOLuz5hp4FwjD
 6yJxk3XVGKd+ynDWDQHs0JnFSjXH+e1KISSITgmxjVRb4aqPfYB6wtW7r
 KdEoxOybKtllA81PLHm04gHiC/bqEJNoWvhpTTnXKLmsAxOHX3O+lgKz+
 y6LcyJZwFBrwzzdHHUto5a9huIDuuMjQU/oUIl57p1bD1KxA/kB04WJWM
 qdW1yfTMkYE+TGGhme4z+inLIN4NsUoHwrsTMRatHsKFiE2anIocEV1lJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5728587"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5728587"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="37308438"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [CI 0/7] drm/i915: pass encoder around more for port/phy checks
Date: Wed, 20 Mar 2024 17:47:57 +0200
Message-Id: <cover.1710949619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

v1 after the reviewed RFC [1].

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1710253533.git.jani.nikula@intel.com

Jani Nikula (7):
  drm/hdmi: convert *_port_to_ddc_pin() to *_encoder_to_ddc_pin()
  drm/i915/ddi: pass encoder to intel_wait_ddi_buf_active()
  drm/i915/snps: pass encoder to intel_snps_phy_update_psr_power_state()
  drm/i915/display: add intel_encoder_is_*() and _to_*() functions
  drm/i915/display: use intel_encoder_is/to_* functions
  drm/i915/cx0: remove the unused intel_is_c10phy()
  drm/i915/cx0: pass encoder instead of i915 and port around

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 299 +++++++++---------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 127 ++++----
 .../drm/i915/display/intel_ddi_buf_trans.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  40 +++
 drivers/gpu/drm/i915/display/intel_display.h  |   7 +
 .../i915/display/intel_display_power_well.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  15 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  22 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  80 ++---
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  14 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  16 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  33 +-
 15 files changed, 339 insertions(+), 344 deletions(-)

-- 
2.39.2

