Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4012701272
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 01:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C715210E6D9;
	Fri, 12 May 2023 23:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394E510E52D;
 Fri, 12 May 2023 23:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683934056; x=1715470056;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t6BoG057oUB+c6Kkb8PxLq+AB9WLJFkZ6nOtLn91u1Q=;
 b=a1DdQ30m0MqGtaouBdXftyVpqsgVpCsfIVd2nYZ7her6xkXUcGeA9oHm
 4BFz8AVW0uYzO9yaXbiwnJXOsc7XApRmdpnrecfg2N9Zp1UFPysBDbCnW
 fqSbGOlLQJ+fjSms446hItemB/egxJRRgKQOFSn6fSYSfJ8Sor1TmFSMQ
 OC3gkA1hmmwAPaGkcCvKR1nYnor6AIl4F00HSHPeZXC7gTm4TSd93GX+a
 LeRDtKJtw+iLdjdcL6VlsIiBkViBYjQM2ivrfYBnD7OVWbJpZPGC4Jn9c
 9z7IfPD28obSNhuJLXYVj62QJnGHzehyEVh8Nz8aia6D3QKx4Wc5vhtH6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="437240174"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="437240174"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 16:27:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="812260011"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="812260011"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 16:27:33 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 16:28:23 -0700
Message-Id: <20230512232825.1253644-1-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 0/2] drm/i915: Allow user to set cache at BO
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

The first three patches in this series are taken from
https://patchwork.freedesktop.org/series/116868/
These patches are included here because the last patch
has dependency on the pat_index refactor.

This series is focusing on uAPI changes,
1. end support for set caching ioctl [PATCH 4/5]
2. add set_pat extension for gem_create [PATCH 5/5]

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

Fei Yang (2):
  drm/i915/mtl: end support for set caching ioctl
  drm/i915: Allow user to set cache at BO creation

 drivers/gpu/drm/i915/gem/i915_gem_create.c | 36 ++++++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_domain.c |  3 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.c |  6 ++++
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c  |  9 +++++-
 include/uapi/drm/i915_drm.h                | 36 ++++++++++++++++++++++
 tools/include/uapi/drm/i915_drm.h          | 36 ++++++++++++++++++++++
 6 files changed, 125 insertions(+), 1 deletion(-)

-- 
2.25.1

