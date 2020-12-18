Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 663412DE0EC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 11:25:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688936E087;
	Fri, 18 Dec 2020 10:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854E36E087
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 10:25:48 +0000 (UTC)
IronPort-SDR: TdiCh2TuaHdjXTcLfSnCzSD+JK+5OEQogwxrUr1VNLrC7UBd0OEN7nlDg9fiLsOfZc6i0U4lRH
 zys7c+2Oa/Ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="172848364"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="172848364"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 02:25:48 -0800
IronPort-SDR: jA6NaWv7NrgJ6gPkKegahNER3XISl0LJNLEX7hxAO35FluL5HjYsxR3E4ROHRscUPw2IjnmMVJ
 wAyrkKxrzPyA==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="340335039"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2020 02:25:45 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 16:03:34 +0530
Message-Id: <20201218103337.31068-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC][PATCH 0/3] Infoframe changes for DP-HDMI2.1 PCON
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These patches should be applied on top of series
https://patchwork.freedesktop.org/series/82098/
(Add support for DP-HDMI2.1 PCON)

This is good to have feature, even if we don't send any AVI info frame,
PCON is able to create and send it based on DP VSC packets. However,
it gives better control with source sending the infoframe by itself.

TODO:
Need to fix:
[    8.906566] i915 0000:00:02.0: [drm] *ERROR* [CRTC:98:pipe A] mismatch in has_infoframe (expected yes, found no)
[    8.916828] i915 0000:00:02.0: [drm] *ERROR* [CRTC:98:pipe A] mismatch in infoframes.enable (expected 0x0000000a, found 0x00000002)

Swati Sharma (3):
  drm/i915: Export intel_hdmi_compute_avi_infoframe()
  drm/i915: Sending AVI infoframe through GMP DIP
  drm/i915: Implement readout for AVI infoframe SDP

 drivers/gpu/drm/i915/display/intel_dp.c   | 209 ++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c |   8 +-
 drivers/gpu/drm/i915/display/intel_hdmi.h |   3 +
 3 files changed, 179 insertions(+), 41 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
