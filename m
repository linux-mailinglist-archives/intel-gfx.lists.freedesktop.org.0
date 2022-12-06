Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3130643FA8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 10:18:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058FC10E304;
	Tue,  6 Dec 2022 09:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D3B10E302
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 09:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670318290; x=1701854290;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fCSMZFXQvOEyzp9XmSauRLj7ajYfxbGTrQ2w/aLOUeY=;
 b=ROpaj+0+rU/dRu1AM9+77QpbEIZhBIc5xh1mT80TZdMqLEkipTZRAsS5
 0sUqYKDlASjAi2U4GQt+z8tEnHZ6B9nZ/r4o/RfCXtUamRBIyPJmcsHNj
 D7ZTuQG3PJnlAXhirF099lVf4DbJEF793TezOY/SNpWH8ypCFmefOVi0X
 j3ey6mI9HTiBbWtdBc6YvROknPr2YL90GGYk7YxVlsFzbDupa2rzAto2F
 ZcuS5ZKwl4aPhfZiuUE0fzXcaGJ7gmdLeUdjFrNwlsocEJTsa8gHpBXnt
 yceh7bznKEZj2D0yn2TPIknmTa0xeVkbEp7xEAp/DT7BX5wwvf8Ny2r6m w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318438110"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318438110"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623833211"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623833211"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 01:18:09 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 01:20:55 -0800
Message-Id: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915/guc: Update GuC relay logging
 debugfs
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

This series
  1. Fixes a bug introduced in GuC Error Capture that
     was sharing the memmap of the multi-region GuC
     logging buffer.
  1. Adds support for unaligned wc memcpy during the
     copying of logs to relay channel.
  2. Renames the debugfs file for controlling GuC relay
     logging to something more discernible.
  3. Introduces two debugfs files to allow intel_guc_logger
     to read the subbufer-count and subbuffer-size from the
     kernel so future changes to buffer sizing in kernel
     wont require updating intel_guc_logger codes.
  4. Moves the location of the relay-channel debugfs file
     to be under the "gt/uc/" path alongside other guc-
     id debugfs files.

Changes from prior revs:
   v1: - Removed a patch that isn't required anymore (the same
         functionality was merged as part of an unrelated series.
       - Removed some unneeded checks in debugfs codes (Ashutosh).
       - Changed one of the function names and debugsfs file names
         for more consistency (Ashutosh).

Alan Previn (5):
  drm/i915/guc: Fix GuC relay log debugfs failing open
  drm/i915/guc: Add unaligned wc memcpy for copying GuC Log
  drm/i915/guc: Provide debugfs for log relay sub-buf info
  drm/i915/guc: Rename GuC log relay debugfs descriptively
  drm/i915/guc: Move guc_log_relay_chan debugfs path to uc

 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 25 ++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  2 +
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    | 56 +++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  2 +
 5 files changed, 68 insertions(+), 19 deletions(-)


base-commit: 886c7f9510ce20f099d27d9e7d9de32402c9e5e6
-- 
2.34.1

