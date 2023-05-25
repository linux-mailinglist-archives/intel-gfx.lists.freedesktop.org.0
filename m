Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA377110DB
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 18:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F12610E6C4;
	Thu, 25 May 2023 16:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC85310E6C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 16:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685031960; x=1716567960;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YhAdPBNfs26IeblisXh8swf/0J8pguHSDHWCCq+CzVE=;
 b=b3jhGmq4jM6d3giR4hSx6Yx3MmyHnF2tHs8EFLQD8XsygoyUrvNnn6FT
 Xrkwwae7upDXhLNeXbTTGIHGYEF/jJpySdnvUcFZY3nGkRUzsiAz2+rYc
 zuwk2ispfJccs71hSVlpuFXfvNhuXK4elZIEwCIv4LhrBbrf8ZJcedV6m
 of9bRHDg2Mfc62Yf1unRTKItfIX0VnAilR2C0vmPnz47kdNDt+lORSy7v
 x2rsvW7wMH0nSEPZSIs1pwOYow2xXXqvIdhOhTLz5HIhsrZPgJm2urE4j
 kFcguZNEgri7EKoB6Lx9bGyZUAeDFiUx2OVIoKN7kPu1QTBQu52GLJF6c w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="353963206"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="353963206"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 09:26:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="794718611"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="794718611"
Received: from mtpaasto-mobl4.ger.corp.intel.com (HELO intel.com)
 ([10.251.208.188])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 09:25:58 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu, 25 May 2023 18:25:39 +0200
Message-Id: <20230525162540.1853246-1-andi.shyti@linux.intel.com>
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

Test-with: 20230524155610.360748-2-fei.yang@intel.com

Fei Yang (1):
  drm/i915: Allow user to set cache at BO creation

 drivers/gpu/drm/i915/gem/i915_gem_create.c | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.c |  6 ++++
 include/uapi/drm/i915_drm.h                | 41 ++++++++++++++++++++++
 3 files changed, 83 insertions(+)

-- 
2.40.1

