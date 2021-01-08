Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676802EF6AA
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:44:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37336E84E;
	Fri,  8 Jan 2021 17:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D316E84E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:44:33 +0000 (UTC)
IronPort-SDR: xDATSjuuEnOwWcBmw3tfNv7tGcmLV911gnoJLE1ZWGl3M6hPdFOQt2CQGM64jte/Ef7A1jN/rq
 NWX3KQk2UIhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="241704762"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="241704762"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:32 -0800
IronPort-SDR: /tOVy1W8kaAVJJxyxqLavrq1Wdj4outJlIr5NTzGxizTm3DCn1CKIuvKXumBPkDFMjIzpg0S06
 gCLVb8Opy8cQ==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="423014727"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:44:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:08 +0200
Message-Id: <cover.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/17] drm/i915/dp: split out pps and aux
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

This is v2 of [1], with comments from Anshuman addressed, and a few additional
patches at the end.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/85167/


Jani Nikula (17):
  drm/i915/pps: abstract panel power sequencer from intel_dp.c
  drm/i915/pps: rename pps_{,un}lock -> intel_pps_{,un}lock
  drm/i915/pps: rename intel_edp_backlight_* to intel_pps_backlight_*
  drm/i915/pps: rename intel_edp_panel_* to intel_pps_*
  drm/i915/pps: rename edp_panel_* to intel_pps_*_unlocked
  drm/i915/pps: abstract intel_pps_vdd_off_sync
  drm/i915/pps: add higher level intel_pps_init() call
  drm/i915/pps: abstract intel_pps_encoder_reset()
  drm/i915/pps: rename intel_dp_check_edp to
    intel_pps_check_power_unlocked
  drm/i915/pps: rename intel_power_sequencer_reset to
    intel_pps_reset_all
  drm/i915/pps: add locked intel_pps_wait_power_cycle
  drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init
  drm/i915/pps: rename intel_dp_init_panel_power_sequencer* functions
  drm/i915/pps: refactor init abstractions
  drm/i915/pps: move pps code over from intel_display.c and refactor
  drm/i915/dp: abstract struct intel_dp pps members to a sub-struct
  drm/i915/dp: split out aux functionality to intel_dp_aux.c

 drivers/gpu/drm/i915/Makefile                 |    2 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |    9 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   41 +-
 drivers/gpu/drm/i915/display/intel_display.h  |    1 -
 .../drm/i915/display/intel_display_debugfs.c  |    8 +-
 .../drm/i915/display/intel_display_power.c    |    6 +-
 .../drm/i915/display/intel_display_types.h    |   61 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 2249 +----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |    5 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  687 +++++
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |   18 +
 drivers/gpu/drm/i915/display/intel_pps.c      | 1406 +++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h      |   52 +
 drivers/gpu/drm/i915/i915_drv.c               |    1 +
 14 files changed, 2312 insertions(+), 2234 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_pps.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pps.h

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
