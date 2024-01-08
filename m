Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFF2827B39
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8467410E327;
	Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62C310E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755221; x=1736291221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AQpHEgZvfbZG7xRLY8aWdzoMKqCXBTGe/uxp+0epdOk=;
 b=TTuL1kmuf7lBSwXNaH2uKJz6C+ofxHi3O0z5/yBoTT2W3ji4in5dcUUx
 egrIrPoxpKlAA3dsv2RwLFq0/v5aoOV3S38qCmOrnbAiYmzB83yDfzQFN
 qMlY4M8BrOjnjkwbImwMEwO5GWTiwXMzI4P0HuDUFXWx1qqiku5sIH6B9
 RQGTAAR/J9Gs5hDlFIAmdbnAwN6vsrBHTnewxLzNf6s10dx7mxYnNZYs4
 kgH8XdRq/95k7WkUMlkNbnEhLElIB9G97B49ms0Wo1xOPiKWWDwTngFCK
 3CEZkrl4pTXvWtPm4b9x5LQyTrxrgx1lfkz3RRcxV/yP3a8jAeOETiTkX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514115"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514115"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647071"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647071"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 00/15] VBT read Cleanup
Date: Mon,  8 Jan 2024 15:05:02 -0800
Message-Id: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
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

This series does the VBT read cleanup. The series introduces new
intel_vbt structure to cache and collate vbt related info. Vbt
read from different sources viz. firmware/opregion/spi/oprom
needs to be cached for debug purposes and handled accordingly
during cleanup.

Radhakrishna Sripada (15):
  drm/i915: Extract display->vbt_data to a new vbt structure
  drm/i915: Move vbt fields from opregion to its own structure
  drm/i915: Cache opregion asls pointer
  drm/i915: Extract opregion vbt capture to its own function
  drm/i915: Init vbt fields when read from oprom/spi
  drm/i915: Classify vbt type based on its residence
  drm/i915: Collate vbt cleanup for different types
  drm/i915: Make intel_bios_init operate on intel_vbt
  drm/i915: Move vbt load from opregion to bios init
  drm/i915: Move vbt firmware load into intel_bios_init
  drm/i915: Make oprom_get_vbt operate on intel_vbt
  drm/i915: Make spi_oprom_get_vbt operate on intel_vbt
  drm/i915: Make intel_load_vbt_firmware operate on intel_vbt
  drm/i915: Kill reduntant vbt_firmware from intel_vbt
  drm/i915: Use vbt type to determine its validity

 drivers/gpu/drm/i915/display/intel_bios.c     | 348 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_crt.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../gpu/drm/i915/display/intel_display_core.h |  16 +-
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  16 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  19 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_opregion.c | 165 ++++-----
 drivers/gpu/drm/i915/display/intel_opregion.h |  13 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
 16 files changed, 348 insertions(+), 279 deletions(-)

-- 
2.34.1

