Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40751284BAA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 14:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 147476E47B;
	Tue,  6 Oct 2020 12:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4116E47B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 12:33:11 +0000 (UTC)
IronPort-SDR: g9ouBlqFjcYq1XH+GyZSDD80wNd8R/DxGfFKXrLWl6dG/NKfASnJq1ocqQ2lVrnPo6fW7BRX+N
 lYa6tEN/DkBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161851683"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161851683"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:10 -0700
IronPort-SDR: 71qjsK2x04ogr9fpC1fR3oL5qbu9OyxzKpYo7NdfX5vpSs1d93+YH7Ee/opGtuJ3KuGvveMimm
 M0xSVzAPZmcw==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527333629"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:09 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 18:36:44 +0530
Message-Id: <20201006130654.331-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 00/10] Enable HDR on MCA LSPCON based Gen9 devices
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gen9 hardware supports HDMI2.0 through LSPCON chips. Extending HDR
support for MCA and Parade LSPCON based GEN9 devices.

SOC will drive LSPCON as DP and send HDR metadata as standard
DP SDP packets. LSPCON will be set to operate in PCON mode,
will receive the metadata and create Dynamic Range and
Mastering Infoframe (DRM packets) and send it to HDR capable
HDMI sink devices.

v2: Fixed Ville's review comments. Suppressed some warnings.
Patch 8 of the series is marked "Not for Merge" and is just for
reference to userspace people to incorporate in order to support
10bit content with 4K@60 resolutions.

v3: Added Infoframe readout support for DRM infoframes.
Addressed Jani Nikula's review comments.

v4: Addressed Ville's review comments and added proper bitmask for
enabled infoframes. Series also incorporates Ville's patch for stopping
infoframes to be sent to DVI sinks. Extended the same for DRM as well.

v5: Created separate helper function for lspcon_infoframes_enabled as per
Ville's suggestion.

v6: Rebase

v7: Addressed Ville's review comments.

Note: Patch 10 of the series is for reference to userspace, not to be
merged to driver.

Uma Shankar (10):
  drm/i915/display: Add HDR Capability detection for LSPCON
  drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
  drm/i915/display: Attach HDR property for capable Gen9 devices
  drm/i915/display: Enable BT2020 for HDR on LSPCON devices
  drm/i915/display: Enable HDR for Parade based lspcon
  drm/i915/display: Implement infoframes readback for LSPCON
  drm/i915/display: Implement DRM infoframe read for LSPCON
  drm/i915/lspcon: Create separate infoframe_enabled helper
  drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
  drm/i915/display: [NOT FOR MERGE] Reduce blanking to support
    4k60@10bpp for LSPCON

 drivers/gpu/drm/i915/display/intel_ddi.c      |  40 +++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  17 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  15 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 182 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_lspcon.h   |  11 ++
 drivers/gpu/drm/i915/i915_reg.h               |   2 +
 7 files changed, 232 insertions(+), 36 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
