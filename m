Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B415437583
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 12:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4560B6ECFD;
	Fri, 22 Oct 2021 10:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F1F6ECFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 10:33:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="209379894"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="209379894"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 03:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="495625499"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 22 Oct 2021 03:33:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 13:33:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>
Date: Fri, 22 Oct 2021 13:32:55 +0300
Message-Id: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: Fix bigjoiner state readout
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

New version of the bigjoiner cleanup. Bunch of stuff already
merged, and the bigjoiner specific stuff is all reviewed now.

So all we're left to contend is the PSR related stuff at the
start. I slapped a new patch at the start which hopefully
sorts out the planes vs. PSR sticking point for full modesets
and lets us go back to the simpler modeset sequence.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>

Ville Syrjälä (9):
  drm/i915/psr: Disable PSR before modesets turn off all planes
  Revert "drm/i915/display: Disable audio, DRRS and PSR before planes"
  drm/i915: Disable all planes before modesetting any pipes
  drm/i915: Introduce intel_master_crtc()
  drm/i915: Simplify intel_crtc_copy_uapi_to_hw_state_nomodeset()
  drm/i915: Split PPS write from DSC enable
  drm/i915: Perform correct cpu_transcoder readout for bigjoiner
  drm/i915: Reduce bigjoiner special casing
  drm/i915: Nuke PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE

 drivers/gpu/drm/i915/display/icl_dsi.c        |   6 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  66 +--
 drivers/gpu/drm/i915/display/intel_display.c  | 433 ++++++++----------
 .../drm/i915/display/intel_display_types.h    |   5 -
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  14 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  25 +-
 drivers/gpu/drm/i915/display/intel_psr.h      |   3 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  33 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  10 +-
 10 files changed, 268 insertions(+), 329 deletions(-)

-- 
2.32.0

