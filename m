Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB2B19507D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 06:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98AD46E038;
	Fri, 27 Mar 2020 05:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAFDF6E038
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 05:25:20 +0000 (UTC)
IronPort-SDR: 2pG51yGE6qQLhf0nfvS+P424mdBrFGmsAfx763/cUfIObuQzugiEgtC3c01lYXFnTDiGrroyG+
 dDM8iI7Liu4A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 22:25:20 -0700
IronPort-SDR: YE2pZ2C3VGiIRl2SRq9HhMYcscIOT0dgmH10PH4XsbxNqpX0+1SwxpEvc72H5fci8Ukh5xFoUS
 PmzHgvWydi5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="394268136"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2020 22:25:19 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 10:53:50 +0530
Message-Id: <20200327052357.22269-1-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] Enable HDR on Gen9 devices with lspcon hdr
 capability
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

Initial patch series submitted https://patchwork.freedesktop.org/series/68081/
this patch series add hdr support  for GLK platform, I have added patch to
add checks for all Gen9 platforms with lspcon hdr capability.

Uma Shankar (6):
  drm/i915/display: Add HDR Capability detection for LSPCON
  drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
  drm/i915/display: Attach HDR property for capable Gen9 devices
  drm/i915/display: Set HDR Infoframe for HDR capable LSPCON devices
  drm/i915/display: Enable BT2020 for HDR on LSPCON devices
  drm/i915/display: Reduce blanking to support 4k60@10bpp for LSPCON

Vipin Anand (1):
  drm:i915:display: add checks for Gen9 devices with hdr capability

 drivers/gpu/drm/drm_atomic_state_helper.c     |  1 +
 drivers/gpu/drm/drm_atomic_uapi.c             |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 16 ++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 27 +++++-
 drivers/gpu/drm/i915/display/intel_lspcon.c   | 95 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_lspcon.h   |  4 +
 include/drm/drm_connector.h                   |  1 +
 8 files changed, 132 insertions(+), 14 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
