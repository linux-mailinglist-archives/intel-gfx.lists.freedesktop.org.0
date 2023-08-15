Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D7C77D133
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3475610E25F;
	Tue, 15 Aug 2023 17:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02BD710E257
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692121020; x=1723657020;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+1sKy86H+xEWh1A9RV7nk54B426Gy+IdjUx8SEB82Pk=;
 b=Nj5pMgkTiEAI8jSnnJoRrF92FneWOblHnJ54+QvhOQ71Dh9/JclMfq0l
 j95xkW2mlrQ7ofnmCrLsUfwx3L8QhEd9ouuYqNGcs7ySJHqRHkJYLCsCw
 jXT4taRBz6Bqcqb4oLqjviEvEvRBBgAEaU3s0ZzCdNPFUwe7yMdhqGl6o
 n2c9/eOQpz2dHXkGeV/xsYgy/nuMe56dRYW2xGsOSfJW5YfSe0P1FGAmw
 MIJ+g45NZpIXH8oG8KCvpbfX6JhsAYa4+R1Bw6XpVFiBVTHP7Kz4H1Mgj
 p0MckHTdUv83KHUEXa7d7ruWKvJj/Mzm67MJOxcNt1nbpS1bY/cEayfGZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371252367"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="371252367"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710808186"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710808186"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 10:36:12 -0700
Message-ID: <20230815173611.142687-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Drop support for pre-production DG2 hardware
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We generally only keep support for pre-production steppings and
workarounds around in the driver until the next major platform is
implemented.  Now that MTL is in good shape in i915 (and subsequent
platforms like LNL are being implemented solely on the Xe driver) it's
time to drop the DG2 pre-production hardware support.

DG2 production hardware always has display stepping C0 or later.  On the
GT side, production hardware starts with C0 (for DG2-G10), B1 (for
DG2-G11), and A1 (for DG2-G12).  This means we can drop quite a few
pre-production workarounds, and simplify the handling of several others.


Matt Roper (4):
  drm/i915/dg2: Recognize pre-production hardware
  drm/i915/dg2: Drop pre-production display workarounds
  drm/i915/dg2: Drop pre-production GT workarounds
  drm/i915: Tidy workaround definitions

 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  34 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  21 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   6 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 301 +++---------------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  20 +-
 drivers/gpu/drm/i915/i915_driver.c            |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |  23 --
 drivers/gpu/drm/i915/i915_perf.c              |  20 --
 drivers/gpu/drm/i915/intel_clock_gating.c     |   8 -
 11 files changed, 66 insertions(+), 376 deletions(-)

-- 
2.41.0

