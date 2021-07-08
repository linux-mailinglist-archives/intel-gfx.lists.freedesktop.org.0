Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F29673BF85C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 12:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574CF6E1D3;
	Thu,  8 Jul 2021 10:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6C46E1D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 10:26:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="209444177"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="209444177"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 03:25:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428303491"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 03:25:54 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 15:55:46 +0530
Message-Id: <20210708102549.27821-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 0/3] Set BPP in the kernel
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

This series add debugfs entry to force dsc bpp to
ceratin valid test value, for validation needs.
This series has been tested locally.
With the introduction of i915_dsc_bpp debugfs
the expectation is that whenever there is force_dsc_en
set, force_dsc_bpp should have a valid value for that
format which is between bpp to bpp-1.

This makes the older test kms_dp_dsc --basic fail
as in that case force_dsc_bpp would be 0 and is not a valid
value.

Have tested with local changes on the same.
The series https://patchwork.freedesktop.org/series/91772/
have the base patches and would need some work on the debugfs name
change, giving default value for force_dsc_bpp in case of basic-dsc-enable
test cases, clearing up of the force_dsc_bpp value while exiting the
test. Which will be floated shortly.

Have added minor fix on the feci debugfs interface.
If further changes are needed on the same will float them in a different
series.

Patnana Venkata Sai (1):
  drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP
    enable

Vandita Kulkarni (2):
  drm/i915/display: Add write permissions for fec support
  drm/i915/display/dsc: Force dsc BPP

 .../drm/i915/display/intel_display_debugfs.c  | 78 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 17 ++++
 3 files changed, 94 insertions(+), 2 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
