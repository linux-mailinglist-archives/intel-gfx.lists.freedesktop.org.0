Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 973106EA998
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE92310EDF6;
	Fri, 21 Apr 2023 11:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F4A10EDF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077679; x=1713613679;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Cm9vWHmDJi2ZpbyxmOQeTlru7/Xsg8bGEh6JcRe8odM=;
 b=QwNR++JMvI7EB/5dyQU/jchFZIRpFHQ9kq1Mz35MVjEeAd6xiMUOn+Yn
 W+BJ7ygO/p47874i/WgtEL/SHO2XvybbcczCdV+lUZYP8jANfWYhzQ1KI
 8YS2dGJYGnkYvRUMmAZIA3Vm4VV8r5B+NuSlZ5h/kKjWmgxsDgAz8cVG+
 lFPWTUUityO6RjqxIj6loqQLTFbm2X2FSGhzIyIYpjWit+pBp1a6u7IBw
 wLkgQbaU5ojNL8fYdc5rqINOGrM63YHqh2ZL3IDRFIG6h3y3nFfapeXzX
 AnKM3uxvpBInFJnTwKWcMlA8tUywJDfCuiuB/cJwG3zxx4O4fsd46kNQp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344730234"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344730234"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="685709366"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685709366"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:47:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:38 +0300
Message-Id: <cover.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/display & drm/i915: more struct
 drm_edid conversions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move struct drm_edid conversions forward.

There are still some drm_edid_raw() stragglers, but this nudges things
forward nicely.

Jani Nikula (13):
  drm/edid: parse display info has_audio similar to is_hdmi
  drm/display/dp_mst: drop has_audio from struct drm_dp_mst_port
  drm/i915/dp: stop caching has_audio in struct intel_dp
  drm/i915/dp: stop caching has_hdmi_sink in struct intel_dp
  drm/i915/hdmi: stop caching has_audio in struct intel_hdmi
  drm/i915/hdmi: stop caching has_hdmi_sink in struct intel_hdmi
  drm/i915/sdvo: stop caching has_hdmi_monitor in struct intel_sdvo
  drm/i915/sdvo: stop caching has_hdmi_audio in struct intel_sdvo
  drm/edid: add drm_edid_read_switcheroo()
  drm/i915/lvds: switch to drm_edid_read_switcheroo()
  drm/edid: make drm_edid_duplicate() safe to call with NULL parameter
  drm/display/dp_mst: convert to struct drm_edid
  drm/i915/display: switch the rest of the connectors to struct drm_edid

 drivers/gpu/drm/display/drm_dp_mst_topology.c |  55 +++++++--
 drivers/gpu/drm/drm_edid.c                    |  38 +++++++
 .../gpu/drm/i915/display/intel_connector.c    |  18 +--
 .../gpu/drm/i915/display/intel_connector.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  34 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 .../drm/i915/display/intel_display_debugfs.c  |  14 +--
 .../drm/i915/display/intel_display_types.h    |   4 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  26 ++---
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  14 +--
 drivers/gpu/drm/i915/display/intel_lvds.c     |  13 +--
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 107 +++++++++---------
 include/drm/display/drm_dp_mst_helper.h       |  14 +--
 include/drm/drm_connector.h                   |   8 ++
 include/drm/drm_edid.h                        |   2 +
 17 files changed, 217 insertions(+), 153 deletions(-)

-- 
2.39.2

