Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B17442F3DE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC816E2EF;
	Fri, 15 Oct 2021 13:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23286E2EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291396388"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="291396388"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="571765227"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 15 Oct 2021 06:39:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:01 +0300
Message-Id: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/20] drm/i915: Fix up DP DFP 4:2:0 handling
 more
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

Currently we're failing to respect the sink's max TMDS clock
in the DP HDMI DFP code, and exceeding them means the sink
won't show a picture [1]. So let's improve the situation by
checking those limits, and generally fixing up a bunch things
in the deep color/4:2:0 related stuff for both native HDMI
and DP HDMI DFPs.

The end result is fairly unified apporach to this stuff on
both sides of the aisle. There's probably more we could try
to abstract to share even more code. But that will need a lot
of actual thought so leave it for later.

The high level algorithm is basically now:
for_each(respect TMDS clock limits, disrespect TMDS clock limits)
	for_each(YCbCr 4:2:0 only, RGB 4:4:4, YCbCr 4:2:0 also)
		for_each(12bpc,10bpc,8bpc)
			compute_and_check_the_things
with some obvious tweaks for HDMI vs. DP specifics.

[1] https://gitlab.freedesktop.org/drm/intel/-/issues/4095

Ville Syrjälä (20):
  drm/i915/hdmi: Split intel_hdmi_bpc_possible() to source vs. sink pair
  drm/i915/hdmi: Introduce intel_hdmi_is_ycbr420()
  drm/i915/hdmi: Introduce intel_hdmi_tmds_clock()
  drm/i915/hdmi: Unify "4:2:0 also" logic between .mode_valid() and
    .compute_config()
  drm/i915/hdmi: Extract intel_hdmi_output_format()
  drm/i915/hdmi: Clean up TMDS clock limit exceeding user mode handling
  drm/i915/hdmi: Simplify intel_hdmi_mode_clock_valid()
  drm/i915/dp: Reuse intel_hdmi_tmds_clock()
  drm/i915/dp: Extract intel_dp_tmds_clock_valid()
  drm/i915/dp: Respect the sink's max TMDS clock when dealing with
    DP->HDMI DFPs
  drm/i915/dp: Extract intel_dp_has_audio()
  drm/i915/dp: s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
  drm/i915/dp: Reorder intel_dp_compute_config() a bit
  drm/i915/dp: Pass around intel_connector rather than drm_connector
  drm/i915/dp: Make intel_dp_output_format() usable for "4:2:0 also"
    modes
  drm/i915/dp: Rework HDMI DFP TMDS clock handling
  drm/i915/dp: Add support for "4:2:0 also" modes for DP
  drm/i915/dp: Duplicate native HDMI TMDS clock limit handling for DP
    HDMI DFPs
  drm/i915/dp: Fix DFP rgb->ycbcr conversion matrix
  drm/i915/dp: Disable DFP RGB->YCbCr conversion for now

 drivers/gpu/drm/i915/display/intel_dp.c   | 339 +++++++++++++---------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 220 ++++++++------
 drivers/gpu/drm/i915/display/intel_hdmi.h |   5 +-
 3 files changed, 342 insertions(+), 222 deletions(-)

-- 
2.32.0

