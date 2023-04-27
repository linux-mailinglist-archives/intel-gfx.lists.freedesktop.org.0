Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2D96F0748
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 16:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5AB10E33C;
	Thu, 27 Apr 2023 14:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D334410E368
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 14:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682605580; x=1714141580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NSdJubwgjS8HrulucKZlNw2FQZJMZhMxm0DmmBmIoBU=;
 b=OmWvEP+3c1oL0W8vfOaDICsub6hkWYuYMnggj+JQjWAxbL5FQ4BZrrg/
 yl2m6yvvsTPk75MgkDS/t+SHGXok7RKGD1xtmtEGSFaTr6t84cYE2iW/8
 JQXKl9zpSDGyZAzqdaQ8S8MnWDmrW2EmMfLQAWbh8JYf6Lkd7Ls2tqi1V
 WBPwwqHlCpFsSj0QPPqsoiTHiK4rgYP9jrKOg6OSapLnkMFcXSOQ/3xr8
 3bwfT09u9IM65NW22s87pwaXpDWHuE1WczlnDrHaelPRHe5IRT+pB9LtI
 SE6JgLVKomNgTlEuR9OsVyBYvwF0EONSLz3l1yeygk3G6zQbWlxH3y9Iu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375438512"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="375438512"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838403507"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="838403507"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.216.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:13 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 17:25:56 +0300
Message-Id: <20230427142604.1565580-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/8] mtl: add support for pmdeman
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pmdemand support patches for MTL

SAGV configuration support for MTL

v2: added one missing patch in the previous version

v3: chekcpatch warning fixes
    update index handling for the icl/tgl QGV point handling
    program pmdemand code simplified

v4: update to debufs and pipe values pmdemand regiters
    removed the macro usage in update_pmdemand_values

Mika Kahola (1):
  drm/i915/mtl: Add support for PM DEMAND

Vinod Govindapillai (7):
  drm/i915: fix the derating percentage for MTL
  drm/i915: update the QGV point frequency calculations
  drm/i915: store the peak bw per QGV point
  drm/i915: extract intel_bw_check_qgv_points()
  drm/i915: modify max_bw to return index to intel_bw_info
  drm/i915/mtl: find best QGV point and configure sagv
  drm/i915/display: provision to suppress drm_warn in
    intel_get_crtc_new_encoder

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 350 +++++++++-----
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  17 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
 .../gpu/drm/i915/display/intel_display_core.h |   8 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 455 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |  21 +-
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 16 files changed, 819 insertions(+), 133 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

