Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC6D73F8ED
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 11:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F304210E1B7;
	Tue, 27 Jun 2023 09:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8356010E1B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 09:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687859029; x=1719395029;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LLzNs3ZKhS8j3HHurvenEW/GsoXsCrcipHCw9y5Gz/Q=;
 b=PUimJqbtRnetGcmLYjmfPkXi4VLbAXaI+o0OsZscFsgklPqR4cH9urGr
 tG2ntJIoe1crql8ioI9hqvB/+eQ+LNjWyMJDvErF3+EiM8gZcoC6p/Cy7
 9UX2zabB4uYT4yL4tHfiQoLZfvpzLgpqIA0tnFkC1JgvtW8oZyidiro1l
 nzIQfWGz3Z0ls58evQyqoefZKZGhN+99lUTfL/adLbd7z+ULk5djckjaB
 1d2Sh0QLIIWBIOoaLtL/H6thQ3RJq/TonySyPOH4uA1UvTjaCgQqpCVik
 P01TVGsOgGqkHrmOVkBnF2G1toAqN13a560TcHXTQQDaQJqU57qfmNpGJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="341116446"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="341116446"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:43:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="666635779"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="666635779"
Received: from aamakine-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.217.123])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:43:45 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
Date: Tue, 27 Jun 2023 11:43:23 +0200
Message-Id: <20230627094327.134775-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Update AUX invalidation sequence
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

as there are new hardware directives, we need a little adaptation
for the AUX invalidation sequence.

In this version we support all the engines affected by this
change.

The stable backport has some challenges because the original
patch that this series fixes has had more changes in between.

Thanks,
Andi

Changelog:
=========
v1 -> v2
 - add a clean up preliminary patch for the existing registers
 - add support for more engines
 - add the Fixes tag

Andi Shyti (2):
  drm/i915/gt: Cleanup aux invalidation registers
  drm/i915/gt: Support aux invalidation on all engines

Jonathan Cavitt (2):
  drm/i915/gt: Ensure memory quiesced before invalidation
  drm/i915/gt: Poll aux invalidation register bit on invalidation

 drivers/gpu/drm/i915/gt/gen8_engine_cs.c     | 85 ++++++++++++++------
 drivers/gpu/drm/i915/gt/gen8_engine_cs.h     |  3 +-
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h      | 14 ++--
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 17 +---
 5 files changed, 70 insertions(+), 50 deletions(-)

-- 
2.40.1

