Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4CD90873F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22FFB10E1FE;
	Fri, 14 Jun 2024 09:22:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a5+qCzS3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB2110E1FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718356966; x=1749892966;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6doguypqcsk8lC+sH+aCnnXMSHRu2VV54Rjx1B+xT5o=;
 b=a5+qCzS3kdCXtB0CAsidsmA7r2xVGminf7ak6VFlWGKmtIYamIivkRtl
 +0eKq9oPCDQfld4ta6DqT+OFz3YqEX+pdzI7vpVjrpHQ2k4eIGvu13VBW
 LzOrjAUzu3wvGGXFRUqzcPyt6LTSnDzUT6ZQ27kH+iOn5x/vUaJQ8xv3e
 5MZLPLpcxDUG6WJ4urIvL6JJxkXsDm4rBm+hggHEQvPrPQjS3n3p+cJJX
 dBqIm57R6p/OAAccPIJD+gZXyZd1t2K7pMXQ+E73ds04YjSYaTKdCsDHc
 fz+tqglV0GhV2+W5qoQ4yuMIstsPi64k4SjwLcnGtRUovO3VVvTQos02J Q==;
X-CSE-ConnectionGUID: 3t8zsDoGQAeaxcf1E/TaZA==
X-CSE-MsgGUID: vwMz4lLPRUWN88eTO5ADTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="40651057"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40651057"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:22:45 -0700
X-CSE-ConnectionGUID: owSxYYBCQAObBC9YZxajVw==
X-CSE-MsgGUID: y5dRfOAVQcC9ktCorbk7DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="44986781"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:22:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [CI 00/11] drm/i915: mem/fsb/rawclk freq cleanups
Date: Fri, 14 Jun 2024 12:22:28 +0300
Message-Id: <cover.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The earlier series [1] had some init order issues in patch 11/14 as
noted by Ville [2].

I'll look into it, but in the mean time, here are the reviewed patches
1-10 and 14 from that series for CI, with 11-13 dropped and to be
revisited and posted later.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1717672515.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/ZmLzcsoMkt3cB48m@intel.com

Jani Nikula (11):
  drm/i915/wm: rename intel_get_cxsr_latency -> pnv_get_cxsr_latency
  drm/i915/wm: clarify logging on not finding CxSR latency config
  drm/i915/dram: separate fsb freq detection from mem freq
  drm/i915/dram: split out pnv DDR3 detection
  drm/i915/dram: rearrange mem freq init
  drm/i915/gt: remove mem freq from gt debugfs
  drm/i915: convert fsb_freq and mem_freq to kHz
  drm/i915: extend the fsb_freq initialization to more platforms
  drm/i915: use i9xx_fsb_freq() for GT clock frequency
  drm/i915/cdclk: use i9xx_fsb_freq() for rawclk_freq initialization
  drm/i915: move comments about FSB straps to proper place

 drivers/gpu/drm/i915/display/i9xx_wm.c        |  27 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  57 +----
 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |   3 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   1 -
 drivers/gpu/drm/i915/gt/intel_rps.c           |  11 +-
 drivers/gpu/drm/i915/soc/intel_dram.c         | 212 +++++++++++-------
 drivers/gpu/drm/i915/soc/intel_dram.h         |   1 +
 7 files changed, 151 insertions(+), 161 deletions(-)

-- 
2.39.2

