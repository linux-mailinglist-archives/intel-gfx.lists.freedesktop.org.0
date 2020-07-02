Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D21F4212538
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 15:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736986E933;
	Thu,  2 Jul 2020 13:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323136E933
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 13:51:49 +0000 (UTC)
IronPort-SDR: TAUEaMiekJSCBBy/sdypj7HzCgtID/GWN1QlkSSrubEQBLgkrYwdtGXGs4X/QGGWDiTeSssULX
 UbtrN3MwEIzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="208418934"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="208418934"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 06:51:48 -0700
IronPort-SDR: FJ4kz2jNghk8uPa6lYry90A6j26LZAodnOKkX65NqQWuBDDlYn2T832fvS5K1kegGHU5N14Dlr
 X8R/tUSsk2ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="314137528"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2020 06:51:45 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 19:19:02 +0530
Message-Id: <20200702134903.602364-1-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/1] drm/i915/gt: Initialize reserved and
 unspecified MOCS indices
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

In order to avoid functional breakage of mis-programmed applications that
have grown to depend on unused MOCS entries, we are programming
those entries to be equal to fully cached ("L3 + LLC") entry.

These reserved and unspecified entries should not be used as they may be
changed to less performant variants with better coherency in the future
if more entries are needed.

V2: As suggested by Lucas "De Marchi" to utilise __init_mocs_table for
programming default value, setting I915_MOCS_PTE index of tgl_mocs_table
with desired value.

Ayaz A Siddiqui (1):
  drm/i915/gt: Initialize reserved and unspecified MOCS indices

 drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
