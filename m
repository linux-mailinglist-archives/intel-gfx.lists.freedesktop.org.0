Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFAB1951E3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 08:28:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C2FB6E995;
	Fri, 27 Mar 2020 07:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0F96E07B;
 Fri, 27 Mar 2020 07:28:39 +0000 (UTC)
IronPort-SDR: EO/pDQwgCzzfbrme3s8VXZ1wzmsIdrOCwgwdHJr5OUvllUBKKvHoZpgL2LjRoVGzSnoe7SDmbD
 KEaCmES+y5WQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 00:28:38 -0700
IronPort-SDR: Bdo4x/uyVfWNkI9uXDMqPBxRj4dCH5r5ax9dBpyyU8PHnAXnR/ROIMcpWPxZFFNwIPp99rmKLw
 uC/AAfCD/lZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="394291969"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO
 helsinki.ger.corp.intel.com) ([10.252.26.111])
 by orsmga004.jf.intel.com with ESMTP; 27 Mar 2020 00:28:36 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 09:29:03 +0200
Message-Id: <20200327072917.3676391-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 00/14] In order to readout DP SDPs,
 refactors the handling of DP SDPs
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
Cc: jani.nikula@intel.com, linux-fbdev@vger.kernel.org,
 laurent.pinchart@ideasonboard.com, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to readout DP SDPs (Secondary Data Packet: DP HDR Metadata
Infoframe SDP, DP VSC SDP), it refactors handling DP SDPs codes.
It adds new compute routines for DP HDR Metadata Infoframe SDP
and DP VSC SDP. 
And new writing routines of DP SDPs (Secondary Data Packet) that uses
computed configs.
New reading routines of DP SDPs are added for readout.
It adds a logging function for DP VSC SDP.
When receiving video it is very useful to be able to log DP VSC SDP.
This greatly simplifies debugging.
In order to use a common VSC SDP Colorimetry calculating code on PSR,
it uses a new psr vsc sdp compute routine.

v2: Minor style fix
v3: 
  - Add a new drm data structure for DP VSC SDP
  - Replace a structure name to drm_dp_vsc_sdp from intel_dp_vsc_sdp
  - Move logging functions to drm core [Jani N]
    And use drm core's DP VSC SDP logging function
  - Explicitly disable unused DIPs (AVI, GCP, VS, SPD, DRM. They will be
    used for HDMI), when intel_dp_set_infoframes() function will be called.
v4:
  - Use struct drm_device logging macros
  - Rebased
v5:
  - Use intel_de_*() functions for register access
  - Add warning where a bpc is 6 and a pixel format is RGB.
  - Addressed review comments from Uma
    Add kernel docs for added data structures
    Rename enum dp_colorspace to dp_pixelformat
    Polish commit message and comments
    Combine the if checks of sdp.HB2 and sdp.HB3
    Add 6bpc to packining and unpacking of VSC SDP
v6: Fix enabled infoframe states of lspcon
v7: Fix the wrong check of combination bpc 6 and RGB pixelformat
v8:
  - Rebased
  - Addressed review comments from Laurent Pinchart
    Rename hdmi_drm_infoframe_unpack_only() to cta_drm_infoframe_unpack_databytes()
    Add clear comments to cta_drm_infoframe_unpack_databytes()

Gwan-gyeong Mun (14):
  video/hdmi: Add Unpack function for CTA-861-G DRM infoframe DataBytes
  drm/i915/dp: Read out DP SDPs
  drm: Add logging function for DP VSC SDP
  drm/i915: Include HDMI DRM infoframe in the crtc state dump
  drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
  drm/i915: Include DP VSC SDP in the crtc state dump
  drm/i915: Program DP SDPs with computed configs
  drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
  drm/i915: Add state readout for DP VSC SDP
  drm/i915: Fix enabled infoframe states of lspcon
  drm/i915: Program DP SDPs on pipe updates
  drm/i915: Stop sending DP SDPs on ddi disable
  drm/i915/dp: Add compute routine for DP PSR VSC SDP
  drm/i915/psr: Use new DP VSC SDP compute routine on PSR

 drivers/gpu/drm/drm_dp_helper.c              | 174 ++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c |  62 +++
 drivers/gpu/drm/i915/display/intel_dp.c      | 395 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h      |  15 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     |  54 +--
 drivers/gpu/drm/i915/display/intel_psr.h     |   6 +-
 drivers/gpu/drm/i915/i915_drv.h              |   1 +
 drivers/video/hdmi.c                         |  74 ++--
 include/drm/drm_dp_helper.h                  |   3 +
 include/linux/hdmi.h                         |   2 +
 12 files changed, 544 insertions(+), 263 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
