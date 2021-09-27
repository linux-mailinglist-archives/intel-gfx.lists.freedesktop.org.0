Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9EE419E1F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 20:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD73889FF7;
	Mon, 27 Sep 2021 18:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F3789FF7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 18:24:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="221332867"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="221332867"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:24:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="615925980"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 27 Sep 2021 11:24:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Sep 2021 21:24:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 21:24:46 +0300
Message-Id: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: DP per-lane drive settings prep
 work
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

I had a few hours to burn the other day and so ended up accidentally
implementing per-lane drive settings for DP. This series contains
just the platform agnostic prep parts, and enabling it for LTTPRs.
I'll follow up with the platform specific hw pokey stuff later.

Ville Syrjälä (9):
  drm/i915: s/ddi_translations/trans/
  drm/i915: Generalize .set_signal_levels()
  drm/i915: Nuke usless .set_signal_levels() wrappers
  drm/i915: De-wrapper bxt_ddi_phy_set_signal_levels()
  drm/i915: Hoover the level>=n_entries WARN into intel_ddi_level()
  drm/i915: Nuke intel_ddi_hdmi_num_entries()
  drm/i915: Pass the lane to intel_ddi_level()
  drm/i915: Prepare link training for per-lane drive settings
  drm/i915: Allow per-lane drive settings with LTTPRs

 drivers/gpu/drm/i915/display/g4x_dp.c         |  33 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 310 +++------
 drivers/gpu/drm/i915/display/intel_ddi.h      |   7 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    | 640 +++++++++---------
 .../drm/i915/display/intel_ddi_buf_trans.h    |   4 -
 .../drm/i915/display/intel_display_types.h    |   5 +-
 .../drm/i915/display/intel_dp_link_training.c |  73 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  28 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |   5 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  21 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   5 +-
 11 files changed, 530 insertions(+), 601 deletions(-)

-- 
2.32.0

