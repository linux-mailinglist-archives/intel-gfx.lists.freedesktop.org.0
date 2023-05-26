Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E652F712BC1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 19:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7620E10E1DF;
	Fri, 26 May 2023 17:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9AE710E1DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 17:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685122167; x=1716658167;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=51NBcCKBfzU/lO0FoVrmOwMwIpM8ACZEId/PP51mbAc=;
 b=Ovcx46oaoC++TS25wj/bk4blxTy7gsHUYAMn4kksiEkTNneeeXIOJypd
 ffLANtdWmb/2O0kAPNT+q40VzTLJt4HU8Wg6e332Zgwdiq+7oDimOYtrU
 bY2bXak9KdtldWwwfm7FUnpsdzkj0Ost1jNSN31Y4tc/Dj9aje/XGaJvs
 7Xt5gQU3bMQdHdrnRPEiUiRP2BfOTfgdo4jcxInXXQ4x/v0KMQcCCK4rP
 hAfmRWHj2EODnMenxRYbY8oqo30pzy/c5BFSvvLZFJdw2V681pOGBYCAM
 fWP88ONsPaQCYHY/7s+muvGCHAhfBkX0WIlpUl+RK18ABl4FatqYNKn6W A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="382506259"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="382506259"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="655712732"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="655712732"
Received: from cyrillet-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:29:25 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@linux.intel.com>, Fei Yang <fei.yang@intel.com>
Date: Fri, 26 May 2023 19:29:12 +0200
Message-Id: <20230526172913.2016775-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v12 0/1] drm/i915: Allow user to set cache at BO
 creation
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

From: Fei Yang <fei.yang@intel.com>

[ Just resending this patch to in order to have the results from the igt's
written for this patch ]

This series introduce a new extension for GEM_CREATE,
1. end support for set caching ioctl [PATCH 1/2]
2. add set_pat extension for gem_create [PATCH 2/2]

v2: drop one patch that was merged separately
    commit 341ad0e8e254 ("drm/i915/mtl: Add PTE encode function")
v3: rebased on https://patchwork.freedesktop.org/series/117082/
v4: fix missing unlock introduced in v3, and
    solve a rebase conflict
v5: replace obj->cache_level with pat_set_by_user,
    fix i915_cache_level_str() for legacy platforms.
v6: rebased on https://patchwork.freedesktop.org/series/117480/
v7: rebased on https://patchwork.freedesktop.org/series/117528/
v8: dropped the two dependent patches that has been merged
    separately. Add IGT link and Tested-by (MESA).
v9: addressing comments (Andi)
v10: acked-by and tested-by MESA
v11: drop "end support for set caching ioctl" (merged)
     remove tools/include/uapi/drm/i915_drm.h
v12: drop Bspec reference in comment. add to commit message instead

Test-with: 20230526172221.1438998-2-fei.yang@intel.com

Fei Yang (1):
  drm/i915: Allow user to set cache at BO creation

 drivers/gpu/drm/i915/gem/i915_gem_create.c | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.c |  6 ++++
 include/uapi/drm/i915_drm.h                | 41 ++++++++++++++++++++++
 3 files changed, 83 insertions(+)

-- 
2.40.1

