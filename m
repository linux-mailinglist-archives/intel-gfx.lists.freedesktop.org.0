Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A53B1950E5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 07:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26486E97E;
	Fri, 27 Mar 2020 06:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0976E97E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 06:12:31 +0000 (UTC)
IronPort-SDR: JhQhESy5aqbOwKNoMaxGo5ChPLgXfxskU0jOFMMofsvDgYiWzK80W6GGUpiBEpDssw3xjZbT2w
 6eFSQ8Kh3XEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 23:12:30 -0700
IronPort-SDR: cJv1wuZydVAzfaKsC4djdhwyKttE0lPbngxhXIQBZMJpnR1+dIA8O1RD4hJkolCQssGn/a9th2
 4s5pmiH/9HVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="420987134"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 23:12:29 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 11:41:03 +0530
Message-Id: <20200327061110.17371-1-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/7] Enable HDR on Gen9 devices with lspcon
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

rebased

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
