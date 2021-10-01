Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7644F41EE0E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969F36ECE4;
	Fri,  1 Oct 2021 13:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C63E6E505
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:01:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="223525164"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="223525164"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="480439093"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 01 Oct 2021 06:01:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 16:00:57 +0300
Message-Id: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/10] drm/i915: DP per-lane drive settings
 prep work
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

Revised set after I fixed the DDI_BUF_CTL stuff Imre
pointed out. Also pushed the first s/ddi_translation/trans/
rename patch already.

There are two new patches at the start of the series to
refactor some platform checks into a more sensible form.

Ville Syrjälä (10):
  drm/i915: Introduce has_iboost()
  drm/i915: Introduce has_buf_trans_select()
  drm/i915: Generalize .set_signal_levels()
  drm/i915: Nuke useless .set_signal_levels() wrappers
  drm/i915: De-wrapper bxt_ddi_phy_set_signal_levels()
  drm/i915: Hoover the level>=n_entries WARN into intel_ddi_level()
  drm/i915: Nuke intel_ddi_hdmi_num_entries()
  drm/i915: Pass the lane to intel_ddi_level()
  drm/i915: Prepare link training for per-lane drive settings
  drm/i915: Allow per-lane drive settings with LTTPRs

 drivers/gpu/drm/i915/display/g4x_dp.c         |  33 +--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 244 ++++++------------
 drivers/gpu/drm/i915/display/intel_ddi.h      |   7 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |  20 --
 .../drm/i915/display/intel_ddi_buf_trans.h    |   4 -
 .../drm/i915/display/intel_display_types.h    |   5 +-
 .../drm/i915/display/intel_dp_link_training.c |  83 ++++--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  28 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |   5 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   9 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   5 +-
 11 files changed, 196 insertions(+), 247 deletions(-)

-- 
2.32.0

