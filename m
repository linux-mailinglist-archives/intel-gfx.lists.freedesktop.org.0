Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5373EB12A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 703EA6E542;
	Fri, 13 Aug 2021 07:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0926E542
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:14:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215509479"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215509479"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:14:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="571727743"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2021 00:14:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Fri, 13 Aug 2021 12:31:15 +0530
Message-Id: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] Infoframe changes for DP-HDMI2.1 PCON
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

Currently we rely on HDMI2.1 PCON to create default AVI infoframes
based on DP VSC packets for HDMI sink. For better control, source
can write the AVI infoframe and send as DP GMP SDP packet.
The PCON unpacks the AVI infoframe encapsulated in DP GMP SDP packet,
and forwards the same to HDMI2.1.
This series is continuation of the RFC :
https://patchwork.freedesktop.org/series/85073/
It adds support for writing infoframe for HDMI2.1 sink, connected via
HDMI2.1 PCON. This series also adds AVI infoframe version 3,
which is requied for new modes supported by HDMI2.1.

Ankit Nautiyal (3):
  video/hdmi: Separate function for unpacking AVI Infoframe Data
  video/hdmi: Add AVI version 3 defined in CTA-861-G
  drm/drm_edid: Avoid HDMI2.1 VICs in AVIInfoframe for older HDMI sinks

Swati Sharma (3):
  drm/i915: Export intel_hdmi_compute_avi_infoframe()
  drm/i915: Sending AVI infoframe through GMP DIP
  drm/i915: Implement readout for AVI infoframe SDP

 drivers/gpu/drm/drm_edid.c                |  28 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c  |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c   | 238 +++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h   |   3 +
 drivers/gpu/drm/i915/display/intel_hdmi.c |   9 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h |   3 +
 drivers/video/hdmi.c                      |  94 +++++++--
 include/linux/hdmi.h                      |   3 +
 8 files changed, 322 insertions(+), 60 deletions(-)

-- 
2.25.1

