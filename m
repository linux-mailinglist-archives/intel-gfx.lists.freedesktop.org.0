Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ED94D9080
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 00:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A62A89F8B;
	Mon, 14 Mar 2022 23:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A8689F41;
 Mon, 14 Mar 2022 23:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647301330; x=1678837330;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VQi5lYuuCGr1kDyKgxMD3uettMQ4CKxctsJyinCQkWE=;
 b=UmYKIcLBgN36FY3js5cTHqQkGQI5sxEJP9FCdd61754zpxlk+q/HswQg
 fn7C1iuTgeO5mWaMcUr/9P+vLHf+whv9L549SgxlF5JrECibCXsnrk21O
 t7hwUDaOS6xPQTJiV0c2YFx2K0dwPh89Zq6lKI7IwvJvrMcw3rpMJmx+b
 A1eE/f017GtsquG2IFBpyCtWdbd1rM1ZU2D6fc1lApbUnUi1RfuOZ0132
 Vzur3qzv6bGrfgU30rbFszPx0ChUk8UxI6ZbiwsP7F0PJOfmuptS4FYdt
 +nysh69KLUnauPh7fWJ/125OuBPIEmzrJcpNImjEGlzTCsl/NedOowW0T g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256359966"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="256359966"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 16:42:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="549403058"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 16:42:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 16:42:00 -0700
Message-Id: <20220314234203.799268-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] i915: General multicast steering updates
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A few minor steering updates, mostly to prepare for other upcoming work.
We'll soon be doing most of our steering explicitly, rather than relying
on implicit steering as we do now, so reporting the steering assignments
in debugfs will be helpful for debugging.  We also have some features
coming up soon that need to be able to issue unicast writes to a
specific register instance.  Finally, we need to inform the GuC about
proper register steering so that it knows how to handle register
save/restore operations.

Daniele Ceraolo Spurio (1):
  drm/i915/guc: add steering info to GuC register save/restore list

Matt Roper (2):
  drm/i915: Report steering details in debugfs
  drm/i915: Add support for steered register writes

 drivers/gpu/drm/i915/gt/intel_gt.c          | 75 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h          |  5 ++
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c  | 13 ++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  5 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  8 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 54 ++++++++++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h |  3 +
 drivers/gpu/drm/i915/intel_uncore.c         | 75 ++++++++++++++++++---
 drivers/gpu/drm/i915/intel_uncore.h         |  4 +-
 10 files changed, 216 insertions(+), 27 deletions(-)

-- 
2.34.1

