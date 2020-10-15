Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3F828FB85
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495856E223;
	Thu, 15 Oct 2020 23:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 279FE6E216
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:15:09 +0000 (UTC)
IronPort-SDR: jKU5Yxz+QR6m3SonVS74m3duWg0vaxu88osOC+6tp8/LFMa8pPuZnHy1sZkkkv3DFThlOtOzK/
 o6xr12C/ZeIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163010284"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163010284"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:07 -0700
IronPort-SDR: LTciGLKR/8FQmqN3sRMx4/0uxPnfJli1fMDG8DQ4QFl3o9cERrey3CgfQHpnYKpJtkhZhtxeTb
 ctPb5c3HpZ0Q==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531450329"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:05 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 05:18:50 +0530
Message-Id: <20201015234902.7134-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [v8 00/12] Enable HDR on MCA LSPCON based Gen9 devices
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

v8: Addressed Ville's review comments. Fixed the colorspace handling for
Pcon and property attachment logic based on new lspcon detetction changes.
Thanks Ville for all the suggestions and inputs.

Note: Patch 12 of the series is for reference to userspace, not to be
merged to driver.

Uma Shankar (12):
  drm/i915/display: Add HDR Capability detection for LSPCON
  drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
  drm/i915/display: Attach HDR property for capable Gen9 devices
  drm/i915/display: Attach content type property for LSPCON
  drm/i915/display: Nuke bogus lspcon check
  drm/i915/display: Enable BT2020 for HDR on LSPCON devices
  drm/i915/display: Enable HDR for Parade based lspcon
  drm/i915/display: Implement infoframes readback for LSPCON
  drm/i915/display: Implement DRM infoframe read for LSPCON
  drm/i915/lspcon: Create separate infoframe_enabled helper
  drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
  drm/i915/display: [NOT FOR MERGE] Reduce blanking to support
    4k60@10bpp for LSPCON

 drivers/gpu/drm/i915/display/intel_ddi.c      |  20 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  29 +++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  25 +--
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 181 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_lspcon.h   |  12 ++
 drivers/gpu/drm/i915/i915_reg.h               |   2 +
 7 files changed, 226 insertions(+), 44 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
