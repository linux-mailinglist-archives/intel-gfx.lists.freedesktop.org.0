Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B25124EB228
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E28F10F108;
	Tue, 29 Mar 2022 16:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C5910F108
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572526; x=1680108526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xz2ncI/mrVrcBOhR3XLw7tnApuKF1uv8UswXUI4aIWU=;
 b=GaKw/sV3mepikuOlcyKVzNUUU+APkxgJiv81HL6zFiWJAGIpoqmtv7Da
 sy8mKl7CXRxESdu1G9dsok1dY1yYQBSTUvrmaFtXVq9OmixjxkGnEe/4B
 U72q/pVVYDZoTjV6u8z0D5qppMiosQfjr8FXZEryYf3zDUytBc2wTGEhy
 RhGU2x7bbnrWWgn30aRG0s8/iZZG/TN0hiCbwFBdqYIID0P2AO8MX+45M
 uG4dn9Q/bGZTsI8EM3YziTVxCgDqG2bKoaxIF+vth6SFSkKW4yObQn9eT
 cRxW5OwDPKGTvE9HKmpmikXLaZtqY00jDyg4MmJzU4SNFdpoS98MBV4S7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259020744"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259020744"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521513802"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:18 +0300
Message-Id: <20220329164336.1199359-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/18] drm/i915: Refactor the display power
 domain mappings
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v3 of the second half of [1], rebased on drm-tip (containing the
first half [2]), addressing the review comments from Jouni and with a
minor documentation/rename change in patch 3.

[1] https://patchwork.freedesktop.org/series/99476/
[2] https://patchwork.freedesktop.org/series/100591/

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (18):
  drm/i915: Move per-platform power well hooks to intel_display_power_well.c
  drm/i915: Unexport the for_each_power_well() macros
  drm/i915: Move the power domain->well mappings to intel_display_power_map.c
  drm/i915: Move the dg2 fixed_enable_delay power well param to a common bitfield
  drm/i915: Move the HSW power well flags to a common bitfield
  drm/i915: Rename the power domain names to end with pipes/ports
  drm/i915: Sanitize the power well names
  drm/i915: Convert the power well descriptor domain mask to an array of domains
  drm/i915: Convert the u64 power well domains mask to a bitmap
  drm/i915: Simplify power well definitions by adding power well instances
  drm/i915: Allow platforms to share power well descriptors
  drm/i915: Simplify the DG1 power well descriptors
  drm/i915: Sanitize the ADL-S power well definition
  drm/i915: Sanitize the port -> DDI/AUX power domain mapping for each platform
  drm/i915: Remove the aliasing of power domain enum values
  drm/i915: Remove the ICL specific TBT power domains
  drm/i915: Remove duplicate DDI/AUX power domain mappings
  drm/i915: Remove the XELPD specific AUX and DDI power domains

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |    3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |    3 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |    8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |    6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  150 +-
 drivers/gpu/drm/i915/display/intel_display.h  |    4 +-
 .../drm/i915/display/intel_display_power.c    | 4477 ++---------------
 .../drm/i915/display/intel_display_power.h    |  122 +-
 .../i915/display/intel_display_power_map.c    | 1501 ++++++
 .../i915/display/intel_display_power_map.h    |   14 +
 .../i915/display/intel_display_power_well.c   | 1838 ++++++-
 .../i915/display/intel_display_power_well.h   |  132 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |    1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
 drivers/gpu/drm/i915/display/intel_tc.c       |    5 +-
 16 files changed, 3881 insertions(+), 4385 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_map.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_map.h

-- 
2.30.2

