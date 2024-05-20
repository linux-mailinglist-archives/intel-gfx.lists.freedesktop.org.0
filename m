Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D138CA256
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF45010E48B;
	Mon, 20 May 2024 18:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e4H00xa8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2623510E17B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231500; x=1747767500;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dCs5w58nUiBthAncKu/uyM+CWHKbk87waPiAP5JvZ3M=;
 b=e4H00xa8yO+RC9a814mSKRQ9CVQgSm3hPBr+2V4dlOPv9AdWBg9xNN3z
 Wdp71dRtYvKM58k0n6Tnc/50nFsKlhPaac4J7Rj9cfH0NeHkjKyacIc62
 ox1BA1/mrKNshbwX9PyyqwjH4E0+5gMSFarF3o5kZD+hiXHAmMNustULI
 jDuWmXsYWT+P96JuYNQWO4VA2+SpjrvV+usA5lOj2apsOAY4XM1nUMxWB
 lfcPUq3iCbO2K+FABw7G3r95FTGxQKJe+5uYZUSCEO1B4LRDcQZe+Xq+l
 hf11HlJOtnq3FztSPhVI5OFcy/ZtiIXkQ/4Rw3XMMlql4YJ8Z4DHFQaO2 w==;
X-CSE-ConnectionGUID: ZV6RCGGRSxiVoN/I9Zms1w==
X-CSE-MsgGUID: k3Y0/1tKTw2j7x51jqcJsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218503"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218503"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:19 -0700
X-CSE-ConnectionGUID: whIFkXWzRX2UDdhU6oDXWg==
X-CSE-MsgGUID: j8X6xdj2S1eVEwa1qu98tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213828"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 00/21] drm/i915/dp_mst: Enable link training fallback
Date: Mon, 20 May 2024 21:57:58 +0300
Message-ID: <20240520185822.3725844-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

This is v2 of [1], addressing the feedback comments from Jani and Ville:

- Use a more generic 'link' substruct instead of 'link_train'. (Patch 2)
- Add the debugfs entries from intel_dp_link_training.c . (Patch 17-21)
- Add the link state check work to intel_digital_port instead of
  intel_dp, to allow using it later for HDMI. (Patch 7)
- Keep using the atomic state to look up MST connectors, avoiding the
  access to any object's current state. (Patch 9)
- Add a separate debugfs entry to get the max link rate/lane count.
  (Patch 18)

[1] https://lore.kernel.org/all/20240514191418.2863344-1-imre.deak@intel.com

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (21):
  drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
  drm/i915/dp: Move link train params to a substruct in intel_dp
  drm/i915/dp: Move link train fallback to intel_dp_link_training.c
  drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
  drm/i915: Factor out function to modeset commit a set of pipes
  drm/i915/dp: Use a commit modeset for link retraining MST links
  drm/i915/dp: Recheck link state after modeset
  drm/i915/dp: Reduce link params only after retrying with unchanged
    params
  drm/i915/dp: Pass atomic state to link training function
  drm/i915/dp: Send a link training modeset-retry uevent to all MST
    connectors
  drm/i915/dp: Use check link state work in the hotplug handler
  drm/i915/dp: Use check link state work in the detect handler
  drm/i915/dp: Use check link state work in the HPD IRQ handler
  drm/i915/dp: Disable link retraining after the last fallback step
  drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
  drm/i915/dp_mst: Enable link training fallback for MST
  drm/i915/dp: Add debugfs entries to set a target link rate/lane count
  drm/i915/dp: Add debugfs entries to get the max link rate/lane count
  drm/i915/dp: Add debugfs entry to force link training failure
  drm/i915/dp: Add debugfs entry to force link retrain
  drm/i915/dp: Add debugfs entry for link training info

 drivers/gpu/drm/i915/display/g4x_dp.c         |  29 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  64 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |  34 ++
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |  26 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 241 ++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |   8 +-
 .../drm/i915/display/intel_dp_link_training.c | 545 +++++++++++++++++-
 .../drm/i915/display/intel_dp_link_training.h |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  30 +-
 12 files changed, 805 insertions(+), 189 deletions(-)

-- 
2.43.3

