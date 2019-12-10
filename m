Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B73D118581
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:51:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E496E8A5;
	Tue, 10 Dec 2019 10:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13116E8A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:51:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:07 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="203148640"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:44 +0200
Message-Id: <cover.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 00/16] drm/i915/dsi: enable DSC
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

v4.1 of https://patchwork.freedesktop.org/series/69540/

I screwed up the state readout, need to check for source support for DSC
(d'oh!) and that the relevant domain has power (d'oh!). CI to the
rescue.

Added patch 7 and updated patch 8 to fix this. Didn't trust patchwork to
figure this out by replying to the previous version, so unfortunately
you'll get the whole series. Only slightly modified so series v4.1. ;)

BR,
Jani.


Jani Nikula (15):
  drm/i915/bios: pass devdata to parse_ddi_port
  drm/i915/bios: parse compression parameters block
  drm/i915/bios: add support for querying DSC details for encoder
  drm/i915/dsc: move DP specific compute params to intel_dp.c
  drm/i915/dsc: move slice height calculation to encoder
  drm/i915/dsc: add support for computing and writing PPS for DSI
    encoders
  drm/i915/dsc: make DSC source support helper generic
  drm/i915/dsc: add basic hardware state readout support
  drm/i915/dsi: set pipe_bpp on ICL configure config
  drm/i915/dsi: abstract afe_clk calculation
  drm/i915/dsi: use afe_clk() instead of intel_dsi_bitrate()
  drm/i915/dsi: take compression into account in afe_clk()
  drm/i915/dsi: use compressed pixel format with DSC
  drm/i915/dsi: account for DSC in horizontal timings
  drm/i915/dsi: add support for DSC

Vandita Kulkarni (1):
  drm/i915/dsi: Fix state mismatch warns for horizontal timings with DSC

 drivers/gpu/drm/i915/display/icl_dsi.c        | 198 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_bios.c     | 167 ++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |   5 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  86 ++++++--
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 140 ++++++++-----
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   4 +
 9 files changed, 484 insertions(+), 124 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
