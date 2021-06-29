Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BEA3B6E81
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 09:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE966E7D5;
	Tue, 29 Jun 2021 07:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFC36E7D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 07:02:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="205088199"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="205088199"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 00:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="446925722"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by orsmga007.jf.intel.com with ESMTP; 29 Jun 2021 00:02:37 -0700
From: venkata.sai.patnana@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Jun 2021 12:21:54 +0530
Message-Id: <20210629065156.30301-1-venkata.sai.patnana@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915/display/dsc: Set BPP in the
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

Anusha Srivatsa (2):
  drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP
    enable
  drm/i915/display/dsc: Set BPP in the kernel

 .../drm/i915/display/intel_display_debugfs.c  | 103 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  23 +++-
 3 files changed, 121 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
