Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0B2C4F97
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD53F6E59D;
	Thu, 26 Nov 2020 07:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B6AF6E59D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:14 +0000 (UTC)
IronPort-SDR: XlvGIPGBvvZJikotufC5oYKfRtXn4iv8KVlHgvGPqQjt3GypcGfya9NP0H5e/nhO48mctCCrHS
 5k/XsP7hjiWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741334"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741334"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:13 -0800
IronPort-SDR: 0ZGr7cF0ly06u46tddMD9E8WDK0iVdFlAvbYycS8r+zXAZbzdxmMExgP0tutbjnDdZ/A3VXBaf
 9Zy/scDAlMwQ==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448043"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:12 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:32 +0530
Message-Id: <20201126081445.29759-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 00/13] Enable HDR on MCA LSPCON based Gen9 devices
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

v9: Rebase

v10: Fixed one patch for detection

v11: Addressed Ville's review comments and added RB in the respective
patches.

Thanks Ville for all the suggestions and inputs.
Note: Patch 13 of the series is for reference to userspace, not to be
merged to driver.

Uma Shankar (13):
  drm/i915/display: Add HDR Capability detection for LSPCON
  drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
  drm/i915/display: Attach HDR property for capable Gen9 devices
  drm/i915/display: Enable quantization range for HDR on LSPCON devices
  drm/i915/display: Add a WARN for invalid output range and format
  drm/i915/display: Attach content type property for LSPCON
  i915/display: Enable BT2020 for HDR on LSPCON devices
  drm/i915/display: Enable HDR for Parade based lspcon
  drm/i915/display: Implement infoframes readback for LSPCON
  drm/i915/display: Implement DRM infoframe read for LSPCON
  drm/i915/lspcon: Create separate infoframe_enabled helper
  drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
  drm/i915/display: [NOT FOR MERGE] Reduce blanking to support
    4k60@10bpp for LSPCON

 drivers/gpu/drm/i915/display/intel_ddi.c      |  20 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  36 ++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  15 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 177 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_lspcon.h   |  12 ++
 6 files changed, 226 insertions(+), 35 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
