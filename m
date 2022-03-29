Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7584EAFD0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09AB710E8BF;
	Tue, 29 Mar 2022 15:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110E510E8BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566465; x=1680102465;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=96RnxXyYNCXTVIhu46nZL+2CyL3JVrhECSB7GOFPIqg=;
 b=missS6itvs85hzaK2C4CyTJ0li4DXA/YbPtva78ISoSHZl/rBSr2DLkV
 tkfp6nrBps6LAX2XIRtI6+K2cSHL5Ho8B64xnqdfQE0pQW62ii0aY8vjr
 icGqpnm9gkRRpLYZWZkbCLpIXxJDlNjJJfnOSY/Q5O0pDGMZ9JZylkpAK
 bBbQsED3HJC3Frl+TNboNyVkBsIcoJ90Zup+rB6QA8VVLIGsW7Mll9PoC
 lj7B8sLp09pVhs+H4VdhlhqrocdcZhaoVVhK+WPO90MTZ2hvrxIQ2ZDf6
 TwGD53wZXG1Odhok20HT0jAo3OBUbG+dlkiKkHxCab2Vrjnnfl5BBh63G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="256849115"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="256849115"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:07:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="554291270"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 29 Mar 2022 08:07:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:07:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:31 +0300
Message-Id: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: Finish off static DRRS
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

(Hopefully) finish the static DRRS work:
- Finish off a bunch of fixed mode refactoring
- Allow fixed modes with any refresh rate, including ones
  that exceed the panel's preferred mode. Useful for laptops
  with high refresh rate panels (120-300Hz seen in the wild
  so far)
- Allow static DRRS on all eDP ports and the LVDS port since
  static DRRS is just a normal modeset and thus no special
  hardware support is required for it

Ville Syrjälä (11):
  drm/i915: Extract intel_edp_has_drrs()
  drm/i915: Put fixed modes directly onto the panel's fixed_modes list
  drm/i915: Refactor non-EDID fixed mode duplication
  drm/i915: Nuke intel_drrs_init()
  drm/i915: Combine the EDID fixed_mode+downclock_mode lookup into one
  drm/i915: Stop duplicating the EDID fixed/downclock modes
  drm/i915: Allow an arbitrary number of downclock modes
  drm/i915: Allow higher refresh rate alternate fixed modes
  drm/i915: Move intel_drrs_compute_config() into intel_dp.c
  drm/i915: Allow static DRRS on all eDP ports
  drm/i915: Allow static DRRS on LVDS

 drivers/gpu/drm/i915/display/icl_dsi.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_dp.c    |  98 +++++++--
 drivers/gpu/drm/i915/display/intel_drrs.c  | 114 ----------
 drivers/gpu/drm/i915/display/intel_drrs.h  |   5 -
 drivers/gpu/drm/i915/display/intel_dvo.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  |  32 ++-
 drivers/gpu/drm/i915/display/intel_panel.c | 237 +++++++++------------
 drivers/gpu/drm/i915/display/intel_panel.h |  21 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  10 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c     |   9 +-
 10 files changed, 228 insertions(+), 315 deletions(-)

-- 
2.34.1

