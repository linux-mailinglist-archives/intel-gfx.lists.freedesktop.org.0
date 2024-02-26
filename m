Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B1F866A12
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 07:32:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78F310EEB6;
	Mon, 26 Feb 2024 06:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fN+W19TU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F91010EEB5
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 06:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708929172; x=1740465172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6FaXcxK/V30c2xMn8px8uy5fdhqmA1G9Rt40lIOWdrs=;
 b=fN+W19TUhShoPHisGOx5r5lEBYf+sUDGYIG09y74dGZptKTzx1V/aguv
 hdE1Y+4quX9gFmFNfa1pjB1Gmsry5UWi8vNW8Cqcn0IzHi183lV66uML9
 AgtiV3LgfBBYE3xjf4GcCAP3EwhG++wn2B0GvoFlShrNSNBkyciwc10KZ
 S09xwuGJEANbOTWE9YN7ozRmMlE640Xp2yvts5jpH/hyCPz1QTNkVBaF+
 lUenp989PJ3+BTNhyztS/4phZvyN01ae/8OYm23UcBakXb+SvW3/YTviZ
 doAimOMNxmHQsM8Nxaf5VLBG3zg0xfOsEamG4hzMyBOM+xP2FsXmuguxf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3361021"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3361021"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 22:32:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6565400"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 25 Feb 2024 22:32:50 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/5] HDCP MST Type1 fixes
Date: Mon, 26 Feb 2024 12:00:47 +0530
Message-ID: <20240226063051.1685326-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

We were seeing a blank screen whenever Type1 content was played.
This was due to extra timing which was taken as we had moved to
remote read and writes previously for MST scenario, which in turn
was done as we were not able to do direct read and writes to the
immediate downstream device.
The correct flow should be that we talk only to the immediate
downstream device and the rest needs to be taken care by that device.
With this patch series we move back to direct reads and writes,
fix the fastset setting because of which direct reads and writes to
HDCP related DPCD register stopped working, derive hdcp structure
correctly and increase robustability if rxcaps HDCP capability
reporting.
Rebased on latest commits.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (5):
  drm/i915/hdcp: Extract hdcp structure from correct connector
  drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link
  drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link
  drm/i915/hdcp: Allocate stream id after HDCP AKE stage
  drm/i915/hdcp: Read Rxcaps for robustibility

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c |  36 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.c    | 174 ++++++++-----------
 2 files changed, 95 insertions(+), 115 deletions(-)

-- 
2.43.2

