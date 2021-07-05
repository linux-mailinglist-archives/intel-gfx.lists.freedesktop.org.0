Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1E43BB71D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 08:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D3D8991E;
	Mon,  5 Jul 2021 06:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E230C8991E
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jul 2021 06:19:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="196094348"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="196094348"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2021 23:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="627287660"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2021 23:19:44 -0700
From: venkata.sai.patnana@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jul 2021 11:38:38 +0530
Message-Id: <20210705060840.25030-1-venkata.sai.patnana@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/2] drm/i915/display/dsc: Set BPP in the
 kernel
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

From: Patnana Venkata Sai <venkata.sai.patnana@intel.com>

DSC can be supported per DP connector. This patch creates
a per connector debugfs node to expose the Input and
Compressed BPP.

The same node can be used from userspace to force
DSC to a certain BPP.

force_dsc_bpp is written through this debugfs
node to force DSC BPP to all accepted values

Test-with: <20210622102454.8922-1-venkata.sai.patnana@intel.com>

Anusha Srivatsa (1):
  drm/i915/display/dsc: Set BPP in the kernel

Patnana Venkata Sai (1):
  drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP
    enable

 .../drm/i915/display/intel_display_debugfs.c  | 102 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  23 +++-
 3 files changed, 120 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
