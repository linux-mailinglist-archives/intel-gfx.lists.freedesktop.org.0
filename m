Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DC83CF4C1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 08:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC91A6E1B2;
	Tue, 20 Jul 2021 06:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2EB96E0AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 06:49:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="232965314"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="232965314"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 23:49:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="657368664"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 23:49:03 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jul 2021 12:19:04 +0530
Message-Id: <20210720064907.9771-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 0/3] Enable setting custom DSC BPP
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
change, giving default value for force_dsc_bpp in case of
basic-dsc-enable
test cases, clearing up of the force_dsc_bpp value while exiting the
test. Which will be floated shortly.

Have added minor fix on the feci debugfs interface.
If further changes are needed on the same will float them in a different
series.

This series has been reviewed here
https://patchwork.freedesktop.org/series/92312/#rev5

Resubmitting it here as the series submitter got overridden due to
one of the review comment mishaps.

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
