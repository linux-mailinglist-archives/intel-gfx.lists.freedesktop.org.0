Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A51318D9D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 897976EE33;
	Thu, 11 Feb 2021 14:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944E16EE33
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:52:29 +0000 (UTC)
IronPort-SDR: c8ywSJxZfMvvoKcj4so2UV6WWnG6/TDkQYpinm+ZFanUVEhQI2XjTGmqT2+RMQOyQjuA5LZtvL
 5Tqjm7EdvWxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182383383"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="182383383"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:28 -0800
IronPort-SDR: G2qICMDpxxN+gjKya/qydiVYSg4OAqEX8obyENRcWRPhyg1ZFpGHdjVu2d6QCZYDWzZ4Z4TYq/
 8M+dbMF1DpnQ==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="397339815"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:10 +0200
Message-Id: <cover.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/9] drm/i915/edp: enable eDP Multi-SST
 Operation (MSO)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series enables eDP Multi-SST Operation (MSO) on TGL+.

MSO splits the full panel into 2 or 4 segments horizontally. The EDID contains
timings for one segment, and we'll need to use them for transcoder timings as
well as data M/N calculation. We shove the segment timings to
adjusted_mode->crtc_*. Otherwise, we'll need to use full panel timings.

There's a bunch of back and forth conversion to transparently present the full
mode to userspace. Not sure if there's a better way as different places require
conversion of different fields. Otherwise the splitter configuration is trivial.

The segments may include 0-8 pixels overlap. The overlap is defined in DisplayID
2.0 for which we don't have parsing. Hopefully we can insert the overlap in one
place if required, however this has not been tested as the panel at hand does
not use overlap.


BR,
Jani.


Jani Nikula (9):
  drm/dp: add MSO related DPCD registers
  drm/i915/edp: reject modes with dimensions other than fixed mode
  drm/i915/edp: always add fixed mode to probed modes in ->get_modes()
  drm/i915/edp: read sink MSO configuration for eDP 1.4+
  drm/i915/reg: add stream splitter configuration definitions
  drm/i915/mso: add splitter state readout for platforms that support it
  drm/i915/mso: add splitter state check
  drm/i915/edp: modify fixed and downclock modes for MSO
  drm/i915/edp: enable eDP MSO during link training

 drivers/gpu/drm/i915/display/intel_ddi.c      |  74 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  48 +++++++-
 .../drm/i915/display/intel_display_types.h    |   9 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 112 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   3 +
 include/drm/drm_dp_helper.h                   |   5 +
 7 files changed, 242 insertions(+), 11 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
