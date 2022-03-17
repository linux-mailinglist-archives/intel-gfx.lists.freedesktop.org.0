Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE2C4DCC3C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D14E10E601;
	Thu, 17 Mar 2022 17:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813B610E61D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537610; x=1679073610;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n0zJ2m2SxAAZ2Vi+vC4ce7Hdn+WYbq2H+sehwqNjkNM=;
 b=ngM87Yzseg1XWeWDfID2bQ29ipNK98KWEcoQ1JpEfnw11oqmPpdfMV4W
 2VLdYc85VX8KbNSgRM7rW8VmoBFOxmmoQimLXTcsV1SS0y2bKRTN+zMYs
 nEKk3hYXyB7nzpjy4DLhZJL8VHzVvSLPa4rVFhRZkskIkollefjCkrVUF
 9Kt2H7el4enk7CKxVeuVhTY9TvIjZBKXTUCdS6mRSHmE9m56zUzK6iQpo
 pL86gWmhjyIYiaRMEPOy/BqJaZWIbrTJfjFZvbHBY0UKle9MKSZ+Kj1ex
 PArGCSL4xQHsSdt+RFAQFanBQBsn9VLC1jeyI+DUmfiauvQaa2jJw/6MO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="239086512"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="239086512"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:19:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="541452175"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 17 Mar 2022 10:19:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:19:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:37 +0200
Message-Id: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915/bios: Rework BDB block handling
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Several changes to our BDB block handling:

1)
The current way of trusting the version checks to avoid out of
bounds accesses to the BDB blocks is fragile. We might just get
the version check wrong, or the VBT may be corrupted/malicious.
So instead of doing blind accesses into the original data let's
make a copy of each block with a gauranteed minimum size.

2)
The LFP data table pointer stuff is a horrible mess currently.
Let's make that sensible by verifying the pointers ahead of
time, which allows us to trust them 100% when we acually
parse the actual data block.

3)
There's more stuff at the tail end of the LFP data block we
need to parse. The variable size of the fp_timing table makes
that a bit awkward, but with the pointer validation in place
it's not too horrible.

4)
Some modern machines (seen it on TGL here) no longer include
the LFP data table pointers block (41) in the VBT. In order to
keep the rest of the code working as is we must therefore
generate the pointers block from scratch.

Ville Syrjälä (11):
  drm/i915/bios: Extract struct lvds_lfp_data_ptr_table
  drm/i915/bios: Make copies of VBT data blocks
  drm/i915/bios: Use the copy of the LFP data table always
  drm/i915/bios: Validate LFP data table pointers
  drm/i915/bios: Trust the LFP data pointers
  drm/i915/bios: Validate the panel_name table
  drm/i915/bios: Reorder panel DTD parsing
  drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
  drm/i915/bios: Get access to the tail end of the LFP data block
  drm/i915/bios: Parse the seamless DRRS min refresh rate
  drm/i915: Respect VBT seamless DRRS min refresh rate

 drivers/gpu/drm/i915/display/intel_bios.c     | 540 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_panel.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  35 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 4 files changed, 489 insertions(+), 98 deletions(-)

-- 
2.34.1

