Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E317A9DEC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEC510E55E;
	Thu, 21 Sep 2023 19:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50DA10E55E
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325899; x=1726861899;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lGvcGQ5iuGMLXWLumw1h5tkVf3QYxd690uD2Tp33DiQ=;
 b=NOfA2cA/OnjROybtCFHBX/ClmXtN3cg54Bu+f3Zme/5iQo/RgNMrLgkw
 Mztz+StQFEtTtvCiTcsijOXwh6w721BV7qc50P7P/VUYxxLGtan4kTdxo
 xY1MKUaWxt/W76Dwu+HaD+pc8/TGK2XObQM3BqubPC8j+6AuPrTgVcLgy
 oTUHJMu2fFs3DvNy2j7vmurHPoZwTmBKGpWDOPkaUj0OBqcFNWznM178t
 SxrqaXEx6Tsv6L9eaOBECkHNtg40+Dne75UbP5Xr090OfT+DH1ZmpLcu3
 /S1UBtVw7SDZVNmfA7qJlxkrw5GgY4w3E2vfAQFNQ43g4ToS2I+MQeoqt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523058"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523058"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523701"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523701"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:48 +0300
Message-Id: <20230921195159.2646027-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: Improve BW management on FDI
 links
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is the first half of patchset [1] enabling the BW management on FDI
links, addressing the review comments and adding R-bs.

[1] https://lore.kernel.org/all/20230914192659.757475-1-imre.deak@intel.com

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>

Imre Deak (11):
  drm/i915/dp: Factor out helpers to compute the link limits
  drm/i915/dp: Track the pipe and link bpp limits separately
  drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
  drm/i915/dp: Update the link bpp limits for DSC mode
  drm/i915/dp: Limit the output link bpp in DSC mode
  drm/i915: Add helper to modeset a set of pipes
  drm/i915: Rename intel_modeset_all_pipes() to
    intel_modeset_all_pipes_late()
  drm/i915: Factor out a helper to check/compute all the CRTC states
  drm/i915: Add helpers for BW management on shared display links
  drm/i915/fdi: Improve FDI BW sharing between pipe B and C
  drm/i915/fdi: Recompute state for affected CRTCs on FDI links

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   7 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 261 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_display.h  |   6 +-
 .../drm/i915/display/intel_display_types.h    |  26 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 170 +++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |  15 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 106 ++++---
 drivers/gpu/drm/i915/display/intel_fdi.c      | 162 +++++++++--
 drivers/gpu/drm/i915/display/intel_fdi.h      |   8 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 212 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_link_bw.h  |  37 +++
 drivers/gpu/drm/i915/display/intel_lvds.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  11 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 18 files changed, 872 insertions(+), 171 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.h

-- 
2.37.2

