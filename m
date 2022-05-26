Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B025353BA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 21:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD2210E28C;
	Thu, 26 May 2022 19:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65DA89ABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 19:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653591676; x=1685127676;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LBcpkd0AxIyGAgZ50cJxhK6bSbNi3oVn723FcX0WMQY=;
 b=JyA18J8ueY5SdDh71g2m7Kn50FSdFzSlnuHOB4OLZ+rjB5q2+UpIvD4R
 1Ctf1fjEutIVj5TyL38tWQ6LD4NFoEahOY0xG2ZSQTv3CLKNhaLqW6wNw
 QGCo0n2+RWmM5DcrNrSRYDhBbUD981qWUErwNFpiv2ilNkaRvbbtPIkVh
 xa5awdXZZTE96frcmtqZmh1bAmQdg2HP16DKiIXjiLAJgQMpXIZ2vR5pF
 O6OTLLCawc/Ir6iLw7hb4MDjlZPMKderXwSzGsOXwfirUdiOBkzqUhXPf
 C4RyudHxoe+EuNwsKNDOKKje+2D/KIxRbyEQndV2baN7FYYjGdJhGsVLp A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="273978986"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="273978986"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:00:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="574034400"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 12:00:49 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 May 2022 12:00:42 -0700
Message-Id: <cover.1653591227.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915/gt: Expose per gt defaults in
 sysfs
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

Create a gt/gtN/.defaults directory (similar to
engine/<engine-name>/.defaults) to expose default parameter values for each
gt in sysfs. This allows userspace to restore default parameter values
after they may have changed.

Patch 1: Creates the gt/gtN/.defaults directory
Patch 2: Adds per-gt RPS defaults to gt/gtN/.defaults
Patch 3: Adds media_freq_factor to gt/gtN/.defaults

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Ashutosh Dixit (3):
  drm/i915/gt: Create gt/gtN/.defaults for per gt sysfs defaults
  drm/i915/gt: Expose per-gt RPS defaults in sysfs
  drm/i915/gt: Expose default value for media_freq_factor in per-gt
    sysfs

 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c    | 10 ++--
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h    |  6 ++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 64 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    | 11 ++++
 drivers/gpu/drm/i915/gt/intel_rps.c         |  3 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 19 ++++--
 6 files changed, 103 insertions(+), 10 deletions(-)

-- 
2.34.1

