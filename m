Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B0277EC08
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 23:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D6510E3D2;
	Wed, 16 Aug 2023 21:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9014D10E10E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 21:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692222126; x=1723758126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QwYF583JFqg2ev66e4I5lO7h1wIR4JYJfP2kcRVWEW0=;
 b=UJOLWYI1WesVzgNxYN4o/6kKkDfSqR9gNY+8JmmuAoay7FGiv6stLVE/
 zQTnFmTDT4LwZnUEiNLdOFg0iY91shYp2ARudDgYJ+7wmxDt9XDdynq7Y
 cI3Ql6tvoJmhI5CWfec5jPU6YzP2ReCYi5uNhUGR029iK2qtbSi3Cxf1/
 jpaFTWu/hJbIzSmRjaoReyZ9dDLhJMKlD1ipmPxm+en96mLYDU7zUueYC
 nPIHphVWPOdz+v00AUxVNWz9DtMls0Llf1kQ+deLoVbHWNLtyyQrv8yZU
 R3EtXwXNPDkH5ot4rl+AeFBOPMK5KCrpWOP5Si1YYDzVMqLNVnlKBXkBl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436546484"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="436546484"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824378793"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824378793"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 14:42:02 -0700
Message-ID: <20230816214201.534095-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] Drop support for pre-production DG2
 hardware
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

v2:
 - Split removal of Wa_16011777198 out to a separate patch since it
   allows us to garbage collect a little bit of other code as well.
   Review is easier in a standalone patch.

Matt Roper (5):
  drm/i915/dg2: Recognize pre-production hardware
  drm/i915/dg2: Drop pre-production display workarounds
  drm/i915/dg2: Drop pre-production GT workarounds
  drm/i915: Tidy workaround definitions
  drm/i915/dg2: Drop Wa_16011777198

 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  34 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  21 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   6 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 301 +++---------------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  20 +-
 drivers/gpu/drm/i915/i915_driver.c            |   3 +
 drivers/gpu/drm/i915/i915_drv.h               |  23 --
 drivers/gpu/drm/i915/i915_perf.c              |  32 --
 drivers/gpu/drm/i915/i915_perf_types.h        |   6 -
 drivers/gpu/drm/i915/intel_clock_gating.c     |   8 -
 12 files changed, 66 insertions(+), 394 deletions(-)

-- 
2.41.0

