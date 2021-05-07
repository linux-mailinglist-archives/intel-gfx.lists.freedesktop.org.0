Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859B8376644
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 15:37:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F076E088;
	Fri,  7 May 2021 13:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7F56E088
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 13:37:18 +0000 (UTC)
IronPort-SDR: rTlYztyaNhqWnkmYyntzIbtSFHNSZbKOHqayGnk8K41RrwuCqwX6zhTtVhoObly3ufe42lTnza
 izJSUw01BT0g==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="185859079"
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="185859079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 06:37:13 -0700
IronPort-SDR: lJ1F7yhQpPxHlsTlyGi/8YoebfWPDR0gSdLAGXmtOQdm2NTwx6aa2NAq33skl/MzIWWZYUi7i2
 Z8gQvQZUalqw==
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="434905963"
Received: from unknown (HELO Nischal-desktop.iind.intel.com) ([10.223.74.174])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 May 2021 06:37:12 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org, nischal.varide@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com
Date: Fri,  7 May 2021 12:14:50 +0530
Message-Id: <20210507064451.23402-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v2 0/1] drm/i915/display: New Property Creation
 for HDMI
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


Right now the HDMI properties like vendor and product ids are hardcoded
in the function "intel_hdmi_compute_spd_infoframe()".

ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx").

This patch enables the possibility of setting vendor and product id fields
of the Infoframe structure in the userspace instead of hardcoding in
the kernel, and this will help display manufacturers preload picture
configurations for the devices.

The changes has been Tested by an IGT testcase which got floated.
https://patchwork.freedesktop.org/series/89852/.


Nischal Varide (1):
  drm/i915/display: New Property Creation for HDMI

 drivers/gpu/drm/i915/display/intel_atomic.c   | 14 +++++++++++++
 .../gpu/drm/i915/display/intel_connector.c    | 20 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_connector.h    |  1 +
 .../drm/i915/display/intel_display_types.h    |  5 +++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 14 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  5 +++++
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 7 files changed, 59 insertions(+), 1 deletion(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
