Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B165228C2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 03:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB2F10E212;
	Wed, 11 May 2022 01:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD8710E212;
 Wed, 11 May 2022 01:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652231557; x=1683767557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iy3+5WJwsOnHdm/x0ebakKb2Hlj6xBu6DXfvecRK7wk=;
 b=PfWJtn5ymNxIzaV5mJctMEPdsVckXNOY33r4T0hfMzzF3dpBU0pVE0Ek
 LCxwsA8KqNgq7e4OguXxI1Sm+0eKxJKLDn3uNgSSRldIuZyomXLUbptGx
 UB+zhVpCgxdYlKqzHoMEBh4pPp+82r6xo5K7+EVVNaPXI9B6UloDPtHI5
 fpVr0t2iSDmsPYEWJblkXTOcsPIKaBaDzZ/G5v1c9ff0LA4m+1IHv9OZs
 J1qdBLdZ8quxx7sqvFKprPABDQmPsjTihJyGs2f2itgG1X6ovlCQc3nOR
 LuINX383yTOwMFdvm++nFtXveCaZExkz0ff2vA5SupATXcHHjWM+HTGj9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="250080608"
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="250080608"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 18:12:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="593842577"
Received: from ymmonter-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.249.32.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 18:11:31 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Wed, 11 May 2022 03:11:18 +0200
Message-Id: <20220511011121.114226-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/3] Clear TLB caches in all tiles when
 object is removed
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Maybe I should not send patches this late at night as I end up
messing things up and spamming sleeping people. Sorry for this
version 4.

The real fix is in patch 2. The rest is a helper that adds
the with_intel_gt_pm_if_awake() (from Chris) and one more check
on the status of the engine before accessing it for clearing the
TLB.

Andi

Changelog
=========
v3 -> v4
 - Fix e-mail mismatch in author and in SoB (Sorry!).

v2 -> v3 (v2: https://patchwork.freedesktop.org/series/103835/)
 - Add missing header file that was causing a compmile error.
 - Fix wrong patch formatting.

v1 -> v2 (v1: https://patchwork.freedesktop.org/series/103831/)
 - Add with_intel_gt_pm_if_awake() macro for gt specific wakeref.
 - Check if an engine is awake before invalidating its TLB.

Andi Shyti (2):
  drm/i915/gem: Flush TLBs for all the tiles when clearing an obj
  drm/i915/gt: Skip TLB invalidation if the engine is not awake

Chris Wilson (1):
  drm/i915/gt: Ignore TLB invalidations on idle engines

 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 12 +++++++++---
 drivers/gpu/drm/i915/gt/intel_gt.c        |  4 ++++
 drivers/gpu/drm/i915/gt/intel_gt_pm.h     |  4 ++++
 3 files changed, 17 insertions(+), 3 deletions(-)

-- 
2.36.1

