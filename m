Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3205F939FAA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E9010E56E;
	Tue, 23 Jul 2024 11:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GokRrIMn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE86210E5B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733691; x=1753269691;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fTqNGAnP8LFBTwa5NdZu9YgwzV+WmQ2Pp3eEOR7tc2s=;
 b=GokRrIMnmSsA8mtP3MHN5QWwf9OTSAqiUlom5FLhL8XzjFYgsqr7X8cD
 0d3esyHyTH0t7UYbUH7HYqI4Jl69SCklVUpO01gvGyH8vfVvc+4sgI4vy
 0PIboYkanhb+fhToKBwaBnxt4Q4MDBzgXhoh0bcLmka/DAwZrq1M0cse/
 PIX/z7lXUJPOfi1dmdWkL5OKDWhTCr5+5EwZ2WXlaRSO7wV9yw611ELT9
 loKKldVkU9P5NI0yoHLNDVABw9Sicl90IOAhFCqCJAnn5OQuioYYh/xGF
 Xdw8JjBYaadPGgVxHLKYY3ipwstwVe8K3PdVYLD8V3hUTKBNH4v8vqscR g==;
X-CSE-ConnectionGUID: A2U692BiRDaDuFEAsLpwZQ==
X-CSE-MsgGUID: pGiOEoTmQvCnzRSWvyHs2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19225363"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19225363"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:22 -0700
X-CSE-ConnectionGUID: Mra+mlAPSaOoKC3NBQdFpg==
X-CSE-MsgGUID: qHvKAPQUTc2ThY3sO8JTog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52267399"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:21 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 0/9] CCS static load balance
Date: Tue, 23 Jul 2024 13:20:37 +0200
Message-ID: <20240723112046.123938-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

Hi,

This patch series introduces static load balancing for GPUs with
multiple compute engines. It's a lengthy series, and some
challenging aspects still need to be resolved.

I have tried to split the work as much as possible to facilitate
the review process.

To summarize, in patches 1 to 7, no functional changes occur
except for the addition of the num_cslices interface. The
significant changes happen in patch 8, which is the core part of
the CCS mode setting, utilizing the groundwork laid in the
earlier patches.

The i915 driver is not designed to support dynamic removal and
addition of engines, so this process requires careful attention
as it can fail in various ways.

One aspect still missing is client management. We need to prevent
users from connecting to i915 until all engines are recreated.
There may be a need for a global protection mechanism, or perhaps
I am overlooking something. I welcome any suggestions on this
matter.

I would greatly appreciate further input from all reviewers who
have already assisted with the previous work. Additionally, I
would be grateful if Chris Wilson could join the discussion and
provide his insights, as we have previously had valuable
exchanges on this topic.

Although this series is not yet fully ready, I am submitting it
to gather feedback early on. My goal is to have this series
included in version 6.12.

IGT tests have also been developed, but I haven't sent them yet.

Thanks,
Andi

Andi Shyti (9):
  drm/i915/gt: Refactor uabi engine class/instance list creation
  drm/i915/gt: Rename "cslises" with "cslice_mask"
  drm/i915/gt: Move CCS mode mask creation to intel_ccs_mode.c
  drm/i915/gt: Expose the number of total CCS slices
  drm/i915/gt: Move the CCS mode variable to a global position
  drm/i915/gt: Add sysfs cleanup function for engines
  drm/i915/gt: Allow the creation of multi-mode CCS masks
  drm/i915/gt: Allow the user to change the CCS mode through sysfs
  drm/i915/gt: Document CCS mode load balancing

 Documentation/gpu/i915.rst                   |   3 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  52 +--
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_engine_user.c  |  29 +-
 drivers/gpu/drm/i915/gt/intel_gt.c           |   3 +
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c  | 319 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.h  |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c     |   2 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h     |  14 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c  |   7 +-
 drivers/gpu/drm/i915/gt/sysfs_engines.c      |  18 ++
 drivers/gpu/drm/i915/gt/sysfs_engines.h      |   1 +
 drivers/gpu/drm/i915/i915_drv.h              |   1 +
 13 files changed, 372 insertions(+), 86 deletions(-)

-- 
2.45.2

