Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 746525A93F1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 12:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EB9610E684;
	Thu,  1 Sep 2022 10:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36A610E67E;
 Thu,  1 Sep 2022 10:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662027057; x=1693563057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KLgd+VCYvK2bZHCPKh2C7gMlFLpJAYqRupaENs23QlE=;
 b=P13oyqw7nxKjvhPCuDJgiqF2RRymGG4RViocRwVTxng9+tfJzNu4cfGS
 vYk9z7wdh/hw2itNJs7uvH0BzWe1SUMIcxzbMUTe/ppsXSSuMfXsIs/+1
 z6KhQgr6es+LI377LgZVJHmjZOMaBqDiUA5kB3xOVXV2244IKvYjUzk7O
 pzUvCaYpIxZF2Wl1ENdJaAlukYLannIYWtcBHkdmp8khPXLieDEaYpzCQ
 afeO+3KEKviSY9zRFenHx0UkEZcBb8aPkVRAGLrNLBcwt655KglM0Lril
 Z1VSUR1LZtAJz65S70q9x//4+q1kOgND3OZPs1a2xCPhRgYbhpfdrE9M0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="359635649"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="359635649"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 03:10:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="673784230"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 01 Sep 2022 03:10:54 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 13:11:39 +0300
Message-Id: <20220901101143.32316-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Add DP MST DSC support to i915
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we have only DSC support for DP SST.

Stanislav Lisovskiy (4):
  drm: Add missing DP DSC extended capability definitions.
  drm/i915: Fix intel_dp_mst_compute_link_config
  drm/i915: Extract drm_dp_atomic_find_vcpi_slots cycle to separate
    function
  drm/i915: Add DSC support to MST path

 drivers/gpu/drm/i915/display/intel_dp.c     |  73 +++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  17 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 204 ++++++++++++++++++--
 include/drm/display/drm_dp.h                |  10 +-
 4 files changed, 246 insertions(+), 58 deletions(-)

-- 
2.37.3

