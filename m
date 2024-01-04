Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C970823D6C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6459C10E310;
	Thu,  4 Jan 2024 08:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD4A10E310
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704356997; x=1735892997;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MxFSJHPfnrFwTF4qYjKs/t7x/tdDXstqmA5j+obPJIk=;
 b=POOrBZnA5N9FV/4iXNXAwPFJDukG6QRkyN2An85D3GHN1tf+E2tZqeWi
 ueoz7AGfMaKTQ6amBlwwtemu1tFviPMM21s3nvDalcAP2kah92gIewB0z
 6z88lT/K1OhhNJXtveLg7h6NLjE6tErUqD3k2Q2bnX++d0G9VGjUrPlgy
 NRWu7p0U6OZXRr1wQKAE8EPWqasXQkQswjE0oxHQfRVq5nSK9Ys3S12h9
 b/tSnfSlFQKzfXUTQXgwaMMzIUcJNGHO+bO0k/h/BNyuvl6hHefA8K5vW
 f04zDkgGVFNhxt8TYc34ytO2tVEK1tv4jO4YMlDI8zqueqmDATLwbdUN/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624502"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624502"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422617"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422617"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:29:56 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/12] drm/i915: Fix HPD handling during driver init/shutdown
Date: Thu,  4 Jan 2024 10:29:56 +0200
Message-Id: <20240104083008.2715733-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
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

Fix the handling of display connector hotplug handling during the driver
init/shutdown sequences. A hotplug event can result in a connector
detection/modeset running in parallel with the HW programming of the
init/shutdown sequence, or when the display IRQs are disabled already.

Also fix incorrectly detecting a disconnected state due to glitches on
the HPD line and prevent long timeout/retry delays during DP AUX
transfers on all DP connectors.

Imre Deak (12):
  drm/i915: Init DRM connector polled field early
  drm/i915: Keep the connector polled state disabled after storm
  drm/i915: Move audio deinit after disabling polling
  drm/i915: Disable intel HPD poll after DRM poll init/enable
  drm/i915: Suspend the framebuffer console during driver shutdown
  drm/i915: Suspend the framebuffer console earlier during system
    suspend
  drm/i915: Prevent modesets during driver init/shutdown
  drm/i915: Disable hotplug detection works during driver init/shutdown
  drm/i915: Disable hotplug detection handlers during driver
    init/shutdown
  drm/i915: Add intel_digital_port lock/unlock hooks
  drm/i915: Filter out glitches on HPD lines during hotplug detection
  drm/i915/dp: Abort AUX on disconnected native DP ports

 drivers/gpu/drm/i915/display/intel_crt.c      |   5 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../gpu/drm/i915/display/intel_display_core.h |  13 ++
 .../drm/i915/display/intel_display_driver.c   |  85 ++++++++-
 .../drm/i915/display/intel_display_driver.h   |   6 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  58 +++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  29 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   4 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |   5 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 165 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   4 +
 drivers/gpu/drm/i915/display/intel_panel.c    |   4 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   6 +
 drivers/gpu/drm/i915/display/intel_tc.c       |  24 ++-
 drivers/gpu/drm/i915/display/intel_tc.h       |   2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   5 +
 drivers/gpu/drm/i915/i915_driver.c            |  22 ++-
 21 files changed, 394 insertions(+), 63 deletions(-)

-- 
2.39.2

