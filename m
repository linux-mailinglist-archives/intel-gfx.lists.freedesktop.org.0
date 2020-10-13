Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BB728C95E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 09:30:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83EF76E89A;
	Tue, 13 Oct 2020 07:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64916E89A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 07:30:07 +0000 (UTC)
IronPort-SDR: flJoHX2xbHu673loJahFRySOSt0ORLGPtRdgRBpXLpGvjkSija0JXgDr0cwliX7XySW3PtmjKm
 EXy6fyg2fpXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145182897"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="145182897"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 00:30:07 -0700
IronPort-SDR: SvBFE9dhKDeKN0+q8tmMITNIIxv6dHjUojteSFJd3JeHHhMdvaMe/WwkYbSzwkWzX/lO1M40K8
 8x2khpDPk5pw==
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="463392673"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 00:30:05 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 12:49:36 +0530
Message-Id: <20201013071936.6798-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] HDCP over DP-MST misc
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

These Misc patches requires to work HDCP over DP-MST.

Anshuman Gupta (2):
  drm/i915/hdcp: Update CP property in update_pipe
  drm/i915/hotplug: Handle CP_IRQ for DP-MST

 drivers/gpu/drm/i915/display/intel_dp.c   | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdcp.c |  4 ++++
 2 files changed, 17 insertions(+), 1 deletion(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
