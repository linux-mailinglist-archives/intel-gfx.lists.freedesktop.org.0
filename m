Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D16C263FB9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 10:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD7B6E2A3;
	Thu, 10 Sep 2020 08:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1386E2A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 08:28:59 +0000 (UTC)
IronPort-SDR: kuMaZvTNEeHEKW2W8JfyejkwWpdG3LsUyuNCbF4PhOsgPNQlxw528Vp3Sa1F6vF6hDEinKx0Mv
 Y0nwDpBNEq4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157772100"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="157772100"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:28:59 -0700
IronPort-SDR: vwK9TxbJv6dQQ7I8oO0SAU9WIH9ktMsasBo5jxIvaQ6soAQee0KcLbEaPu4qJczhiaix9+1tXl
 57dLJ6h0M7KQ==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="505043776"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:28:57 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 13:47:21 +0530
Message-Id: <20200910081727.4505-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/6] HDCP 2.2 DP MST Support
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is RFC proposal to support HDCP 2.2 on DP MST.
This series is built on below series using the
common functionality of HDCP stream encryption.

Anshuman Gupta (6):
  drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
  drm/i915/hdcp: mst streams support in hdcp port_data
  drm/i915/hdcp: Pass connector to check_2_2_link
  drm/i915/hdcp: Add HDCP 2.2 stream register
  drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
  drm/i915/hdcp: Enable HDCP 2.2 MST support

 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  84 +++++++++++--
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 114 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
 drivers/gpu/drm/i915/i915_reg.h               |  30 +++++
 drivers/misc/mei/hdcp/mei_hdcp.c              |   2 +-
 include/drm/drm_hdcp.h                        |   8 +-
 7 files changed, 204 insertions(+), 46 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
