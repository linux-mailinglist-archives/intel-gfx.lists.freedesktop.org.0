Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 213AD195210
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 08:33:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDCAD6E9A3;
	Fri, 27 Mar 2020 07:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68ADB6E9A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 07:33:00 +0000 (UTC)
IronPort-SDR: lsAbY7IapaXnkigD16TeGhdTKJfAbEFvpF2c9jb7heqwurj5sqKu68uY8vYEWzzjugBBuecAXZ
 GsLWijkxljFA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 00:32:59 -0700
IronPort-SDR: N1fBQh8xf/N7IvzTfTmnEBdJIMnZw2HShAhcZfuJIkFACD2fwgYIetnM1dw2wjrL3ZaE+2H6Sp
 +FlJNqu9kNyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="251060992"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga006.jf.intel.com with ESMTP; 27 Mar 2020 00:32:59 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 13:01:33 +0530
Message-Id: <20200327073140.11568-1-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with lspcon
 hdr capability
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

Added missing signoff

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
