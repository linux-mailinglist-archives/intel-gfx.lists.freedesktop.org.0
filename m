Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8050A33CD50
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 06:29:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9646E201;
	Tue, 16 Mar 2021 05:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B556E201
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 05:29:27 +0000 (UTC)
IronPort-SDR: 5/gAIJPe50A8eD9iZVXxnPxKSRDV5mgsXuGvpuTJv1uk0pWxjDo4aFAijjnb5Bmg4Qy+HlF354
 LhK65dJQw25g==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="169119291"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="169119291"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 22:29:26 -0700
IronPort-SDR: 3GOWXAXCJy7nhuilDvhoDXk9K8tQHIPaIN4NvJZKllHtxMS3QiuyyXbywmA+De7t4o3mOwjNwD
 DAwUKo0es8gg==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="405423135"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 22:29:26 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Mar 2021 22:29:18 -0700
Message-Id: <cover.1615872114.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Drop legacy IOCTLs on new HW
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These three patches exist to clean up some of our IOCTL mess in i915.
We've got more clean-up we should do eventually, but these are some of the
easiest to drop and most egregious cases.

Test-with: 20210315225356.2865-1-ashutosh.dixit@intel.com

Ashutosh Dixit (1):
  drm/i915: Disable pread/pwrite ioctl's for future platforms (v3)

Jason Ekstrand (2):
  drm/i915/gem: Drop legacy execbuffer support (v2)
  drm/i915/gem: Drop relocation support on all new hardware (v5)

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 113 ++----------------
 drivers/gpu/drm/i915/gem/i915_gem_ioctls.h    |   2 -
 drivers/gpu/drm/i915/i915_drv.c               |   2 +-
 drivers/gpu/drm/i915/i915_gem.c               |  14 +++
 include/uapi/drm/i915_drm.h                   |   1 +
 5 files changed, 26 insertions(+), 106 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
